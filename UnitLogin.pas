unit UnitLogin;

interface

uses
  System.SysUtils,
  System.Classes,

  JSDelphiSystem,
  JS,
  Web,

  XData.Web.Client,
  XData.Web.Connection,

  WEBLib.Graphics,
  WEBLib.Controls,
  WEBLib.Forms,
  WEBLib.Dialogs,
  WEBLib.StdCtrls,
  WEBLib.WebCtrls,
  WEBLib.WebTools,
  WEBLib.JSON,

  Unit1,

  Vcl.StdCtrls,
  Vcl.Controls, WEBLib.ExtCtrls;

type
  TLoginForm = class(TWebForm)
    divLoginMain: TWebHTMLDiv;
    divLoginTitle: TWebHTMLDiv;
    tmrOpen: TWebTimer;
    divLoginElements: TWebHTMLDiv;
    divLoginEMailHolder: TWebHTMLDiv;
    divLoginUsernameLabel: TWebHTMLDiv;
    edtLoginEMail: TWebEdit;
    divLoginPasswordHolder: TWebHTMLDiv;
    divLoginPasswordLabel: TWebHTMLDiv;
    edtLoginPassword: TWebEdit;
    labelLoginProgress: TWebLabel;
    divLoginButtons: TWebHTMLDiv;
    btnLogin: TWebButton;
    btnForgot: TWebButton;
    btnRegister: TWebButton;
    [async] procedure btnLoginClick(Sender: TObject);
    procedure edtLoginEMailKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure WebFormShow(Sender: TObject);
    [async] procedure tmrOpenTimer(Sender: TObject);
    procedure WebFormCreate(Sender: TObject);
    procedure WebFormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    AppVer: String;
    AppRel: String;
    AppRelH: String;
    Form1: TForm1;
  end;

var
  LoginForm: TLoginForm;

implementation

{$R *.dfm}


procedure TLoginForm.btnLoginClick(Sender: TObject);
var
  Response: TXDataClientResponse;
  ClientConn:   TXDataWebClient;
  Data: JSValue;
  Blob: JSValue;
  JWTClaims: TJSONObject;
begin

  // Development server or Production server?
  if GetQueryParam('Development') <> '' then
  begin
    Form1.ServerName := 'http ://localhost:10101/500surveys';
    Form1.LogActivity('Development Mode Specified');
  end
  else
  begin
    Form1.ServerName := 'https://carnival.500foods.com:10101/500surveys';
  end;
  Form1.LogActivity('Connecting to '+Form1.ServerName);
  labelLoginProgress.Caption := Form1.ServerName;


  // Try and establish a connection to the server
  if not(Form1.ServerConn.Connected) then
  begin
    Form1.ServerConn.URL := Form1.ServerName;
    try
      await(Form1.ServerConn.OpenAsync);
      Form1.LogActivity('Connected to '+Form1.ServerName);
      labelLoginProgress.Caption := Form1.ServerName;

    except on E: Exception do
      begin
        Form1.LogActivity('Connnection Error: ['+E.ClassName+'] '+E.Message);
        console.log('Connnection Error: ['+E.ClassName+'] '+E.Message);
        labelLoginProgress.Caption := 'Connection Failed - Please Try Again';
      end;
    end;
  end;


  // We've got a connection, let's make the request
  Form1.LogActivity('');
  Form1.LogActivity('Authenticating.');
  labelLoginProgress.Caption := 'Authenticating';
  if (Form1.ServerConn.Connected) then
  begin
    try
      ClientConn := TXDataWebClient.Create(nil);
      ClientConn.Connection := Form1.ServerConn;
      Form1.JWT := '';
      Response := await(ClientConn.RawInvokeAsync('ISurveyAdminService.Login', [
        edtLoginEmail.Text,
        edtLoginPassword.Text,
        'SA/'+Form1.AppVer,
        Form1.AppRel
      ]));
      Blob := Response.Result;
      Data := Blob;
      asm
        Data = Blob.value;
      end;
    except on E: Exception do
      begin
        Form1.LogActivity('Authentication Error: ['+E.ClassName+'] '+E.Message);
        console.log('Authentication Error: ['+E.ClassName+'] '+E.Message);
        labelLoginProgress.Caption := 'Authentication Error - Please Try Again';
      end;
    end;
  end;


  // Do we have any data?
  if (Length(String(Data)) > 0) then
  begin
    // Yes we do!
    if Copy(String(Data),1,7) = 'Bearer ' then
    begin
      Form1.JWT := String(Data);
      Form1.LogActivity('Authentication Successful.');
      Form1.LogActivity('');
      labelLoginProgress.Caption := 'Login Successful';

      // Get various claims values from the JWT
      JWTClaims := TJSONObject.ParseJSONValue(Window.atob(Copy(Form1.JWT, Pos('.',Form1.JWT)+1, LastDelimiter('.',Form1.JWT)-Pos('.',Form1.JWT)-1))) as TJSONObject;
      Form1.Account_ID := (JWTClaims.Get('account').JSONValue as TJSONString).Value;
      Form1.Account_EMail := (JWTClaims.Get('email').JSONValue as TJSONString).Value;
      Form1.Account_First := (JWTClaims.Get('first').JSONValue as TJSONString).Value;
      Form1.Account_Last := (JWTClaims.Get('last').JSONValue as TJSONString).Value;
      Form1.Account_Security := (JWTClaims.Get('security').JSONValue as TJSONString).Value;
      JWTClaims.Free;

      // Five elements in security field
      // 1st - Access to Surveys tab
      // 2rd - Accdss to Responses tab
      // 3nd - Access to Questions tab
      // 4th - Access to Administration tab
      // 5th - Access to Logging Tab

      // Hide buttons that aren't available
      if Copy(Form1.Account_Security,1,1) = 'N' then Form1.btnSurveys.ElementHandle.remove;
      if Copy(Form1.Account_Security,2,1) = 'N' then Form1.btnResponses.ElementHandle.remove;
      if Copy(Form1.Account_Security,3,1) = 'N' then Form1.btnQuestions.ElementHandle.remove;
      if Copy(Form1.Account_Security,4,1) = 'N' then Form1.btnAccounts.ElementHandle.remove;
      if Copy(Form1.Account_Security,5,1) = 'N' then Form1.btnLogging.ElementHandle.remove;

      //Let's just hide this for now
      Form1.btnQuestions.ElementHandle.remove;

      // Set the interface to whatever the first available function is
      if      Copy(Form1.Account_Security,1,1) <> 'N' then Form1.btnMainMenuClick(Form1.btnSurveys)
      else if Copy(Form1.Account_Security,2,1) <> 'N' then Form1.btnMainMenuClick(Form1.btnResponses)
      else if Copy(Form1.Account_Security,3,1) <> 'N' then Form1.btnMainMenuClick(Form1.btnQuestions)
      else if Copy(Form1.Account_Security,4,1) <> 'N' then Form1.btnMainMenuClick(Form1.btnAccounts)
      else if Copy(Form1.Account_Security,5,1) <> 'N' then Form1.btnMainMenuClick(Form1.btnLogging);

      // Preload data for available functions
      if Copy(Form1.Account_Security,1,1) <> 'N' then Form1.btnSurveyReloadClick(Sender);
//      if Copy(Form1.Account_Security,4,1) <> 'N' then Form1.btnAccountsReloadClick(Sender);
//      if Copy(Form1.Account_Security,4,1) <> 'N' then Form1.btnIssuesReloadClick(Sender);
//      if Copy(Form1.Account_Security,5,1) <> 'N' then Form1.btnLoggingReloadClick(Sender);

      // Personalize Account button
      Form1.btnAccount.Caption := '<div class="mx-2"><i class="fa-solid fa-user me-2 fa-xl"></i>'+Form1.Account_First+'</div>';
      Form1.btnAccount.Hint := 'Change Account Settings for '+Form1.Account_First+' '+Form1.Account_Last;

      // Close Login Form and continue in main application
//      ModalResult := mrOk;
      Form1.divBlocker.ElementClassName := 'Run';
      divLoginMain.ElementHandle.classList.replace('Open','Close');

      asm
        setTimeout(function() {
          divBlocker.style.display = 'none';
          divLoginMain.style.display = 'none';
        },1000);
      end;
    end
    else
    begin
      Form1.LogActivity('Incorrect E-Mail / Password. Please Try Again.');
      labelLoginProgress.Caption := 'Incorrect E-Mail or Password - Please Try Again';
      edtLoginPassword.SetFocus;
      edtLoginPassword.SelectAll;
    end;
  end;

end;

procedure TLoginForm.edtLoginEMailKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if Trim(edtLoginEMail.Text) = '' then
    begin
      edtLoginEmail.SetFocus;
    end
    else if Trim(edtLoginPassword.Text) = '' then
    begin
      edtLoginPassword.SetFocus;
    end
    else
    begin
      btnLoginClick(Sender);
    end;
  end
  else
  begin
    if labelLoginProgress.Caption <> 'Please Login'
    then labelLoginProgress.Caption := 'Please Login';
  end;

end;

procedure TLoginForm.tmrOpenTimer(Sender: TObject);
//  procedure AfterCreate(AForm: TObject);
//  begin
//    console.log('Form Created: '+FormatDateTime('hh:nn:ss.zzz',Now));
//    asm pas.Unit1.Form1 = pas.UnitLogin.LoginForm.Form1; end;
//  end;
begin
//  console.log('Timer Start: '+FormatDateTime('hh:nn:ss.zzz',Now));
  // This is kicked off at initialization
  tmrOpen.Enabled := False;

  // Load the form.  Ideally in the background
// console.log('Create Start: '+FormatDateTime('hh:nn:ss.zzz',Now));
  Form1 := TForm1.Create(Self);
  asm pas.Unit1.Form1 = pas.UnitLogin.LoginForm.Form1; end;
//  console.log('Load Start: '+FormatDateTime('hh:nn:ss.zzz',Now));
  await(TForm1, Form1.Load);
//  Form1 := TForm1.CreateNew(@AfterCreate);
//  console.log('Load Finish: '+FormatDateTime('hh:nn:ss.zzz',Now));

  // Ready to accept infput
  document.body.classList.add('Ready');
  LabelLoginProgress.Caption := 'Please Login';
  edtLoginEMail.SetFocus;

//  console.log('Timer End: '+FormatDateTime('hh:nn:ss.zzz',Now));

end;

procedure TLoginForm.WebFormCreate(Sender: TObject);
begin
//  console.log('Login WFC Start: '+FormatDateTime('hh:nn:ss.zzz',Now));

  // Output Version Information
  asm
    this.AppVer = ProjectName.replaceAll('_','.').substr(ProjectName.indexOf('_')+1);
    this.AppRel = luxon.DateTime.fromJSDate(new Date(document.lastModified)).toISO();
    this.AppRelH = luxon.DateTime.fromJSDate(new Date(document.lastModified)).toFormat('yyyy-MMM-dd');
  end;

  // Set Page Title
  Caption := 'Survey Admin Client '+AppVer;

  // Set Login "window" title"
  divLoginTitle.HTML.Text := '<div style="width:100%; text-align:center;">Survey Admin Client<span style="margin-left:25px;;font-size: 14px; opacity:0.5;">Ver. '+AppVer+' &nbsp;&nbsp; Rel. '+AppRelH+'</span></div>';

  // Indicate that we have to wait
  LabelLoginProgress.Caption := 'Initializing... Please Wait';

  tmrOpen.Enabled := True;
//  console.log('Login WFC End: '+FormatDateTime('hh:nn:ss.zzz',Now));
end;

procedure TLoginForm.WebFormResize(Sender: TObject);
begin

  asm
    if (pas.UnitLogin.LoginForm.Form1 !== null ) {
      setTimeout(() => { window.dispatchEvent(new Event('resize')); pas.Unit1.Form1.ResizeQRCode(); }, 0);
    }
  end;

  if divLoginMain.ElementHandle.style.getPropertyvalue('display') <> 'none' then
  begin
    divLoginMain.Top := ((Height - divLoginMain.Height) div 2);
    divLoginMain.Left := ((Width - divLoginMain.Width) div 2);
  end;

end;

procedure TLoginForm.WebFormShow(Sender: TObject);
begin

  asm
    if (pas.UnitLogin.LoginForm.Form1 !== null ) {
      setTimeout(() => { window.dispatchEvent(new Event('resize')); pas.Unit1.Form1.ResizeQRCode(); }, 0);
    }
  end;

  if divLoginMain.ElementHandle.style.getPropertyvalue('display') <> 'none' then
  begin

    divLoginMain.Top := ((Height - divLoginMain.Height) div 2);
    divLoginMain.Left := ((Width - divLoginMain.Width) div 2);

    asm
      edtLoginEMail.addEventListener("keyup", function(event) {
        if (event.getModifierState("CapsLock")) {
          edtLoginEMail.classList.add("bg-warning");
        }
        else {
          edtLoginEMail.classList.remove("bg-warning");
        }
      });
      edtLoginEMail.addEventListener("focusout", function(event) {
        edtLoginEMail.classList.remove("bg-warning");
      });

      edtLoginPassword.addEventListener("keyup", function(event) {
      if (event.getModifierState("CapsLock")) {
          edtLoginPassword.classList.add("bg-warning");
        }
        else {
          edtLoginPassword.classList.remove("bg-warning");
        }
      });
      edtLoginPassword.addEventListener("focusout", function(event) {
        edtLoginPassword.classList.remove("bg-warning");
      });

      setTimeout(function(){ edtLoginEMail.focus(); }, 2000);

    end;
  end;
end;

end.

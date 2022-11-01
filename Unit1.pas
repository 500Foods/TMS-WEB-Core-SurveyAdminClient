unit Unit1;

interface

uses
  System.SysUtils,
  System.Classes,
  System.Types,
  System.Math,
  System.DateUtils,

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
  WEBLib.ExtCtrls,
  WEBLib.ComCtrls,
  WEBLib.WebCtrls,
  WEBLib.WebTools,
  WEBLib.JSON,

  Vcl.Controls,
  Vcl.StdCtrls, VCL.TMSFNCCustomControl, VCL.TMSFNCWebBrowser,
  VCL.TMSFNCCustomWEBControl, VCL.TMSFNCWXQRCode, WEBLib.DropDown;


type
  TForm1 = class(TWebForm)
    divTop: TWebHTMLDiv;
    divBottom: TWebHTMLDiv;
    pagecontrolMain: TWebPageControl;
    pageSurveys: TWebTabSheet;
    pageResponses: TWebTabSheet;
    pageQuestions: TWebTabSheet;
    panelTopLeft: TWebPanel;
    btnSurveys: TWebButton;
    btnResponses: TWebButton;
    btnQuestions: TWebButton;
    btnAccounts: TWebButton;
    panelTopRight: TWebPanel;
    btnAccount: TWebButton;
    btnLogout: TWebButton;
    pageAccounts: TWebTabSheet;
    panelBottomRight: TWebPanel;
    btnBlog: TWebButton;
    btnGitHub: TWebButton;
    panelBottomLeft: TWebPanel;
    btnEmail: TWebButton;
    btnDiscord: TWebButton;
    tmrLaunch: TWebTimer;
    divSurveysSurveyHolder: TWebHTMLDiv;
    splitterSurveyMain: TWebSplitter;
    divSurveysMain: TWebHTMLDiv;
    pageControlSurveys: TWebPageControl;
    pageConfig: TWebTabSheet;
    pageQuestion: TWebTabSheet;
    pagePreview: TWebTabSheet;
    divSurveysOptions: TWebHTMLDiv;
    splitterSurveyConfig: TWebSplitter;
    pagecontrolSurveysConfig: TWebPageControl;
    pageConfigBasic: TWebTabSheet;
    pageBanner: TWebTabSheet;
    pageChangeHistory: TWebTabSheet;
    divSurveysButtons: TWebHTMLDiv;
    divSurveysSurveyList: TWebHTMLDiv;
    btnSurveyNew: TWebButton;
    btnSurveyDelete: TWebButton;
    btnSurveyClone: TWebButton;
    divSurveyMenu: TWebHTMLDiv;
    divSurveyMenuLeft: TWebPanel;
    btnSurveyOptions: TWebButton;
    btnSurveyQuestions: TWebButton;
    btnSurveyPreview: TWebButton;
    divSurveyMenuRight: TWebPanel;
    btnSurveyCancel: TWebButton;
    [async] btnSurveySave: TWebButton;
    scrollConfigBasic: TWebScrollBox;
    divConfigBasicName: TWebHTMLDiv;
    divConfigBasicNameLabel: TWebHTMLDiv;
    divConfigBasicID: TWebHTMLDiv;
    divConfigBasicIDLabel: TWebHTMLDiv;
    divConfigBasicLink: TWebHTMLDiv;
    divConfigBasicLinkLabel: TWebHTMLDiv;
    edtConfigBasicName: TWebEdit;
    scrollConfigBanner: TWebScrollBox;
    divConfigBannerTitle: TWebHTMLDiv;
    divConfigBannerTitleLabel: TWebHTMLDiv;
    edtConfigBannerTitle: TWebEdit;
    divConfigBannerFooter: TWebHTMLDiv;
    divConfigBannerFooterLabel: TWebHTMLDiv;
    edtConfigBannerFooter: TWebEdit;
    edtConfigBasicID: TWebEdit;
    edtConfigBasicLink: TWebEdit;
    ServerConn: TXDataWebConnection;
    btnSurveyReload: TWebButton;
    divBlocker: TWebHTMLDiv;
    btnLogging: TWebButton;
    pageLogging: TWebTabSheet;
    divConfigBasicGroup: TWebHTMLDiv;
    divConfigBasicGroupLabel: TWebHTMLDiv;
    edtConfigBasicGroup: TWebEdit;
    btnSurveyPermissions: TWebButton;
    divLoggingHolder: TWebHTMLDiv;
    divLoggingButtons: TWebHTMLDiv;
    btnLoggingToday: TWebButton;
    btnLogging7Days: TWebButton;
    btnLoggingAllData: TWebButton;
    divLogging: TWebHTMLDiv;
    btnTicket: TWebButton;
    pagePermissions: TWebTabSheet;
    btnLoggingReload: TWebButton;
    divChangeHistoryHolder: TWebHTMLDiv;
    divChangeHistoryButtons: TWebHTMLDiv;
    btnChangeHistoryReload: TWebButton;
    divChangeHistory: TWebHTMLDiv;
    pageAvailability: TWebTabSheet;
    pageBannerPre: TWebTabSheet;
    pageBannerPause: TWebTabSheet;
    pageBannerPost: TWebTabSheet;
    pageAbout: TWebTabSheet;
    pageFeedback: TWebTabSheet;
    pageNotes: TWebTabSheet;
    divAvailabilityHolder: TWebHTMLDiv;
    divAvailabilityButtons: TWebHTMLDiv;
    btnAvailabilityAdd: TWebButton;
    divAvailability: TWebHTMLDiv;
    labelAvailabilityCountdown: TWebLabel;
    labelAvailabilityStatus: TWebLabel;
    btnAvailabilityDelete: TWebButton;
    divSurveyInfoHolder: TWebHTMLDiv;
    divSurveyInfoButtons: TWebHTMLDiv;
    btnSurveyInfoReload: TWebButton;
    divSurveyInfo: TWebHTMLDiv;
    divConfigBannerContentHolder: TWebHTMLDiv;
    divConfigBannerContentHeader: TWebHTMLDiv;
    divConfigBannerContentFooter: TWebHTMLDiv;
    divConfigBannerContent: TWebHTMLDiv;
    divNotesHolder: TWebHTMLDiv;
    divNotesButtons: TWebHTMLDiv;
    btnNotesAdd: TWebButton;
    btnNotesDelete: TWebButton;
    divNotes: TWebHTMLDiv;
    scrollConfigBannerPause: TWebScrollBox;
    divConfigBannerPauseTitle: TWebHTMLDiv;
    divConfigBannerPauseTitleLabel: TWebHTMLDiv;
    edtConfigBannerPauseTitle: TWebEdit;
    divConfigBannerPauseFooter: TWebHTMLDiv;
    divConfigBannerPauseFooterLabel: TWebHTMLDiv;
    edtConfigBannerPauseFooter: TWebEdit;
    divConfigBannerPauseContentHolder: TWebHTMLDiv;
    divConfigBannerPauseContentHeader: TWebHTMLDiv;
    divConfigBannerPauseContentFooter: TWebHTMLDiv;
    divConfigBannerPauseContent: TWebHTMLDiv;
    scrollConfigBannerPre: TWebScrollBox;
    divConfigBannerPreTitle: TWebHTMLDiv;
    divConfigBannerPreTitleLabel: TWebHTMLDiv;
    edtConfigBannerPreTitle: TWebEdit;
    divConfigBannerPreFooter: TWebHTMLDiv;
    divConfigBannerPreFooterLabel: TWebHTMLDiv;
    edtConfigBannerPreFooter: TWebEdit;
    divConfigBannerPreContentHolder: TWebHTMLDiv;
    divConfigBannerPreContentHeader: TWebHTMLDiv;
    divConfigBannerPreContentFooter: TWebHTMLDiv;
    divConfigBannerPreContent: TWebHTMLDiv;
    scrollConfigBannerPost: TWebScrollBox;
    divConfigBannerPostTitle: TWebHTMLDiv;
    divConfigBannerPostTitleLabel: TWebHTMLDiv;
    edtConfigBannerPostTitle: TWebEdit;
    divConfigBannerPostFooter: TWebHTMLDiv;
    divConfigBannerPostFooterLabel: TWebHTMLDiv;
    edtConfigBannerPostFooter: TWebEdit;
    divConfigBannerPostContentHolder: TWebHTMLDiv;
    divConfigBannerPostContentHeader: TWebHTMLDiv;
    divConfigBannerPostContentFooter: TWebHTMLDiv;
    divConfigBannerPostContent: TWebHTMLDiv;
    scrollConfigFeedback: TWebScrollBox;
    divConfigFeedbackTitle: TWebHTMLDiv;
    divConfigFeedbackTitleLabel: TWebHTMLDiv;
    edtConfigFeedbackTitle: TWebEdit;
    divConfigFeedbackContentHolder: TWebHTMLDiv;
    divConfigFeedbackContentHeader: TWebHTMLDiv;
    divConfigFeedbackContentFooter: TWebHTMLDiv;
    divConfigFeedbackContent: TWebHTMLDiv;
    scrollConfigAbout: TWebScrollBox;
    divConfigAboutTitle: TWebHTMLDiv;
    divConfigAboutTitleLabel: TWebHTMLDiv;
    edtConfigAboutTitle: TWebEdit;
    divConfigAboutContentHolder: TWebHTMLDiv;
    divConfigAboutContentHeader: TWebHTMLDiv;
    divConfigAboutContentFooter: TWebHTMLDiv;
    divConfigAboutContent: TWebHTMLDiv;
    divConfigBasicLiveLinkHolder: TWebHTMLDiv;
    divConfigBasicLiveLinkLabel: TWebHTMLDiv;
    divConfigBasicTestLinkHolder: TWebHTMLDiv;
    divConfigBasicTestLinkLabel: TWebHTMLDiv;
    divConfigBasicTestLink: TWebHTMLDiv;
    divConfigBasicLiveLink: TWebHTMLDiv;
    pageQRCode: TWebTabSheet;
    divQRCodeHolder: TWebHTMLDiv;
    divQRCodeConstraints: TWebHTMLDiv;
    qrcode: TTMSFNCWXQRCode;
    btnNotesReload: TWebButton;
    btnLoggingPrint: TWebButton;
    btnAvailabilityPrint: TWebButton;
    btnChangeHistoryPrint: TWebButton;
    btnNotesPrint: TWebButton;
    divAccountsHolder: TWebHTMLDiv;
    divAccountsButtons: TWebHTMLDiv;
    btnAccountsReload: TWebButton;
    btnAccountsPrint: TWebButton;
    divAccounts: TWebHTMLDiv;
    divIssuesHolder: TWebHTMLDiv;
    divIssuesButtons: TWebHTMLDiv;
    btnIssuesReload: TWebButton;
    btnIssuesPrint: TWebButton;
    divIssues: TWebHTMLDiv;
    splitterAccounts: TWebSplitter;
    btnAddUser: TWebButton;
    btnDeleteUser: TWebButton;
    btnSetPassword: TWebButton;
    edtSetPassword: TWebEdit;
    btnIssueStatusNew: TWebButton;
    btnIssueStatusInProgress: TWebButton;
    btnIssueStatusClosed: TWebButton;
    divPermissionsHolder: TWebHTMLDiv;
    WebHTMLDiv2: TWebHTMLDiv;
    btnPermissionsReload: TWebButton;
    btnPermissionsPrint: TWebButton;
    divPermissions: TWebHTMLDiv;
    divPreviewHolder: TWebHTMLDiv;
    WebHTMLDiv3: TWebHTMLDiv;
    btnPreviewReload: TWebButton;
    scrollPreview: TWebScrollBox;
    divPreview: TWebHTMLDiv;
    WebPanel1: TWebPanel;
    btnPreviewSize0: TWebButton;
    btnPreviewSize2: TWebButton;
    btnPreviewSize3: TWebButton;
    btnPreviewSize4: TWebButton;
    btnPreviewSize1: TWebButton;
    btnViewActivityLog: TWebButton;
    divResponsesHolder: TWebHTMLDiv;
    divResponsesButtons: TWebHTMLDiv;
    btnResponsesReload: TWebButton;
    btnResponsesPrint: TWebButton;
    divResponses: TWebHTMLDiv;
    divFeedbackHolder: TWebHTMLDiv;
    divFeedbackButtons: TWebHTMLDiv;
    btnFeedbackReload: TWebButton;
    btnFeedbackPrint: TWebButton;
    btnFeedbackStatusNew: TWebButton;
    btnFeedbackStatusInProgress: TWebButton;
    btnFeedbackStatusClosed: TWebButton;
    btnFeedbackActivityLog: TWebButton;
    divFeedback: TWebHTMLDiv;
    splitterResponses: TWebSplitter;
    WebPanel2: TWebPanel;
    btnPreviewActive: TWebButton;
    btnPreviewPause: TWebButton;
    btnPreviewPost: TWebButton;
    btnPreviewPre: TWebButton;
    btnPreviewAuto: TWebButton;
    btnAvailabilityReload: TWebButton;
    tmrCountdown: TWebTimer;
    divQuestionsHolder: TWebHTMLDiv;
    splitterQuestions: TWebSplitter;
    divQuestion: TWebHTMLDiv;
    divQuestionTypeHolder: TWebHTMLDiv;
    divQuestionType: TWebHTMLDiv;
    divQuestionNameHolder: TWebHTMLDiv;
    divQuestionName: TWebHTMLDiv;
    edtQuestionName: TWebEdit;
    divQuestionIDHolder: TWebHTMLDiv;
    divQuestionID: TWebHTMLDiv;
    edtQuestionID: TWebEdit;
    divQuestionContentHolder: TWebHTMLDiv;
    divQuestionContentHeader: TWebHTMLDiv;
    divQuestionContentFooter: TWebHTMLDiv;
    divQuestionContent: TWebHTMLDiv;
    divLibrary: TWebHTMLDiv;
    divLibraryTypeHolder: TWebHTMLDiv;
    divLibraryType: TWebHTMLDiv;
    edtLibraryType: TWebEdit;
    divLibraryNameHolder: TWebHTMLDiv;
    divLibraryName: TWebHTMLDiv;
    edtLibraryName: TWebEdit;
    divLibraryIDHolder: TWebHTMLDiv;
    divLibraryID: TWebHTMLDiv;
    edtLibraryID: TWebEdit;
    divLibraryContentHolder: TWebHTMLDiv;
    divLibraryContentHeader: TWebHTMLDiv;
    divLibraryContentFooter: TWebHTMLDiv;
    divLibraryContent: TWebHTMLDiv;
    splitterLibrary: TWebSplitter;
    divQuestionsButtons: TWebHTMLDiv;
    btnQuestionsNew: TWebButton;
    btnQuestionsDelete: TWebButton;
    btnQuestionsClone: TWebButton;
    btnQuestionsReload: TWebButton;
    divQuestions: TWebHTMLDiv;
    divLibraryListHolder: TWebHTMLDiv;
    divLibraryButtons: TWebHTMLDiv;
    btnLibraryListNew: TWebButton;
    btnLibraryListDelete: TWebButton;
    btnLibraryListClone: TWebButton;
    btnLibraryListReload: TWebButton;
    divLibraryList: TWebHTMLDiv;
    panelQuestionTypes: TWebPanel;
    ddQuestionType: TWebDropDownControl;
    divQuestionOptionsHolder: TWebHTMLDiv;
    divQuestionOptions: TWebHTMLDiv;
    edtQuestionOptions: TWebEdit;
    divQuestionOptionsInfo: TWebHTMLDiv;
    divQuestionTitleHolder: TWebHTMLDiv;
    divQuestionTitle: TWebHTMLDiv;
    edtQuestionTitle: TWebEdit;
    divQuestionFooterHolder: TWebHTMLDiv;
    divQuestionFooter: TWebHTMLDiv;
    edtQuestionFooter: TWebEdit;
    procedure btnMainMenuClick(Sender: TObject);
    procedure btnSurveyMenuClick(Sender: TObject);
    procedure btnPreviewSizeClick(Sender: TObject);
    procedure btnPreviewTimeClick(Sender: TObject);
    procedure WebFormCreate(Sender: TObject);
    procedure WebFormShow(Sender: TObject);
    procedure tmrLaunchTimer(Sender: TObject);
    procedure splitterSurveyMainMove(Sender: TObject);
    [async] procedure btnLogoutClick(Sender: TObject);
    procedure ServerConnRequest(Args: TXDataWebConnectionRequest);
    [async] procedure btnAccountClick(Sender: TObject);
    [async] procedure Login;
    [async] procedure btnSurveyReloadClick(Sender: TObject);
    [async] procedure UpdateTable(Endpoint: String; Params: Array of JSValue; Table: JSValue; Progress: TWebButton);
    [async] function GetQueryData(Endpoint: String; Params: Array of JSValue; Progress: TWebButton): String;
    [async] procedure btnSurveyNewClick(Sender: TObject);
    [async] procedure btnSurveyDeleteClick(Sender: TObject);
    [async] procedure btnSurveyCloneClick(Sender: TObject);
    [async] procedure SurveySelect (SurveyID: String);
    [async] procedure QuestionSelect (QuestionID: String);
    procedure SurveyChanged(Sender: TObject);
    procedure QuestionChanged(Sender: TObject);
    procedure btnLoggingTodayClick(Sender: TObject);
    procedure btnLogging7DaysClick(Sender: TObject);
    procedure btnLoggingAllDataClick(Sender: TObject);
    [async] procedure btnSurveySaveClick(Sender: TObject);
    procedure btnSurveyCancelClick(Sender: TObject);
    [async] function GetSurveyByID(SurveyID: String; SurveyName: String; SurveyGroup: String):String;
    procedure btnLoggingReloadClick(Sender: TObject);
    [async] procedure btnChangeHistoryReloadClick(Sender: TObject);
    procedure WebFormResize(Sender: TObject);
    procedure btnAvailabilityDeleteClick(Sender: TObject);
    procedure btnAvailabilityAddClick(Sender: TObject);
    procedure btnSurveyInfoReloadClick(Sender: TObject);
    procedure splitterSurveyConfigMove(Sender: TObject);
    procedure edtConfigBasicLinkChange(Sender: TObject);
    procedure edtConfigBasicLiveLinkClick(Sender: TObject);
    procedure ResizeQRCode;
    [async] procedure btnNotesReloadClick(Sender: TObject);
    [async] procedure btnNotesAddClick(Sender: TObject);
    [async] procedure btnNotesDeleteClick(Sender: TObject);
    procedure btnLoggingPrintClick(Sender: TObject);
    procedure btnAvailabilityPrintClick(Sender: TObject);
    procedure btnChangeHistoryPrintClick(Sender: TObject);
    procedure btnNotesPrintClick(Sender: TObject);
    procedure btnDiscordClick(Sender: TObject);
    procedure btnEmailClick(Sender: TObject);
    [async] procedure btnTicketClick(Sender: TObject);
    [async] procedure btnAccountsReloadClick(Sender: TObject);
    procedure btnGitHubClick(Sender: TObject);
    [async] procedure AccountChanged(AccountID: String);
    procedure btnIssuesPrintClick(Sender: TObject);
    [async] procedure btnIssuesReloadClick(Sender: TObject);
    procedure btnAccountsPrintClick(Sender: TObject);
    [async] procedure btnAddUserClick(Sender: TObject);
    [async] procedure btnDeleteUserClick(Sender: TObject);
    [async] procedure btnSetPasswordClick(Sender: TObject);
    [async] procedure btnIssueStatusNewClick(Sender: TObject);
    procedure btnPermissionsPrintClick(Sender: TObject);
    procedure btnPermissionsReloadClick(Sender: TObject);
    [async] procedure TogglePermissions(AccountID: String; FirstName: String; LastName: String; Access: Integer);
    procedure btnPreviewReloadClick(Sender: TObject);
    [async] procedure btnViewActivityLogClick(Sender: TObject);
    procedure btnBlogClick(Sender: TObject);
    [async] procedure btnFeedbackReloadClick(Sender: TObject);
    [async] procedure btnFeedbackActivityLogClick(Sender: TObject);
    procedure btnAvailabilityReloadClick(Sender: TObject);
    procedure tmrCountdownTimer(Sender: TObject);
    procedure splitterLibraryMove(Sender: TObject);
    procedure splitterQuestionsMove(Sender: TObject);
    procedure splitterAccountsMove(Sender: TObject);
    procedure splitterResponsesMove(Sender: TObject);
    [async] procedure btnQuestionsReloadClick(Sender: TObject);
    procedure NewQuestionTypeSelected(QuestionID: String; typeid: integer; icon: string; hint: string; desc: string; info: string; update: boolean);
    procedure ddQuestionTypeDropDown(Sender: TObject);
    procedure btnQuestionsNewClick(Sender: TObject);
    procedure btnQuestionsDeleteClick(Sender: TObject);
    [async] procedure btnResponsesReloadClick(Sender: TObject);
    procedure btnResponsesPrintClick(Sender: TObject);
    procedure btnQuestionsCloneClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    AppVer: String;
    AppRel: String;
    ActivityLog: TStringList;
    ServerName: String;
    JWT: String;
    CountdownTimer: String;

    Account_ID: String;
    Account_EMail: String;
    Account_First: String;
    Account_Last: String;
    Account_Security: String;

    tabSurveys: JSValue;
    tabSurveyOptions: JSValue;
    tabAvailability: JSValue;
    tabChangeHistory: JSValue;
    tabLogging: JSValue;
    tabSurveyInfo: JSValue;
    tabNotes: JSValue;
    tabAccounts: JSValue;
    tabIssues: JSValue;
    tabPermissions: JSValue;
    tabFeedback: JSValue;
    tabQuestions: JSValue;
    tabResponses: JSValue;
    tabLibrary: JSValue;
    tabQuestionTypes: JSValue;

    suneditorBannerContent: JSValue;
    suneditorBannerPreContent: JSValue;
    suneditorBannerPauseContent: JSValue;
    suneditorBannerPostContent: JSValue;
    suneditorAboutContent: JSValue;
    suneditorFeedbackContent: JSValue;
    suneditorQuestionContent: JSValue;

    CurrentSurveyID: String;
    CurrentSurveyName: String;
    CurrentSurveyGroup: String;
    CurrentSurveyLink: String;
    CurrentSurveyPermissions: String;

    CurrentSurveyData: String;
    CurrentSurveyQuestions: String;

    NewSurveyName: String;
    NewSurveyGroup: String;
    NewSurveyLink: String;
    NewSurveyData: String;
    NewSurveyDifferences: String;

    procedure SwitchOption(Option: Integer);
    procedure LogActivity(Activity: String);
  end;

var
  Form1: TForm1;
  MainMenuButtons: Array of TWebButton;
  SurveyMenuButtons: Array of TWebButton;
  PreviewSizeButtons: Array of TWebButton;
  PreviewTimeButtons: Array of TWebButton;
  PreviewSize: Integer;
  PreviewTime: Integer;

implementation

uses UnitLogin, UnitNote;

{$R *.dfm}

{ TForm1 }

procedure TForm1.AccountChanged(AccountID: String);
var
  First: String;
  Last: String;
  EMail: String;
begin
  asm
    var row = this.tabAccounts.getRow(AccountID);
    First = row.getCell('first_name').getValue();
    Last = row.getCell('last_name').getValue();
    EMail = row.getCell('email').getValue();
  end;

  await(  UpdateTable('ISurveyAdminService.UpdateAccount', [AccountID, First, Last, EMail], tabAccounts, btnAccountsReload));

  asm
    this.tabAccounts.selectRow(AccountID);
  end;
end;

procedure TForm1.btnAccountClick(Sender: TObject);
begin
//
end;

procedure TForm1.btnAvailabilityAddClick(Sender: TObject);
var
  NewID: String;
begin
  NewID := TGUID.NewGUID.ToString;
  asm
    this.tabAvailability.addRow({
      ID: NewID,
      opening: luxon.DateTime.now().toISO(),
      closing: luxon.DateTime.now().plus({days: 7}).toISO(),
      description: "New Availability"
    });
    this.tabAvailability.deselectRow();
    this.tabAvailability.selectRow(NewID);
    var items = this.tabAvailability.getDataCount();
    var row = this.tabSurveyOptions.getRow(3);
    row.getCell('ITEMS').setValue(items);
  end;
  btnAvailabilityReloadClick(Sender);
  SurveyChanged(Sender);
end;

procedure TForm1.btnAvailabilityDeleteClick(Sender: TObject);
begin
  asm
    var nextrow = false;
    var rows = this.tabAvailability.getSelectedRows();
    if (rows.length > 0) {
      if (rows[0].getNextRow() !== false) {
        nextrow = rows[0].getNextRow();
      }
      else if (rows[0].getPrevRow() !== false) {
        nextrow = rows[0].getPrevRow();
      }

      rows[0].delete();

      if (nextrow !== false) {
        this.tabAvailability.selectRow(nextrow);
      }

      var items = this.tabAvailability.getDataCount();
      var row = this.tabSurveyOptions.getRow(3);
      row.getCell('ITEMS').setValue(items);
    }
  end;
  btnAvailabilityReloadClick(Sender);
  SurveyChanged(Sender);
end;

procedure TForm1.btnAvailabilityPrintClick(Sender: TObject);
begin
  asm this.tabAvailability.print(); end;
end;

procedure TForm1.btnAvailabilityReloadClick(Sender: TObject);
var
  Status: String;
  Countdown: String;
  Color: String;
begin
  // Evaluate the Availability options and see what's what
  Status := '';
  Countdown := '';
  Color := 'btn-secondary';

  asm
    var rows = this.tabAvailability.getRows();
    if (rows.length > 0) {
      var now = luxon.DateTime.now();
      var next = luxon.DateTime.now().plus({years: 100});

      for (var i = 0; i < rows.length; i++) {
        var start  = luxon.DateTime.fromISO(rows[i].getCell('opening').getValue());
        var finish  = luxon.DateTime.fromISO(rows[i].getCell('closing').getValue());

        if (start > finish) {
          Status = 'Error';
          Color = 'btn-danger';
          break;
        }

        if ((start < now) && (finish > now)) {
          Status += 'Active ';
          next = start;
        }
        else if (start > now) {
          Status += 'Pre ';
          if (next > start) {
            next = start;
          }
        }
        else if (finish < now) {
          Status += 'Post ';
        }
      }

      if (Status == '') {
        Status = 'Active';
        Color = 'btn-success';
      }
      else if (Status.indexOf('Active') > -1) {
        Status = 'Active';
        Color = 'btn-success';
      }
      else if ((Status.indexOf('Pre') > -1) && (Status.indexOf('Post') == -1)) {
        Status = 'Pre';
        Countdown = next.toISO();
        Color = 'btn-primary';
      }
      else if ((Status.indexOf('Post') > -1) && (Status.indexOf('Pre') == -1)) {
        Status = 'Post';
        Countdown = '';
        Color = 'btn-secondary';
      }
      else if (Status.indexOf('Error') == -1) {
        Status = 'Pause';
        Color = 'btn-primary';
        Countdown = next.toISO();
      }
    }
  end;
  if Status = '' then Status := 'Active';

  labelAvailabilityStatus.Caption := Status;
  labelAvailabilityStatus.ElementClassName := 'ShortButton btn '+Color;
  if (Countdown = '') then
  begin
    labelAvailabilityCountdown.Caption := '';
    labelAvailabilityCountdown.Visible := False;
    tmrCountdown.Enabled := False;
  end
  else
  begin
    CountdownTimer := CountDown;
    labelAvailabilityCountdown.Caption := '0d 00h 00m 00s';
    labelAvailabilityCountdown.Visible := True;
    tmrCountdown.Enabled := True;
  end;

end;

procedure TForm1.btnBlogClick(Sender: TObject);
begin
  window.open('https://www.tmssoftware.com/site/blog.asp?post=1015','_blank');
end;

procedure TForm1.btnChangeHistoryPrintClick(Sender: TObject);
begin
  asm this.tabChangeHistory.print(); end;
end;

procedure TForm1.btnChangeHistoryReloadClick(Sender: TObject);
begin
  await(  UpdateTable('ISurveyAdminService.GetSurveyChangeHistory', [CurrentSurveyID, CurrentSurveyName, CurrentSurveyGroup], tabChangeHistory, btnChangeHistoryReload));
  // Update Options Count
  asm
    var items = this.tabChangeHistory.getDataCount();
    var row = this.tabSurveyOptions.getRow(10);
    row.getCell('ITEMS').setValue(items);
  end;
end;

procedure TForm1.btnDeleteUserClick(Sender: TObject);
var
  NextAccountID: String;
  ThisAccountID: String;
  ThisAccountFirstName: String;
  ThisAccountLastName: String;
  ThisAccountEMail: String;
begin

  NextAccountID := '';
  ThisAccountID := '';

  // Idea here is to figure out what we want selected once the current account is deleted.
  // Ideally this would be the next account in the list if available, otherwise the last account
  asm
    var rows = this.tabAccounts.getSelectedRows();
    if (rows.length > 0) {
      ThisAccountID = rows[0].getCell('account_id').getValue();
      ThisAccountFirstName = rows[0].getCell('first_name').getValue();
      ThisAccountLastName = rows[0].getCell('last_name').getValue();
      ThisAccountEMail = rows[0].getCell('email').getValue();

      if (rows[0].getNextRow() !== false) {
        NextAccountID = rows[0].getNextRow().getCell('account_id').getValue();
      }
      else if (rows[0].getPrevRow() !== false) {
        NextAccountID = rows[0].getPrevRow().getCell('account_id').getValue();
      }
    }
  end;

  if ThisAccountID <> '' then
  begin
    await(UpdateTable('ISurveyAdminService.DeleteAccount', [ThisACcountID, ThisAccountFirstName, ThisAccountLastName, thisAccountEMail], tabAccounts, btnAccountsReload));
  end;

  if NextAccountID <> '' then
  begin
    asm
     this.tabAccounts.selectRow(NextAccountID);
    end;
  end;

end;

procedure TForm1.btnDiscordClick(Sender: TObject);
begin
  window.open('https://discord.gg/U3jBJ2vMfn','_blank');
end;

procedure TForm1.btnEmailClick(Sender: TObject);
begin
  window.open('mailto:concierge@500surveys.ca','_blank');
end;

procedure TForm1.btnFeedbackActivityLogClick(Sender: TObject);
var
 NewNote: TNoteForm;
 NoteResult: TModalResult;
 Note: String;
 NoteID: String;

begin
  // Display Notes panel and go from there

  asm
    var rows = this.tabFeedback.getSelectedRows();
    if (rows.length > 0) {
      NoteID = rows[0].getCell('feedback_id').getValue();
    }
  end;

  if NoteID <> '' then
  begin

    Note := await(GetQueryData('ISurveyAdminService.GetFeedbackActivityLog', [NoteID], btnIssuesReload));

    NewNote := TNoteForm.Create(Self);
    NewNote.Popup := True;
    NewNote.PopupOpacity := 0.7;

    // Load the form
    await( TNoteForm, NewNote.Load );

    NewNote.divNoteTitle.HTML.Text := '<div style="width:100%; text-align:center;">Activity Log</div>';
    NewNote.divCategoriesHolder.elementHandle.classList.replace('d-flex','d-none');
    NewNote.divNoteHeader.Visible := False;
    NewNote.btnNoteCancel.Visible := False;

    asm
      var data = JSON.parse(Note);
      var html = data[0]['activitylog'];
      NewNote.suneditorNote.setContents('<pre>'+html.split('\n').join('<br>')+'</pre>');
      NewNote.suneditorNote.readOnly(true);
    end;

    // Wait for the form to be closed, and then act accordingly
    try
      NoteResult := await( TModalResult, NewNote.Execute );
    finally
      NewNote.Free;
    end;
  end;
end;

procedure TForm1.btnFeedbackReloadClick(Sender: TObject);
begin
  await(  UpdateTable('ISurveyAdminService.GetAllFeedback', [], tabFeedback, btnFeedbackReload));
end;

procedure TForm1.btnGitHubClick(Sender: TObject);
begin
  window.open('https://github.com/500Foods/TMS-Web-Core-SurveyAdminClient','_blank');
end;

procedure TForm1.btnIssuesPrintClick(Sender: TObject);
begin
  asm this.tabIssues.print(); end;
end;

procedure TForm1.btnIssuesReloadClick(Sender: TObject);
begin
  await(  UpdateTable('ISurveyAdminService.GetAllIssues', [], tabIssues, btnIssuesReload));
end;

procedure TForm1.btnIssueStatusNewClick(Sender: TObject);
var
  ThisIssueID: String;
  NewStatus: String;
begin

  if (Sender = btnIssueStatusNew) then NewStatus := 'New'
  else if (Sender = btnIssueStatusInProgress) then NewStatus := 'In Progress'
  else if (Sender = btnIssueStatusClosed) then NewStatus := 'Closed';

  asm
    var rows = this.tabIssues.getSelectedRows();
    if (rows.length > 0) {
      ThisIssueID = rows[0].getCell('issue_id').getValue();
    }
  end;

  if ThisIssueID <> '' then
  begin
    await(UpdateTable('ISurveyAdminService.SetIssueStatus', [ThisIssueID, NewStatus], tabIssues, btnIssuesReload));
  end;

  asm
    this.tabIssues.selectRow(ThisIssueID);
  end;

end;

procedure TForm1.btnLogging7DaysClick(Sender: TObject);
begin
  UpdateTable('ISurveyAdminService.GetHistory', [7], tabLogging, btnLoggingReload);
  btnLoggingReload.Tag := 7;
end;

procedure TForm1.btnLoggingAllDataClick(Sender: TObject);
begin
  UpdateTable('ISurveyAdminService.GetHistory', [99999], tabLogging, btnLoggingReload);
  btnLoggingReload.Tag := 0;
end;

procedure TForm1.btnLoggingPrintClick(Sender: TObject);
begin
  asm this.tabLogging.print(); end;
end;

procedure TForm1.btnLoggingReloadClick(Sender: TObject);
begin
  if btnLoggingReload.Tag = 1 then btnLoggingTodayClick(Sender);
  if btnLoggingReload.Tag = 7 then btnLogging7DaysClick(Sender);
  if btnLoggingReload.Tag = 0 then btnLoggingAllDataClick(Sender);
end;

procedure TForm1.btnLoggingTodayClick(Sender: TObject);
begin
  UpdateTable('ISurveyAdminService.GetHistory', [1], tabLogging, btnLoggingReload);
  btnLoggingReload.Tag := 1;
end;

procedure TForm1.btnLogoutClick(Sender: TObject);
begin
  divBlocker.ElementClassName := 'Close';
  divBlocker.Visible := True;
  asm
    window.location.reload(true);
    window.location.href=window.location.href;
  end;
end;


// Menu at the top of the main page
procedure TForm1.btnMainMenuClick(Sender: TObject);
var
  i: Integer;
begin
  if (Sender is TWebButton) then
  begin
    for i := 0 to Length(MainMenuButtons) - 1 do
    begin
      if (Sender as TWebButton) = MainMenuButtons[i]
      then MainMenuButtons[i].ElementHandle.classList.replace('btn-dark','btn-primary')
      else MainMenuButtons[i].ElementHandle.classList.replace('btn-primary','btn-dark');
    end;
    pagecontrolMain.TabIndex := (Sender as TWebButton).Tag;
  end;
end;


procedure TForm1.btnNotesAddClick(Sender: TObject);
var
 NewNote: TNoteForm;
 NoteResult: TModalResult;
 Note: String;
 NoteID: String;

begin
  // Display Notes panel and go from there

  NewNote := TNoteForm.Create(Self);
  NewNote.Popup := True;
  NewNote.PopupOpacity := 0.7;

  // Load the form
  await( TNoteForm, NewNote.Load );

  NewNote.divNoteTitle.HTML.Text := '<div style="width:100%; text-align:center;">Add Project Note to '+CurrentSurveyGroup+' / '+CurrentSurveyName+'</div>';

  // Wait for the form to be closed, and then act accordingly
  try
    NoteResult := await( TModalResult, NewNote.Execute );

    if (NoteResult = mrOK) then
    begin
      // Let's create a new note
      NoteID := TGUID.NewGUID.ToString;
      asm
        Note = NewNote.suneditorNote.getContents(false);
      end;

      await( UpdateTable('ISurveyAdminService.AddSurveyNote', [CurrentSurveyID, NoteID, Note, CurrentSurveyName, CurrentSurveyGroup], tabNotes, btnNotesReload));

      asm
        var items = this.tabNotes.getDataCount();
        var row = this.tabSurveyOptions.getRow(2);
        row.getCell('ITEMS').setValue(items);
      end;

    end;
  finally
    NewNote.Free;
  end;


end;

procedure TForm1.btnNotesDeleteClick(Sender: TObject);
var
  DeleteNoteID: String;
  NextNoteID: String;
begin
  DeleteNoteID := '';
  NextNoteID := '';

  asm
    var rows = this.tabNotes.getSelectedRows();
    if (rows.length > 0) {
      DeleteNoteID = rows[0].getCell('note_id').getValue();

      if (rows[0].getNextRow() !== false) {
        NextNoteID = rows[0].getNextRow().getCell('note_id').getValue();
      }
      else if (rows[0].getPrevRow() !== false) {
        NextNoteID = rows[0].getPrevRow().getCell('note_id').getValue();
      }
    }
  end;

  if (DeleteNoteID) <> '' then
  begin
    await(  UpdateTable('ISurveyAdminService.DeleteSurveyNote', [CurrentSurveyID, DeleteNoteID, CurrentSurveyName, CurrentSurveyGroup], tabNotes, btnNotesReload));

    asm
      if (NextNoteID !== "") {
       this.tabNotes.selectRow(NextNoteID);
      }

      var items = this.tabNotes.getDataCount();
      var row = this.tabSurveyOptions.getRow(2);
      row.getCell('ITEMS').setValue(items);
    end;

  end;

end;
procedure TForm1.btnNotesPrintClick(Sender: TObject);
begin
  asm this.tabNotes.print(); end;
end;

procedure TForm1.btnNotesReloadClick(Sender: TObject);
begin
  await(  UpdateTable('ISurveyAdminService.GetSurveyNotes', [CurrentSurveyID, CurrentSurveyName, CurrentSurveyGroup], tabNotes, btnNotesReload));
  // Update Options Count
  asm
    var items = this.tabNotes.getDataCount();
    var row = this.tabSurveyOptions.getRow(2);
    row.getCell('ITEMS').setValue(items);
  end;
end;

// Menu at the top of the survey page
procedure TForm1.btnSurveyMenuClick(Sender: TObject);
var
  i: Integer;
begin
  if (Sender is TWebButton) then
  begin
    for i := 0 to Length(SurveyMenuButtons) - 1 do
    begin
      if (Sender as TWebButton) = SurveyMenuButtons[i]
      then SurveyMenuButtons[i].ElementHandle.classList.replace('btn-dark','btn-primary')
      else SurveyMenuButtons[i].ElementHandle.classList.replace('btn-primary','btn-dark');
    end;
    pagecontrolSurveys.TabIndex := (Sender as TWebButton).Tag;
  end;
end;

procedure TForm1.btnSurveyNewClick(Sender: TObject);
var
  NewSurveyID: String;
  NewSurveyName: String;
  NewSurveyGroup: String;
  NewSurveyLink: String;
  NewSurveyData: TJSONObject;
  ChangeInfo: String;

begin
  NewSurveyID := TGUID.NewGUID.ToString;
  NewSurveyName := 'New Survey';
  if CurrentSurveyGroup = ''
  then NEwSurveyGroup := 'New Survey Group'
  else NewSurveyGroup := CurrentSurveyGroup;
  NewSurveyLink := 'LINK';

  NewSurveyData := TJSONObject.Create;

  NewSurveyData.AddPair('SurveyID', NewSurveyID);
  NewSurveyData.AddPair('SurveyName', NewSurveyName);
  NewSurveyData.AddPair('SurveyGroup', NewSurveyGroup);
  NewSurveyData.AddPair('SurveyLink', NewSurveyLink);
  ChangeInfo := 'New Survey Created';

  await(UpdateTable('ISurveyAdminService.NewSurvey', [NewSurveyID, NewSurveyName, NewSurveyGroup, NewSurveyLink, NewSurveyData.ToString, ChangeInfo], tabSurveys, btnSurveyReload));

  CurrentSurveyID := NewSurveyID;
  btnSurveyReloadClick(Sender);

end;

procedure TForm1.btnSurveyCloneClick(Sender: TObject);
var
  NewSurveyID: String;
  NewSurveyName: String;
  NewSurveyGroup: String;
  NewSurveyLink: String;
  NewSurveyData: TJSONObject;
  ChangeInfo: String;

begin
  NewSurveyID := TGUID.NewGUID.ToString;
  NewSurveyName := CurrentSurveyName+' (clone)';
  NewSurveyGroup := CurrentSurveyGroup;
  NewSurveyLink := 'LINK';

  NewSurveyData := TJSONObject.ParseJSONValue(CurrentSurveyData) as TJSONObject;

  NewSurveyData.AddPair('SurveyID', NewSurveyID);
  NewSurveyData.AddPair('SurveyName', NewSurveyName);
  NewSurveyData.AddPair('SurveyGroup', NewSurveyGroup);
  NewSurveyData.AddPair('SurveyLink', NewSurveyLink);
  ChangeInfo := 'Survey Cloned From '+CurrentSurveyGroup+'/'+CurrentSurveyName;

  await(UpdateTable('ISurveyAdminService.NewSurvey', [NewSurveyID, NewSurveyName, NewSurveyGroup, NewSurveyLink, NewSurveyData.ToString, ChangeInfo], tabSurveys, btnSurveyReload));

  CurrentSurveyID := NewSurveyID;
  btnSurveyReloadClick(Sender);
end;

procedure TForm1.btnSurveyDeleteClick(Sender: TObject);
var
  NextSurveyID: String;
begin

  NextSurveyID := CurrentSurveyID;

  // Idea here is to figure out what we want selected once the current survey is deleted.
  // Ideally this would be the next survey in the list if available, otherwise the last survey
  asm
    var row = this.tabSurveys.getRow(NextSurveyID);
    if (row.getNextRow() !== false) {
      NextSurveyID = row.getNextRow().getCell('survey_id').getValue();
    }
    else if (row.getPrevRow() !== false) {
      NextSurveyID = row.getPrevRow ().getCell('survey_id').getValue();
    }
    else {
      NextSurveyID = '';
    }
  end;

  await(UpdateTable('ISurveyAdminService.DeleteSurvey', [CurrentSurveyID, CurrentSurveyGroup, CurrentSurveyName], tabSurveys, btnSurveyReload));

  CurrentSurveyID := NextSurveyID;
  btnSurveyReloadClick(Sender);
end;


procedure TForm1.btnSurveyInfoReloadClick(Sender: TObject);
begin
  UpdateTable('ISurveyAdminService.GetSurveyInfo', [CurrentSurveyID, CurrentSurveyName, CurrentSurveyGroup], tabSurveyInfo, btnSurveyInfoReload);
end;

function TForm1.GetSurveyByID(SurveyID: String; SurveyName: String; SurveyGroup: String):String;
var
  Response: TXDataClientResponse;
  ClientConn:   TXDataWebClient;
  Blob: JSValue;
begin
  Result := '';
  if (ServerConn.Connected) then
  begin
    try
      ClientConn := TXDataWebClient.Create(nil);
      ClientConn.Connection := ServerConn;
      Response := await(ClientConn.RawInvokeAsync('ISurveyAdminService.GetSurveyByID', [SurveyID, SurveyName, SurveyGroup]));
      Blob := Response.Result;
      asm
       Result = await Blob.text();
      end;
    except on E: Exception do
      begin
        Form1.LogActivity('ISurveyAdminService.GetSurveyByID Error: ['+E.ClassName+'] '+E.Message);
        console.log('ISurveyAdminService.GetSurveyByID Error: ['+E.ClassName+'] '+E.Message);
      end;
    end;
  end;
end;

procedure TForm1.UpdateTable(Endpoint: String; Params: Array of JSValue; Table: JSValue; Progress: TWebButton);
var
  Response: TXDataClientResponse;
  ClientConn:   TXDataWebClient;
  Blob: JSValue;
  Elapsed: TDateTime;
begin
  Elapsed := Now;
  LogActivity('['+Endpoint+'] Requested.');
  try
    if (Progress <> nil) then Progress.Caption := '<i class="fa-solid fa-rotate fa-spin"></i>';
    if (ServerConn.Connected) then
    begin
      try
        ClientConn := TXDataWebClient.Create(nil);
        ClientConn.Connection := ServerConn;
        Response := await(ClientConn.RawInvokeAsync(Endpoint, Params));
        Blob := Response.Result;
        asm
          if (Table) {
            Table.setData(await Blob.text())
            .then( function() {
              Table.redraw(true)
            });
          }
        end;
      except on E: Exception do
        begin
          Form1.LogActivity(Endpoint+' Error: ['+E.ClassName+'] '+E.Message);
          console.log(Endpoint+' Error: ['+E.ClassName+'] '+E.Message);
        end;
      end;
    end;
  finally
    if (Progress <> nil) then Progress.Caption := '<i class="fa-solid fa-rotate"></i>';
  end;
  LogActivity('['+Endpoint+'] Complete. '+IntToStr(MillisecondsBetween(Now, Elapsed))+'ms');
end;

function TForm1.GetQueryData(Endpoint: String; Params: Array of JSValue; Progress: TWebButton): String;
var
  Response: TXDataClientResponse;
  ClientConn:   TXDataWebClient;
  Blob: JSValue;
  Elapsed: TDateTime;
begin
  Result := '';
  Elapsed := Now;
  LogActivity('['+Endpoint+'] Expected');
  try
    if (Progress <> nil) then Progress.Caption := '<i class="fa-solid fa-rotate fa-spin"></i>';
    if (ServerConn.Connected) then
    begin
      try
        ClientConn := TXDataWebClient.Create(nil);
        ClientConn.Connection := ServerConn;
        Response := await(ClientConn.RawInvokeAsync(Endpoint, Params));
        Blob := Response.Result;
        asm
          Result = await Blob.text();
        end;
      except on E: Exception do
        begin
          Form1.LogActivity(Endpoint+' Error: ['+E.ClassName+'] '+E.Message);
          console.log(Endpoint+' Error: ['+E.ClassName+'] '+E.Message);
        end;
      end;
    end;
  finally
    if (Progress <> nil) then Progress.Caption := '<i class="fa-solid fa-rotate"></i>';
  end;
  LogActivity('['+Endpoint+'] Complete '+IntToStr(MillisecondsBetween(Now, Elapsed))+'ms');
end;

procedure TForm1.btnSurveyReloadClick(Sender: TObject);
var
  SelectedSurveyID: String;
begin
  SelectedSurveyID := CurrentSurveyID;

  await(UpdateTable('ISurveyAdminService.GetSurveys', [], tabSurveys, btnSurveyReload));

  // Select last selected survey if we know what it was
  if SelectedSurveyID <> '' then
  begin
    asm
      this.tabSurveys.selectRow(SelectedSurveyID);
    end;
  end
  // Otherwise, select any survey if one is available
  else
  begin
    asm
      if (this.tabSurveys.getDataCount() > 0) {
        this.tabSurveys.selectRow(this.tabSurveys.getRows()[0]);
        SelectedSurveyID = this.tabSurveys.getRows()[0].getCell('survey_id').getValue();
      }
    end;
  end;

  if SelectedSurveyID <> '' then SurveySelect(SelectedSurveyID);

  btnSurveySave.Enabled := False;
  btnSurveyCancel.Enabled := False;
end;

procedure TForm1.btnSurveySaveClick(Sender: TObject);
var
  NewSurveyQuestions: String;
  CurrentQuestionID: String;

begin

  // Questions are not included in the main Survey JSON
  NewSurveyQuestions := CurrentSurveyQuestions;
  CurrentQuestionID := '';
  asm
    NewSurveyQuestions = JSON.stringify(this.tabQuestions.getData());
    var rows = this.tabQuestions.getSelectedRows();
    if (rows.length > 0) {
      CurrentQuestionID = rows[0].getCell('question_id').getValue();
    }
  end;

  if (NewSurveyQuestions <> CurrentSurveyQuestions)
  then await(UpdateTable('ISurveyAdminService.SetQuestions', [CurrentSurveyID, NewSurveyQuestions], tabQuestions, btnQuestionsReload));

  // Now for the main Survey JSON
  await(UpdateTable('ISurveyAdminService.UpdateSurvey', [CurrentSurveyID, NewSurveyGroup, NewSurveyName, NewSurveyLink, NewSurveyData, NewSurveyDifferences], tabSurveys, btnSurveyReload));
  btnSurveyReloadClick(Sender);

  if CurrentQuestionID <> '' then
  begin
    asm
      this.tabQuestions.selectRow(CurrentQuestionID);
    end;
  end;
end;

procedure TForm1.btnTicketClick(Sender: TObject);
var
 NewNote: TNoteForm;
 NoteResult: TModalResult;
 Note: String;
 NoteID: String;
 Category: String;

begin
  // Display Notes panel and go from there

  NewNote := TNoteForm.Create(Self);
  NewNote.Popup := True;
  NewNote.PopupOpacity := 0.7;

  // Load the form
  await( TNoteForm, NewNote.Load );

  NewNote.divNoteTitle.HTML.Text := '<div style="width:100%; text-align:center;">Report an Issue</div>';
  NewNote.divCategoriesHolder.elementHandle.classList.replace('d-none','d-flex');

  // Wait for the form to be closed, and then act accordingly
  try
    NoteResult := await( TModalResult, NewNote.Execute );

    if (NoteResult = mrOK) then
    begin
      // Let's create a new issue

      NewNote.divNoteTitle.HTML.Text := '<div style="width:100%; text-align:center;">Submitting Issue...</div>';
      NoteID := TGUID.NewGUID.ToString;

      if NewNote.comboCategories.ItemIndex > 0
      then Category := NewNote.comboCategories.Text
      else Category := 'Uncategorized Issue';

      asm
        Note = NewNote.suneditorNote.getContents(false);
      end;

      await( UpdateTable('ISurveyAdminService.ReportIssue', [CurrentSurveyID, NoteID, Note, Category, CurrentSurveyName, CurrentSurveyGroup, ActivityLog.Text, Length(ActivityLog.Text)], nil, nil));

     end;
  finally
    NewNote.Free;
  end;


end;

procedure TForm1.btnViewActivityLogClick(Sender: TObject);
var
 NewNote: TNoteForm;
 NoteResult: TModalResult;
 Note: String;
 NoteID: String;

begin
  // Display Notes panel and go from there

  asm
    var rows = this.tabIssues.getSelectedRows();
    if (rows.length > 0) {
      NoteID = rows[0].getCell('issue_id').getValue();
    }
  end;

  if NoteID <> '' then
  begin

    Note := await(GetQueryData('ISurveyAdminService.GetIssueActivityLog', [NoteID], btnIssuesReload));

    NewNote := TNoteForm.Create(Self);
    NewNote.Popup := True;
    NewNote.PopupOpacity := 0.7;

    // Load the form
    await( TNoteForm, NewNote.Load );

    NewNote.divNoteTitle.HTML.Text := '<div style="width:100%; text-align:center;">Activity Log</div>';
    NewNote.divCategoriesHolder.elementHandle.classList.replace('d-flex','d-none');
    NewNote.divNoteHeader.Visible := False;
    NewNote.btnNoteCancel.Visible := False;

    asm
      var data = JSON.parse(Note);
      var html = data[0]['activitylog'];
      NewNote.suneditorNote.setContents('<pre>'+html.split('\n').join('<br>')+'</pre>');
      NewNote.suneditorNote.readOnly(true);
    end;

    // Wait for the form to be closed, and then act accordingly
    try
      NoteResult := await( TModalResult, NewNote.Execute );
    finally
      NewNote.Free;
    end;
  end;

end;

procedure TForm1.ddQuestionTypeDropDown(Sender: TObject);
begin
  asm
    this.tabQuestionTypes.redraw(true);
  end;
end;

procedure TForm1.btnPermissionsPrintClick(Sender: TObject);
begin
  asm this.tabPermissions.print(); end;
end;

procedure TForm1.btnPermissionsReloadClick(Sender: TObject);
begin
  UpdateTable('ISurveyAdminService.GetSurveyPermissions', [CurrentSurveyID, CurrentSurveyName, CurrentSurveyGroup], tabPermissions, btnPermissionsReload);
end;

procedure TForm1.btnPreviewReloadClick(Sender: TObject);
var
  PageSize: String;
  URL: String;
  CacheBuster: String;
  PageTime :String;
begin

  // Used to ensure the SurveyClient app is not cached when loaded
  CacheBuster := FormatDateTime('yyyyMMddHHnnsszzz',Now);

  // Ideally, the iframe would be centered within the preview area....
  asm
    divPreview.classList.replace('align-items-top','align-items-center');
  end;

  // Just some preset sizes for showing basic responsiveness
  if      (PreviewSize = 0) then PageSize := 'width=300 height=500'
  else if (PreviewSize = 1) then PageSize := 'width=350 height=600'
  else if (PreviewSize = 2) then PageSize := 'width=375 height=750'
  else if (PreviewSize = 3) then PageSize := 'width=400 height=800'
  else                           PageSize := 'width=500 height=900';

  // Easy way to test the availability conditions
  if      (PreviewTime = 0) then PageTime := ''
  else if (PreviewTime = 1) then PageTime := '&Status=Active'
  else if (PreviewTime = 2) then PageTime := '&Status=Pre'
  else if (PreviewTime = 3) then PageTime := '&Status=Pause'
  else                           PageTime := '&Status=Post';

  // Get the actual URL to put in the iframe.  In this case, we weant the test one, not the live one
  URL := divConfigBasicTestLink.ElementHandle.firstElementChild.ToString;

  // Create the iframe as well as an inidication of what dimensions are in effect.
  // Also display the url in case someone wants to try it outside the app
  divPreview.HTML.Text := '<div style="position:absolute; top:5px; left:5px; font-size:12px;" ' +
                                'class="text-secondary">'+
                                divConfigBasicTestLink.HTML.Text+'<br />'+
                                PageSize+'<br />'+
                          '</div>'+
                          '<iframe src="'+URL+'&CacheBuster='+CacheBuster+PageTime+'" '+PageSize+'>';

  // ....but if it is is too tall, we'll need to display it top-aligned
  asm
    if (divPreview.lastElementChild.offsetTop < 0) {
      divPreview.classList.replace('align-items-center','align-items-top');
    }
  end;
end;

procedure TForm1.btnPreviewSizeClick(Sender: TObject);
var
  i: Integer;
begin
  if (Sender is TWebButton) then
  begin
    for i := 0 to Length(PreviewSizeButtons) - 1 do
    begin
      if (Sender as TWebButton) = PreviewSizeButtons[i]
      then PreviewSizeButtons[i].ElementHandle.classList.replace('btn-dark','btn-primary')
      else PreviewSizeButtons[i].ElementHandle.classList.replace('btn-primary','btn-dark');
    end;
    PreviewSize := (Sender as TWebButton).Tag;
    btnPreviewReloadClick(Sender);
  end;
end;

procedure TForm1.btnPreviewTimeClick(Sender: TObject);
var
  i: Integer;
begin
  if (Sender is TWebButton) then
  begin
    for i := 0 to Length(PreviewTimeButtons) - 1 do
    begin
      if (Sender as TWebButton) = PreviewTimeButtons[i]
      then PreviewTimeButtons[i].ElementHandle.classList.replace('btn-dark','btn-primary')
      else PreviewTimeButtons[i].ElementHandle.classList.replace('btn-primary','btn-dark');
    end;
    PreviewTime := (Sender as TWebButton).Tag;
    btnPreviewReloadClick(Sender);
  end;
end;

procedure TForm1.btnQuestionsCloneClick(Sender: TObject);
begin
//
end;

procedure TForm1.btnQuestionsDeleteClick(Sender: TObject);
var
  NextQuestionID: String;
begin
  NextQuestionID := '';
  asm
    var nextrow = false;
    var rows = this.tabQuestions.getSelectedRows();
    if (rows.length > 0) {
      if (rows[0].getNextRow() !== false) {
        nextrow = rows[0].getNextRow();
      }
      else if (rows[0].getPrevRow() !== false) {
        nextrow = rows[0].getPrevRow();
      }

      rows[0].delete();

      if (nextrow !== false) {
        this.tabQuestions.selectRow(nextrow);
        NextQuestionID = nextrow.getCell('question_id').getValue();
      }
    }
  end;

  if NextQuestionID <> '' then QuestionSelect(NextQuestionID);

  SurveyChanged(Sender);
end;

procedure TForm1.btnQuestionsNewClick(Sender: TObject);
var
  NewQuestionID: String;
begin
  NewQuestionID := TGUID.NewGUID.ToString;
  asm
    this.tabQuestions.addRow({
      question_id: NewQuestionID,
      question_name: "New Question",
      question_type: 2, // Information
      question_title: "",
      question_footer: "",
      question_options: "",
      question: ""
    , false});
    this.tabQuestions.deselectRow();
    this.tabQuestions.selectRow(NewQuestionID);
  end;

  QuestionSelect(NewQuestionID);

  SurveyChanged(Sender);

end;

procedure TForm1.btnQuestionsReloadClick(Sender: TObject);
var
  SelectedQuestionID: String;
  Data: String;
begin
  SelectedQuestionID := '';
  asm
    var rows = this.tabQuestions.getSelectedRows();
    if (rows.length > 0) {
      SelectedQuestionID = rows[0].getCell('question_id').getValue();
    }
  end;

  await(UpdateTable('ISurveyAdminService.GetQuestions', [CurrentSurveyID], tabQuestions, btnQuestionsReload));

  // Select last selected survey if we know what it was
  if SelectedQuestionID <> '' then
  begin
    asm
      this.tabQuestions.selectRow(SelectedQuestionID);
    end;
  end
  // Otherwise, select any question if one is available
  else
  begin
    asm
      if (this.tabQuestions.getDataCount() > 0) {
        this.tabQuestions.selectRow(this.tabQuestions.getRows()[0]);
        SelectedQuestionID = this.tabQuestions.getRows()[0].getCell('question_id').getValue();
      }
    end;
  end;

  if SelectedQuestionID <> '' then QuestionSelect(SelectedQuestionID);

  Data := '';
  asm
    Data = JSON.stringify(this.tabQuestions.getData());
  end;
  CurrentSurveyQuestions := Data;

  SurveyChanged(Sender);
end;

procedure TForm1.btnResponsesPrintClick(Sender: TObject);
begin
  asm this.tabResponses.print(); end;
end;

procedure TForm1.btnResponsesReloadClick(Sender: TObject);
begin
  await(UpdateTable('ISurveyAdminService.GetAllResponses', [], tabResponses, btnResponsesReload));
end;

procedure TForm1.btnAccountsPrintClick(Sender: TObject);
begin
  asm this.tabAccounts.print(); end;
end;

procedure TForm1.btnAccountsReloadClick(Sender: TObject);
begin
  await(UpdateTable('ISurveyAdminService.GetAccounts', [], tabAccounts, btnAccountsReload));

  asm
    if (this.tabAccounts.getDataCount() > 0) {
      this.tabAccounts.selectRow(this.tabAccounts.getRows()[0]);
    }
  end;

end;

procedure TForm1.btnAddUserClick(Sender: TObject);
var
  NewAccountID: String;
  NewFirstName: String;
  NewLastName: String;
  NewEmail: String;
  NewPassword: String;
  NewSecurity: String;
begin
  NewAccountID := TGUID.NewGUID.ToString;
  NewFirstName := 'New';
  NewLastName := 'User';
  NewEMail := 'email@address.com';
  if edtSetPassword.Text = ''
  then NewPassword := 'password1234'
  else NewPassword := edtSetPassword.Text;
  NewSecurity := 'WWWWW';

  await(UpdateTable('ISurveyAdminService.NewAccount', [NewAccountID, NewFirstName, NewLastName, NewEmail, NewPassword, NewSecurity], tabAccounts, btnAccountsReload));

  asm
    this.tabAccounts.selectRow(NewAccountID);
  end;

end;

procedure TForm1.edtConfigBasicLinkChange(Sender: TObject);
begin
  SurveyChanged(Sender);
  if GetQueryParam('Development') <> '' then
  begin
    divConfigBasicTestLink.HTML.Text := '<a class="text-decoration-none text-dark" href="http://localhost:8000/SurveyClient/Project1.html?SurveyID='+edtconfigBasicLink.Text+'&Testing=True" target="_blank">http://localhost:8000/SurveyClient/Project1.html?SurveyID='+edtconfigBasicLink.Text+'&Testing=True</a>';
    divConfigBasicLiveLink.HTML.Text := '<a class="text-decoration-none text-dark" href="http://localhost:8000/SurveyClient/Project1.html?SurveyID='+edtconfigBasicLink.Text+'" target="_blank">http://localhost:8000/SurveyClient/Project1.html?SurveyID='+edtconfigBasicLink.Text+'</a>';
  end
  else
  begin
    divConfigBasicTestLink.HTML.Text := '<a class="text-decoration-none text-dark" href="https://www.500surveys.ca/?SurveyID='+edtconfigBasicLink.Text+'&Testing=True" target="_blank">https://www.500surveys.ca/?SurveyID='+edtconfigBasicLink.Text+'&Testing=True</a>';
    divConfigBasicLiveLink.HTML.Text := '<a class="text-decoration-none text-dark" href="https://www.500surveys.ca/?SurveyID='+edtconfigBasicLink.Text+'" target="_blank">https://www.500surveys.ca/?SurveyID='+edtconfigBasicLink.Text+'</a>';
  end;
  if Trim(edtconfigBasicLink.Text) <> ''
  then qrcode.text := 'https://www.500surveys.ca/?SurveyID='+edtconfigBasicLink.Text;
end;

procedure TForm1.edtConfigBasicLiveLinkClick(Sender: TObject);
begin
  showmessage('ot a clik here');
end;

procedure TForm1.LogActivity(Activity: String);
begin
  // Add timestamped entry to the Activity Log
  ActivityLog.Add(FormatDateTime('yyyy-mm-dd hh:nn:ss.zzz', Now)+'  '+Activity);
end;

procedure TForm1.Login;
var
 NewLogin: TLoginForm;

begin
  // Display Login panel and go from there

  NewLogin := TLoginForm.Create(Self);
  NewLogin.Popup := True;
  NewLogin.PopupOpacity := 0.7;

  // Load the form
  await( TLoginForm, NewLogin.Load );

  NewLogin.divLoginTitle.HTML.Text := '<div style="width:100%; text-align:center;">Survey Admin Client v'+AppVer;

  // Wait for the form to be closed, and then act accordingly
  try
    await( TModalResult, NewLogin.Execute );
  finally
    NewLogin.Free;
  end;


end;

procedure TForm1.NewQuestionTypeSelected(QuestionID: String; typeid: integer; icon, hint, desc: string; info: string; update: boolean);
begin
  ddQuestionType.Text := '<div style="margin-left: 2px; margin-right:10px;">'+icon+'</div><div class="btn btn-sm btn-secondary bg-info text-dark me-2">'+hint+'</div><div style="margin-bottom:2px;">'+desc+'</div>';
  ddQuestionType.Tag := typeid;
  divQuestionOptionsInfo.HTML.Text := info;
  if update then
  begin
    if QuestionID <> '' then
    begin
      asm
        var row = this.tabQuestions.getRow(QuestionID);
        if (row !== undefined) {
          row.update({question_type: typeid});
        }
      end;
      SurveyChanged(nil);
    end;
  end;

  // Seems our info <div> doesn't get resized in a timely fashion, so let's force the issue
  // Should find a better way to avoid doing this (rather expensive call after all)
  asm
    setTimeout(() => { window.dispatchEvent(new Event('resize')); }, 0);
  end;
end;


procedure TForm1.QuestionChanged(Sender: TObject);
var
  QuestionID: String;
  QuestionName: String;
  QuestionType: Integer;
  QuestionTitle: String;
  QuestionFooter: String;
  QuestionOptions: String;

begin
  QuestionID := edtQuestionID.Text;
  QuestionName := edtQuestionName.Text;
  QuestionType := ddQuestionType.Tag;
  QuestionTitle := edtQuestionTitle.Text;
  QuestionFooter := edtQuestionFooter.Text;
  QuestionOptions := edtQuestionOptions.Text;

  if QuestionID <> '' then
  begin
    asm
      var Question = this.suneditorQuestionContent.getContents(false);
      var row = this.tabQuestions.getRow(QuestionID);
      if (row !== undefined) {
        row.update({
          question_name: QuestionName,
          question_type: QuestionType,
          question_title: QuestionTitle,
          question_footer: QuestionFooter,
          question_options: QuestionOptions,
          question: Question
        });
      }
    end;

  end;

  SurveyChanged(Sender);

end;

procedure TForm1.QuestionSelect(QuestionID: String);
var
  QuestionName: String;
  QuestionType: Integer;
  QuestionTitle: String;
  QuestionFooter: String;
  QuestionOptions: String;

begin
  QuestionName := '';
  QuestionType := 0;
  QuestionTitle := '';
  QuestionFooter := '';
  QuestionOptions := '';

  asm
    var Question = '';
    var typedata = window.typedata;
    var row = this.tabQuestions.getRow(QuestionID);

    if (row !== undefined) {
      QuestionName = row.getCell('question_name').getValue();
      QuestionType = row.getCell('question_type').getValue();
      QuestionTitle = row.getCell('question_title').getValue();
      QuestionFooter = row.getCell('question_footer').getValue();
      QuestionOptions = row.getCell('question_options').getValue();
      Question = row.getCell('question').getValue();
      pas.Unit1.Form1.NewQuestionTypeSelected(QuestionID, QuestionType, typedata[QuestionType].ICON, typedata[QuestionType].HINT, typedata[QuestionType].DESC, typedata[QuestionType].INFO, false);
    }
  end;

  edtQuestionID.Text := QuestionID;
  edtQuestionName.Text := QuestionName;
  edtQuestionTitle.Text := QuestionTitle;
  edtQuestionFooter.Text := QuestionFooter;
  edtQuestionOptions.Text := QuestionOptions;

  asm
    this.suneditorQuestionContent.setContents(Question);
  end;

end;

procedure TForm1.ResizeQRCode;
begin
  if Trim(edtconfigBasicLink.Text) <> ''
  then qrcode.text := 'https://www.500surveys.ca/?SurveyID='+edtconfigBasicLink.Text;

  divQRCodeConstraints.Width := min( 400, divQRCodeHolder.Width);
  divQRCodeConstraints.height := min( 400, divQRCodeHolder.Height);

  divQRCodeConstraints.Width := min(divQRCodeConstraints.width, divQRCodeConstraints.Height);
  divQRCodeConstraints.Height := min(divQRCodeConstraints.width, divQRCodeConstraints.Height);

  divQRCodeConstraints.Left := (divQRCodeHolder.Width - divQRCodeConstraints.Width) div 2;
  divQRCodeConstraints.Top := (divQRCodeHolder.Height - divQRCodeConstraints.Height) div 2;
end;

procedure TForm1.ServerConnRequest(Args: TXDataWebConnectionRequest);
begin
  Args.Request.Headers.SetValue('Authorization', JWT);
end;

procedure TForm1.splitterAccountsMove(Sender: TObject);
begin
  if divAccountsHolder.Width < 400
  then divAccountsHolder.Width := 400;
  if divAccountsHolder.Width > 800
  then divAccountsHolder.Width := 800;
end;

procedure TForm1.splitterLibraryMove(Sender: TObject);
begin
  if divLibraryListHolder.Width < 250
  then divLibraryListHolder.Width := 250;
  if divLibraryListHolder.Width > 750
  then divLibraryListHolder.Width := 750;
end;

procedure TForm1.splitterQuestionsMove(Sender: TObject);
begin
  if divQuestionsHolder.Width < 250
  then divQuestionsHolder.Width := 250;
  if divQuestionsHolder.Width > 750
  then divQuestionsHolder.Width := 750;
end;

procedure TForm1.splitterResponsesMove(Sender: TObject);
begin
  if divResponsesHolder.Width < 400
  then divResponsesHolder.Width := 400;

end;

procedure TForm1.splitterSurveyConfigMove(Sender: TObject);
begin
  if divSurveysOptions.Width < 150
  then divSurveysOptions.Width := 150;
  if divSurveysOptions.Width > 450
  then divSurveysOptions.Width := 450;

  ResizeQRCode;
end;

procedure TForm1.splitterSurveyMainMove(Sender: TObject);
begin
  if divSurveysSurveyHolder.Width < 250
  then divSurveysSurveyHolder.Width := 250;
  if divSurveysSurveyHolder.Width > 750
  then divSurveysSurveyHolder.Width := 750;
end;

procedure TForm1.SurveyChanged(Sender: TObject);
var
  NewData: TJSONObject;
  OldData: TJSONObject;
  Changes: TStringList;
  tabulatordata: String;
  Content: String;
  i: Integer;

  NewSurveyQuestions: String;

begin
  // Someone thinks the survey has changed.  If it has, enable the button to save the changes.
  OldData := TJSONObject.ParseJSONValue(CurrentSurveyData) as TJSONObject;
  NewData := TJSONObject.Create;

  // Basic Options
  NewSurveyName := Trim(edtConfigBasicName.Text);
  NewSurveyGroup := Trim(edtConfigBasicGroup.Text);
  NewSurveyLink := Trim(edtConfigBasicLink.Text);

  NewData.AddPair('SurveyID', CurrentSurveyID);
  NewData.AddPair('SurveyName', NewSurveyName);
  NewData.AddPair('SurveyGroup', NewSurveyGroup);
  NewData.AddPair('SurveyLink', NewSurveyLink);

  // Availability
  asm
    tabulatordata = JSON.stringify(this.tabAvailability.getData());
  end;
  NewData.AddPair('Availability', tabulatordata);

  // Banner
  NewData.AddPair('Banner-Title', Trim(edtConfigBannerTitle.Text));
  NewData.AddPair('Banner-Footer', Trim(edtConfigBannerFooter.Text));
  asm Content = this.suneditorBannerContent.getContents(false); end;
  NewData.AddPair('Banner-Content', Content);

  // Banner-Pre
  NewData.AddPair('Banner-Pre-Title', Trim(edtConfigBannerPreTitle.Text));
  NewData.AddPair('Banner-Pre-Footer', Trim(edtConfigBannerPreFooter.Text));
  asm Content = this.suneditorBannerPreContent.getContents(false); end;
  NewData.AddPair('Banner-Pre-Content', Content);

  // Banner-Pause
  NewData.AddPair('Banner-Pause-Title', Trim(edtConfigBannerPauseTitle.Text));
  NewData.AddPair('Banner-Pause-Footer', Trim(edtConfigBannerPauseFooter.Text));
  asm Content = this.suneditorBannerPauseContent.getContents(false); end;
  NewData.AddPair('Banner-Pause-Content', Content);

  // Banner-Post
  NewData.AddPair('Banner-Post-Title', Trim(edtConfigBannerPostTitle.Text));
  NewData.AddPair('Banner-Post-Footer', Trim(edtConfigBannerPostFooter.Text));
  asm Content = this.suneditorBannerPostContent.getContents(false); end;
  NewData.AddPair('Banner-Post-Content', Content);

  // About
  NewData.AddPair('About-Title', Trim(edtConfigAboutTitle.Text));
  asm Content = this.suneditorAboutContent.getContents(false); end;
  NewData.AddPair('About-Content', Content);

  // Feedback
  NewData.AddPair('Feedback-Title', Trim(edtConfigFeedbackTitle.Text));
  asm Content = this.suneditorFeedbackContent.getContents(false); end;
  NewData.AddPair('Feedback-Content', Content);

  NewSurveyData := NewData.ToString;

  // Questions are handled via a separate set of JSON
  NewSurveyQuestions := '';
  asm
    NewSurveyQuestions = JSON.stringify(this.tabQuestions.getData());
  end;

  if (NewSurveyData = CurrentSurveyData) and (NewSurveyQuestions = CurrentSurveyQuestions) then
  begin
    btnSurveySave.Enabled := False;
    btnSurveyCancel.Enabled := False;
  end
  else
  begin
    btnSurveySave.Enabled := True;
    btnSurveyCancel.Enabled := True;

    Changes := TStringList.Create;
    Changes.Sorted := True;
    Changes.Duplicates := dupIgnore;

    // Figure out what is different - just comparing top-level keys here.
    // Kinda assuming everything is JSON strings, so be mindful of that.

    // First, see if anything has been changed or added
    for i := 0 to NewData.Count-1 do
    begin
      if OldData.GetValue(NewData.Pairs[i].JSONString.Value) <> nil then
      begin
        if (oldData.GetValue(NewData.Pairs[i].JSONString.Value).Value) <>
           (NewData.GetValue(NewData.Pairs[i].JSONString.Value).Value) then
        begin
          if (Pos('Content', NewData.Pairs[i].JSONString.Value) = 0) and
             (Pos('Availability', NewData.Pairs[i].JSONString.Value) = 0)
          then Changes.Add('Updated '+NewData.Pairs[i].JSONString.Value+' [ '+NewData.GetValue(NewData.Pairs[i].JSONString.Value).Value+' ]<br />')
          else Changes.Add('Updated '+NewData.Pairs[i].JSONString.Value+'<br />');
        end;
      end
      else
      begin
        if (Pos('Content', NewData.Pairs[i].JSONString.Value) = 0) and
           (Pos('Availability', NewData.Pairs[i].JSONString.Value) = 0)
        then Changes.Add('Added '+NewData.Pairs[i].JSONString.Value+' [ '+NewData.GetValue(NewData.Pairs[i].JSONString.Value).Value+' ]<br />')
        else Changes.Add('Added '+NewData.Pairs[i].JSONString.Value+'<br />');
      end;
    end;

    // Second, see if anything has been removed
    for i := 0 to OldData.Count-1 do
    begin
      if NewData.GetValue(OldData.Pairs[i].JSONString.Value) = nil then
      begin
        if (Pos('Content', OldData.Pairs[i].JSONString.Value) = 0) and
           (Pos('Availability', OldData.Pairs[i].JSONString.Value) = 0)
        then Changes.Add('Removed '+OldData.Pairs[i].JSONString.Value+' [ '+OldData.GetValue(OldData.Pairs[i].JSONString.Value).Value+' ]<br />')
        else Changes.Add('Removed '+OldData.Pairs[i].JSONString.Value+'<br />');
      end;
    end;

    if (newSurveyQuestions <> CurrentSurveyQuestions) then
    begin
      Changes.Add('Changed Survey Questions');
      // Can add more detail here, like question/title that was changed/added/removed
      // tricky to avoid scenario where list is reordered - techincally changes many questions but we don't care about that
      // Basically if nothing has changed in the questions, but the questions have changed then it is the order that has changed.
      // Something for the to-do list.
    end;

    NewSurveyDifferences := Changes.Text;
    Changes.Free;

  end;

  NewData.Free;
  OldData.Free;
end;

procedure TForm1.SurveySelect(SurveyID: String);
var
  ID: String;
  Name: String;
  Group: String;
  Link: String;
  Permissions: String;
  Data: TJSONObject;
  Content: String;
begin
  // We've got a survey?!  Let's go and get the data
  asm
    var table = Tabulator.findTable('#divSurveysSurveyList')[0];
    var row = table.getRow(SurveyID);
    var rowdata = row.getData();

    ID = rowdata.survey_id;
    Name = rowdata.survey_name;
    Group = rowdata.survey_group;
    Link = rowdata.survey_link;
    Permissions = rowdata.permissions;
  end;

  // Populate Basic Options
  CurrentSurveyID := ID;
  edtConfigBasicID.Text := ID;

  CurrentSurveyName := Name;
  edtConfigBasicName.Text := Name;

  CurrentSurveyGroup := Group;
  edtConfigBasicGroup.Text := Group;

  CurrentSurveyLink := Link;
  edtConfigBasicLink.Text := Link;

  if GetQueryParam('Development') <> '' then
  begin
    divConfigBasicTestLink.HTML.Text := '<a class="text-decoration-none text-dark" href="http://localhost:8000/SurveyClient/Project1.html?SurveyID='+edtconfigBasicLink.Text+'&Development=True&Testing=True" target="_blank">http://localhost:8000/SurveyClient/Project1.html?SurveyID='+edtconfigBasicLink.Text+'&Testing=True</a>';
    divConfigBasicLiveLink.HTML.Text := '<a class="text-decoration-none text-dark" href="http://localhost:8000/SurveyClient/Project1.html?SurveyID='+edtconfigBasicLink.Text+'&Development=True" target="_blank">http://localhost:8000/SurveyClient/Project1.html?SurveyID='+edtconfigBasicLink.Text+'</a>';
  end
  else
  begin
    divConfigBasicTestLink.HTML.Text := '<a class="text-decoration-none text-dark" href="https://www.500surveys.ca/?SurveyID='+edtconfigBasicLink.Text+'&Testing=True" target="_blank">https://www.500surveys.ca/?SurveyID='+edtconfigBasicLink.Text+'&Testing=True</a>';
    divConfigBasicLiveLink.HTML.Text := '<a class="text-decoration-none text-dark" href="https://www.500surveys.ca/?SurveyID='+edtconfigBasicLink.Text+'" target="_blank">https://www.500surveys.ca/?SurveyID='+edtconfigBasicLink.Text+'</a>';
  end;
  if Trim(edtconfigBasicLink.Text) <> ''
  then qrcode.text := 'https://www.500surveys.ca/?SurveyID='+edtconfigBasicLink.Text;

  // Deal with the permissions
  CurrentSurveyPermissions := Permissions;


  // Get the rest of the Survey data from the server
  CurrentSurveyData := await(GetSurveyByID(CurrentSurveyID, CurrentSurveyName, CurrentSurveyGroup));
  Data := TJSONObject.ParseJSONValue(CurrentSurveyData) as TJSONObject;

  // Availability
  if Data.GetValue('Availability') <> nil then
  begin
    Content := (Data.GetValue('Availability') as TJSonString).Value;
    asm
      this.tabAvailability.setData(JSON.parse(Content));
      var items = this.tabAvailability.getDataCount();
      var row = this.tabSurveyOptions.getRow(3);
      row.getCell('ITEMS').setValue(items);
    end;
    btnAvailabilityReloadClick(nil);
  end
  else
  begin
    asm
      this.tabAvailability.clearData();
      var row = this.tabSurveyOptions.getRow(3);
      row.getCell('ITEMS').setValue(0);
    end;
  end;

  // Banner
  if Data.GetValue('Banner-Title') <> nil then
  begin
    edtConfigBannerTitle.Text := (Data.GetValue('Banner-Title') as TJSONString).Value;
    edtConfigBannerFooter.Text := (Data.GetValue('Banner-Footer') as TJSonString).Value;
    Content := (Data.GetValue('Banner-Content') as TJSonString).Value;
    asm this.suneditorBannerContent.setContents(Content); end;
  end
  else
  begin
    edtConfigBannerTitle.Text := '';
    edtConfigBannerFooter.Text := '';
    asm this.suneditorBannerContent.setContents(''); end;
  end;

  // Banner-Pre
  if Data.GetValue('Banner-Pre-Title') <> nil then
  begin
    edtConfigBannerPreTitle.Text := (Data.GetValue('Banner-Pre-Title') as TJSONString).Value;
    edtConfigBannerPreFooter.Text := (Data.GetValue('Banner-Pre-Footer') as TJSonString).Value;
    Content := (Data.GetValue('Banner-Pre-Content') as TJSonString).Value;
    asm this.suneditorBannerPreContent.setContents(Content); end;
  end;

  // Banner-Pause
  if Data.GetValue('Banner-Pause-Title') <> nil then
  begin
    edtConfigBannerPauseTitle.Text := (Data.GetValue('Banner-Pause-Title') as TJSONString).Value;
    edtConfigBannerPauseFooter.Text := (Data.GetValue('Banner-Pause-Footer') as TJSonString).Value;
    Content := (Data.GetValue('Banner-Pause-Content') as TJSonString).Value;
    asm this.suneditorBannerPauseContent.setContents(Content); end;
  end;

  // Banner-Post
  if Data.GetValue('Banner-Post-Title') <> nil then
  begin
    edtConfigBannerPostTitle.Text := (Data.GetValue('Banner-Post-Title') as TJSONString).Value;
    edtConfigBannerPostFooter.Text := (Data.GetValue('Banner-Post-Footer') as TJSonString).Value;
    Content := (Data.GetValue('Banner-Post-Content') as TJSonString).Value;
    asm this.suneditorBannerPostContent.setContents(Content); end;
  end;

  // About
  if Data.GetValue('About-Title') <> nil then
  begin
    edtConfigAboutTitle.Text := (Data.GetValue('About-Title') as TJSONString).Value;
    Content := (Data.GetValue('About-Content') as TJSonString).Value;
    asm this.suneditorAboutContent.setContents(Content); end;
  end;

  // Feedback
  if Data.GetValue('Feedback-Title') <> nil then
  begin
    edtConfigFeedbackTitle.Text := (Data.GetValue('Feedback-Title') as TJSONString).Value;
    Content := (Data.GetValue('Feedback-Content') as TJSonString).Value;
    asm this.suneditorFeedbackContent.setContents(Content); end;
  end;

  // Populate the survey info tab for this survey
  btnSurveyInfoReloadClick(nil);

  // Populate the Notes tab for this survey
  btnNotesReloadClick(nil);

  // Populate the change history tab for this survey
  btnChangeHistoryReloadClick(nil);

  // Populate the Permissions tab (top button, not one of the options)
  btnPermissionsReloadClick(nil);

  // Populate the Preview tab (top button, not one of the options)
//  btnPreviewReloadClick(nil);

  // Populate the Preview tab (top button, not one of the options)
  btnQuestionsReloadClick(nil);

  // This has not had any changes to it yet, obviously...
  btnSurveySave.Enabled := False;
  btnSurveyCancel.Enabled := False;

end;

procedure TForm1.SwitchOption(Option: Integer);
begin
  pagecontrolSurveysConfig.TabIndex := Option;
  if Option = 10 then resizeQRCode;
end;

procedure TForm1.tmrCountdownTimer(Sender: TObject);
var
  DisplayTime: String;
begin
  if CountdownTimer = '' then
  begin
    tmrCountdown.Enabled := False;
  end
  else
  begin
    DisplayTime := '';
    asm
      var start  = luxon.DateTime.fromISO(this.CountdownTimer);
      var now = luxon.DateTime.now();
      var coded = start.diff(now).shiftTo('days','hours','minutes','seconds','milliseconds').toObject();
      DisplayTime = coded['days']+'d '+String(coded['hours']).padStart(2,'0')+'h '+String(coded['minutes']).padStart(2,'0')+'m '+String(coded['seconds']).padStart(2,'0')+'s ';
      if (now > start) {
        pas.Unit1.Form1.btnAvailabilityReloadClick(null);
      }
    end;
    labelAvailabilityCountdown.Caption := DisplayTime;
  end;
end;

procedure TForm1.tmrLaunchTimer(Sender: TObject);
begin
  tmrLaunch.Enabled := False;
  asm
    setTimeout(() => { window.dispatchEvent(new Event('resize')); }, 0);
  end;
  Login;
end;

procedure TForm1.TogglePermissions(AccountID, FirstName, LastName: String;
  Access: Integer);
var
  Permissions: String;
begin
  // Invert Access value - we're toggling a check/cross value
  if Access  = 0
  then Permissions := 'YYYYY'
  else Permissions := 'NNNNN';

  await(UpdateTable('ISurveyAdminService.SetSurveyPermissions', [CurrentSurveyID, CurrentSurveyName, CurrentSurveyGroup, AccountID, FirstName, LastName, Permissions], tabPermissions, btnPermissionsReload));

  asm
    this.tabPermissions.selectRow(AccountID);
  end;
end;

procedure TForm1.btnSetPasswordClick(Sender: TObject);
var
  ThisAccountID: String;
  ThisFirstName: String;
  ThisLastName: String;
  ThisEMail: String;
  NewPassword: String;
begin

  asm
    var rows = this.tabAccounts.getSelectedRows();
    if (rows.length > 0) {
      ThisAccountID = rows[0].getCell('account_id').getValue();
      ThisFirstName = rows[0].getCell('first_name').getValue();
      ThisLastName = rows[0].getCell('last_name').getValue();
      ThisEMail = rows[0].getCell('email').getValue();
    }
  end;

  if edtSetPassword.Text <> ''
  then NewPassword := edtSetPassword.Text
  else NewPassword := TGUID.NewGUID.ToString;  // something random

  await(UpdateTable('ISurveyAdminService.SetPassword', [ThisAccountID, ThisFirstName, ThisLastName, ThisEMail, NewPassword], tabAccounts, btnAccountsReload));

  asm
    this.tabAccounts.selectRow(ThisAccountID);
  end;

end;

procedure TForm1.btnSurveyCancelClick(Sender: TObject);
begin
  btnSurveyReloadClick(Sender);
end;

procedure TForm1.WebFormCreate(Sender: TObject);
begin

  // Output Version Information
  asm
    this.AppVer = ProjectName.replaceAll('_','.').substr(ProjectName.indexOf('_')+1);
    this.AppRel = document.lastModified;
  end;

  // Initialize the Activity Log and add the version information
  ActivityLog := TStringList.Create;
  LogActivity('Survey Admin Client App Initializing');
  LogActivity('');
  LogActivity('AppVersion: '+AppVer);
  LogActivity('AppRelease: '+AppRel);
  LogActivity('TMSWEBCore: '+Application.Version);
  LogActivity('');

  // Hopefully the only thing this app outputs to the console
  console.log(ActivityLog.Text);

  // Set Page Title
  Caption := 'Survey Admin Client '+AppVer;

  // Other Defaults
  CurrentSurveyData := '[]';
  CurrentSurveyQuestions := '[]';

  // Set default pages for TWebPageControls
  SwitchOption(0);
  pagecontrolMain.TabIndex := 0;
  pagecontrolSurveys.TabIndex := 0;
  pagecontrolSurveysConfig.TabIndex := 0;




  // Make handling menu buttons a little easier - just define once here
  SetLength(MainMenuButtons, 5);
  MainMenuButtons[0] := btnSurveys;
  MainMenuButtons[1] := btnResponses;
  MainMenuButtons[2] := btnQuestions;
  MainMenuButtons[3] := btnAccounts;
  MainMenuButtons[4] := btnLogging;

  SetLength(SurveyMenuButtons, 4);
  SurveyMenuButtons[0] := btnSurveyOptions;
  SurveyMenuButtons[1] := btnSurveyQuestions;
  SurveyMenuButtons[2] := btnSurveyPermissions;
  SurveyMenuButtons[3] := btnSurveyPreview;

  SetLength(PreviewSizeButtons, 5);
  PreviewSizeButtons[0] := btnPreviewSize0;
  PreviewSizeButtons[1] := btnPreviewSize1;
  PreviewSizeButtons[2] := btnPreviewSize2;
  PreviewSizeButtons[3] := btnPreviewSize3;
  PreviewSizeButtons[4] := btnPreviewSize4;
  PreviewSize := 2; // default = middle size

  SetLength(PreviewSizeButtons, 5);
  PreviewTimeButtons[0] := btnPreviewAuto;
  PreviewTimeButtons[1] := btnPreviewActive;
  PreviewTimeButtons[2] := btnPreviewPre;
  PreviewTimeButtons[3] := btnPreviewPause;
  PreviewTimeButtons[4] := btnPreviewPost;
  PreviewTime := 0; // default = auto


  // Tabulator defaults - apply to all tables
  asm
    Tabulator.defaultOptions.layout = "fitColumns";
    Tabulator.defaultOptions.index = 'ID';
    Tabulator.defaultOptions.selectable = 1;
    Tabulator.defaultOptions.columnHeaderSortMulti = true,
    Tabulator.defaultOptions.clipboard = "copy";
    Tabulator.defaultOptions.placeholder = 'No Data';
    Tabulator.defaultOptions.columnDefaults = {
      headerSortTristate: true,
      resizable: false
    };
  end;



  // Main Survey List
  asm
    this.tabSurveys = new Tabulator("#divSurveysSurveyList",{
      data: JSON.parse(this.CurrentSurveyData),
      groupBy: 'survey_group',
      columnCalcs: "table",
      headerVisible: false,
      index: "survey_id",
      initialSort: [{column:"survey_name", dir:"asc"},{column:"survey_group", dir:"asc"}],
      columns: [
        { title: "ID", field: "survey_id", visible: false },
        { title: "Group", field: "survey_group", visible: false },
        { title: "Survey", field: "survey_name", bottomCalc: "count" },
        { title: "Permissions", field: "permissions", minWidth: 28, width: 28,
            formatter: function(cell, formatterParams, onRendered) {
              var superv = (cell.getValue().substr(0,1) == 'Y');
              var editor = (cell.getValue().substr(1,1) == 'Y');
              var viewer = (cell.getValue().substr(2,1) == 'Y');
              var reader = (cell.getValue().substr(3,1) == 'Y');
              var deletr = (cell.getValue().substr(4,1) == 'Y');

              if (superv) { return '<i class="fa-solid fa-key fa-fw"></i>'; }
              else if (editor) { return '<i class="fa-solid fa-pencil fa-fw"></i>'; }
              else if (viewer) { return '<i class="fa-solid fa-eye fa-fw"></i>'; }
              else if (reader) { return '<i class="fa-solid fa-clipboard fa-fw"></i>'; }
              else { return '<i class="fa-solid fa-ban fa-fw"></i>'; }
            }
        }
      ]
    });
    this.tabSurveys.on('rowClick', function(e,row) {
      row.select();
      pas.Unit1.Form1.SurveySelect(row.getCell("survey_id").getValue());
    });
  end;



  // Main Survey Options
  asm
    var dataSurveyOptions = [
      {"ID":1, "OPTION":"Basic Information" },
      {"ID":11, "OPTION":"Survey QR Code" },
      {"ID":2, "OPTION":"Project Notes" },
      {"ID":3, "OPTION":"Availability" },
      {"ID":4, "OPTION":"Banner Active" },
      {"ID":5, "OPTION":"Banner Pre" },
      {"ID":6, "OPTION":"Banner Pause" },
      {"ID":7, "OPTION":"Banner Post" },
      {"ID":8, "OPTION":"About Page" },
      {"ID":9, "OPTION":"Feedback Page" },
      {"ID":10, "OPTION":"Change History" }
    ]

    this.tabSurveyOptions = new Tabulator("#divSurveysOptions",{
      data: dataSurveyOptions,
      headerVisible: false,
      columns: [
        { title: "ID", field: "ID", visible: false },
        { title: "Options", field: "OPTION", bottomCalc: "count" },
        { title: "Items", field: "ITEMS", width:40, minWidth: 45,
            formatter: function(cell, formatterParams, onRendered) {
              if ((cell.getValue() !== undefined) && (cell.getValue() !== 0)) {
                return '<div class="d-flex justify-content-end align-items-start"><div style="height: 22px; line-height:12px; font-size: 12px;" class="btn btn-sm text-white btn-secondary rounded-pill">'+cell.getValue()+'</div></div>';
              }
              else {
                return '';
              }
            }
        }
      ]
    });
    this.tabSurveyOptions.on('tableBuilt', function(){
      var row = this.getRow(1); // Basic information
      row.select()
    });
    this.tabSurveyOptions.on('rowClick', function(e,row) {
      row.select();
      pas.Unit1.Form1.SwitchOption(row.getCell('ID').getValue()-1);
    });
  end;



  // Survey Availability
  asm
    this.tabAvailability = new Tabulator("#divAvailability",{
      initialSort: [{column:"opening", dir:"asc"}],
      columns: [
        { title: "ID", field: "ID", visible: false },
        { title: "Open", field: "opening", visible: true, width: 200, bottomCalc: "min", bottomCalc: "min", editor: "input",
            cellEdited: function(cell){
              pas.Unit1.Form1.btnAvailabilityReloadClick(null);
              pas.Unit1.Form1.SurveyChanged(null);
            },
            formatter:"datetime",
            formatterParams:{ inputFormat: "iso", outputFormat:"yyyy-MMM-dd (ccc) HH:mm" },
            bottomCalc: function(values, data, calcParams) {
              if (values.length > 0) {
                const arrDates = values.map(str => new Date(str));
                return luxon.DateTime.fromJSDate( new Date(Math.min(...arrDates))).toFormat("yyyy-MMM-dd (ccc) HH:mm");
              }
            }
        },
        { title: "Close", field: "closing", visible: true, width: 200, bottomCalc: "max", bottomCalc: "max", editor: "input",
            cellEdited: function(cell){
              pas.Unit1.Form1.btnAvailabilityReloadClick(null);
              pas.Unit1.Form1.SurveyChanged(null);
            },
            formatter:"datetime",
            formatterParams:{ inputFormat: "iso", outputFormat:"yyyy-MMM-dd (ccc) HH:mm" },
            bottomCalc: function(values, data, calcParams) {
              if (values.length > 0) {
                const arrDates = values.map(str => new Date(str));
                return luxon.DateTime.fromJSDate( new Date(Math.max(...arrDates))).toFormat("yyyy-MMM-dd (ccc) HH:mm");
              }
            }
        },
        { title: "Description", field: "description", visible: true, minWidth: 250, bottomCalc: "count", editor: "input",
            cellEdited: function(cell){ pas.Unit1.Form1.SurveyChanged(null); }
        }
      ]
    });
    this.tabAvailability.on('rowClick', function(e,row) {
      row.select();
//      pas.Unit1.Form1.SurveyChanged(null);
    });
  end;



  // Survey Info
  asm
    this.tabSurveyInfo = new Tabulator("#divSurveyInfo",{
      headerVisible: false,
      columns: [
        { title: "ID", field: "ID", visible: false },
        { title: "Key", field: "KEY", visible: true, width: 200 },
        { title: "Value", field: "VALUE" }
      ]
    });
    this.tabSurveyInfo.on('rowClick', function(e,row) {
      row.select();
    });
  end;



  // Accounts
  asm
    this.tabAccounts = new Tabulator("#divAccounts",{
      index: "account_id",
      columns: [
        { title: "ID", field: "account_id", visible: false },
        { title: "First", field: "first_name", visible: true, bottomCalc: "count", editor: "input",
            cellEdited: function(cell){ pas.Unit1.Form1.AccountChanged(cell.getRow().getCell("account_id").getValue()); }
        },
        { title: "Last", field: "last_name", visible: true, editor: "input",
            cellEdited: function(cell){ pas.Unit1.Form1.AccountChanged(cell.getRow().getCell("account_id").getValue()); }
        },
        { title: "E-Mail", field: "email", widthGrow: 2, visible: true, editor: "input",
            cellEdited: function(cell){ pas.Unit1.Form1.AccountChanged(cell.getRow().getCell("account_id").getValue()); }
        },
        { title: '<i class="fa-solid fa-tag"></i>', field: "openissues", width: 50, visible: true, bottomCalc: "sum" }
      ]
    });
    this.tabAccounts.on('rowClick', function(e,row) {
      row.select();
    });
  end;



  asm
    var caret = '<i class="fa-solid fa-caret-right fa-fw mx-1"></i>';
    var border = 'style="border-radius:4px; padding:2px 1px; margin-left:8px !important; border-color:#000;"';
    var typedata = [
      { "ID": 0,
        "HINT": "Undefined",
        "ICON": "<i class='fa-solid fa-question ms-2 fa-fw'></i>",
        "DESC": "Question not defined",
        "INFO": caret+"Question will be ignored in survey"
      },
      { "ID": 1,
        "HINT": "Opening",
        "ICON": "<i class='fa-solid fa-flag ms-2 fa-fw'></i>",
        "DESC": "Start of survey",
        "INFO": caret+"Triggers start of the overall Survey Timer<br />"+
                caret+"<em>Prev:</em> Defaults to <em>Reload</em><br />"+
                caret+"<em>Next:</em> Defaults to <em>Next</em>"
      },
      { "ID": 2,
        "HINT": "Info",
        "ICON": "<i class='fa-solid fa-scroll ms-2 fa-fw'></i>",
        "DESC": "Static page",
        "INFO": caret+"<em>Prev:</em> Defaults to <em>Prev</em><br />"+
                caret+"<em>Next:</em> Defaults to <em>Next</em>"
      },
      { "ID": 3,
        "HINT": "Closing",
        "ICON": "<i class='fa-solid fa-flag-checkered ms-2 fa-fw'></i>",
        "DESC": "End of survey",
        "INFO": caret+"Triggers finish of the overall survey timer<br />"+
                caret+"<em>Prev:</em> Defaults to <em>Disabled</em><br />"+
                caret+"<em>Next:</em> Defaults to <em>Disabled</em><br />"+
                caret+"<em>Effects:</em> Other effects, Eg: <em>Fireworks</em>"
      },
      { "ID": 4,
        "HINT": "Disabled",
        "ICON": "<i class='fa-solid fa-xmark ms-2 fa-fw'></i>",
        "DESC": "Question will be skipped",
        "INFO": caret+"Question will be skipped in survey</br >"+
                caret+"<em>Prev:</em> Not Used<br />"+
                caret+"<em>Next:</em> Not Used"
      },
      { "ID": 5,
        "HINT": "Redirect",
        "ICON": "<i class='fa-solid fa-signs-post ms-2 fa-fw'></i>",
        "DESC": "Automatically advances to <em>Next</em>",
        "INFO": caret+"<em>Prev:</em> Not used<br />"+
                caret+"<em>Next:</em> Defaults to <em>Next</em>"
      },
      { "ID": 6,
        "HINT": "Random",
        "ICON": "<i class='fa-solid fa-shuffle ms-2 fa-fw'></i>",
        "DESC": "Automatically advances to random <em>Question</em>",
        "INFO": caret+"<em>Prev:</em> Not used<br />"+
                caret+"<em>Next:</em> Not used<br />"+
                caret+"<em>Choices:</em> List of <em>Questions</em><br />"+
                caret+"<em>Weights:</em> List of <em>Weights</em><br />"+
                caret+"Eg: Choices: Page 1, Page 2 Weights: 0.75, 0.25"
      },
      { "ID": 7,
        "HINT": "Text Multi",
        "ICON": "<i class='fa-solid fa-pencil ms-2 fa-fw'></i>",
        "DESC": "General freeform text entry field",
        "INFO": caret+"<em>Prev:</em> Defaults to <em>Prev</em><br />"+
                caret+"<em>Next:</em> Defaults to <em>Next</em><br />"+
                caret+"<em>Chars:</em> Maximum number of characters<br />"+
                caret+"<em>Lines:</em> Number of input lines to show"
      },
      { "ID": 8,
        "HINT": "Text Single",
        "ICON": "<i class='fa-solid fa-pencil fa-fw fa-border' "+border+"></i>",
        "DESC": "Enter a single line of text",
        "INFO": caret+"<em>Prev:</em> Defaults to <em>Prev</em><br />"+
                caret+"<em>Next:</em> Defaults to <em>Next</em><br />"+
                caret+"<em>Max:</em> Maximum number of characters"
      },
      { "ID": 9,
        "HINT": "Pick One",
        "ICON": "<i class='fa-solid fa-circle-check ms-2 fa-fw'></i>",
        "DESC": "Select exactly one <em>Item</em> from a list",
        "INFO": caret+"<em>Prev:</em> Defaults to <em>Prev</em><br />"+
                caret+"<em>Next:</em> Defaults to <em>Next</em>"
      },
      { "ID": 10,
        "HINT": "Pick One+",
        "ICON": "<i class='fa-solid fa-circle-check fa-fw fa-border' "+border+"></i>",
        "DESC": "Select exactly one <em>Item</em> plus an <em>Other</em> field",
        "INFO": caret+"<em>Prev:</em> Defaults to <em>Prev</em><br />"+
                caret+"<em>Next:</em> Defaults to <em>Next</em>"
      },
      { "ID": 11,
        "HINT": "Pick Many",
        "ICON": "<i class='fa-solid fa-square-check ms-2 fa-fw'></i>",
        "DESC": "Select zero or more items from a list",
        "INFO": caret+"<em>Prev:</em> Defaults to <em>Prev</em><br />"+
                caret+"<em>Next:</em> Defaults to <em>Next</em><br />"+
                caret+"<em>Min:</em> Minimum selection count<br />"+
                caret+"<em>Max:</em> Maximum selection count"
      },
      { "ID": 12,
        "HINT": "Pick Many+",
        "ICON": "<i class='fa-solid fa-square-check fa-fw fa-border' "+border+"></i>",
        "DESC": "Select zero or more items plus an <em>Other</em> field",
        "INFO": caret+"<em>Prev:</em> Defaults to <em>Prev</em><br />"+
                caret+"<em>Next:</em> Defaults to <em>Next</em><br />"+
                caret+"<em>Min:</em> Minimum selection count<br />"+
                caret+"<em>Max:</em> Maximum selection count"
      },
      { "ID": 13,
        "HINT": "Order Lst",
        "ICON": "<i class='fa-solid fa-bars-staggered ms-2 fa-fw'></i>",
        "DESC": "Order elements of a list",
        "INFO": caret+"<em>Prev:</em> Defaults to <em>Prev</em><br />"+
                caret+"<em>Next:</em> Defaults to <em>Next</em>"
      },
      { "ID": 14,
        "HINT": "Order List+",
        "ICON": "<i class='fa-solid fa-bars-staggered fa-fw fa-border' "+border+"></i>",
        "DESC": "Order elements plus an <em>Other</em> field",
        "INFO": caret+"<em>Prev:</em> Defaults to <em>Prev</em><br />"+
                caret+"<em>Next:</em> Defaults to <em>Next</em>"
      }
    ];
    window.typedata = typedata;
  end;


  asm
    this.tabQuestionTypes = new Tabulator("#panelQuestionTypes",{
      data: typedata,
      headerVisible: false,
      columns: [
        { title: "ID", field: "ID", visible: false },
        { title: "ICON", field: "ICON", visible: true, formatter: "html", width: 43, minWidth: 43, maxWidth: 43 },
        { title: "HINT", field: "HINT", visible: true, width:100 },
        { title: "DESC", field: "DESC", visible: true, formatter: "html" },
        { title: "INFO", field: "INFO", visible: false }
      ]
    });
    this.tabQuestionTypes.on("rowClick", function(e,row){
      row.select();
      var id = row.getCell("ID").getValue();
      var icon = row.getCell("ICON").getValue();
      var hint = row.getCell("HINT").getValue().slice();
      var desc = row.getCell("DESC").getValue().slice();
      var info = row.getCell("INFO").getValue().slice();
      var qtable = pas.Unit1.Form1.tabQuestions;
      var qrows = qtable.getSelectedRows();
      if (qrows.length > 0) {
        var qid = qrows[0].getCell('question_id').getValue();
        pas.Unit1.Form1.NewQuestionTypeSelected(qid, id, icon, hint, desc, info, true);
      }
    });


  end;



  // Questions
  asm
    this.tabQuestions = new Tabulator("#divQuestions",{
      data: JSON.parse(this.CurrentSurveyQuestions),
      headerVisible: false,
      index: "question_id",
      movableRows: true,
      columns: [
        { title: "ID", field: "question_id", visible: false },
        { title: "Type", field: "question_type", visible: true, width: 40, bottomCalc: "count",
            formatter: function(cell, formatterParams, onRendered) {
              var typeicon = typedata[0].ICON;
              var typehint = typedata[0].HINT;
              if (cell !== undefined) {
                typeicon = typedata[parseInt(cell.getValue())].ICON;
                typehint = typedata[parseInt(cell.getValue())].HINT;
              }
              cell.getElement().setAttribute('title', typehint);
              return typeicon;
            }
        },
        { title: "Name", field: "question_name", visible: true },
        { title: "Title", field: "question_title", visible: false },
        { title: "Footer", field: "question_footer", visible: false },
        { title: "Options", field: "question_options", visible: false },
        { title: "Question", field: "question", visible: false }
      ]
    });
    this.tabQuestions.on('rowClick', function(e,row) {
      row.select();
      pas.Unit1.Form1.QuestionSelect(row.getCell('question_id').getValue());
    });
    this.tabQuestions.on('rowMoved', function(e,row) {
      pas.Unit1.Form1.SurveyChanged(null);
    });
  end;

  // Library
  asm

    this.tabLibrary = new Tabulator("#divLibraryList",{
      initialSort: [{column:"library_name", dir:"desc"}],
      headerVisible: false,
      index: "library_id",
      columns: [
        { title: "ID", field: "library_id", visible: false },
        { title: "library Type", field: "library_type", visible: true, width: 45, bottomCalc: "count",
            formatter: function(cell, formatterParams, onRendered) {
              var typeicon = typedata[0];
              if (cell !== undefined) {
                typeicon = typedata[parseInt(cell.getValue())];
              }
              return typeicon;
            }
        },
        { title: "library Name", field: "library_name", visible: true }
      ]
    });
    this.tabLibrary.on('rowClick', function(e,row) {
      row.select();
    });
  end;


  // Notes
  asm
    this.tabNotes = new Tabulator("#divNotes",{
      initialSort: [{column:"utc_stamp", dir:"desc"}],
      index: "note_id",
      resizableRows: true,
      columns: [
        { title: "ID", field: "note_id", visible: false },
        { title: "When", field: "utc_stamp", visible: true, width: 200, bottomCalc: "count",
            formatterPrint: false,
            formatter: function(cell, formatterParams, onRendered) {
              var start  = luxon.DateTime.fromFormat(cell.getValue(), "yyyy-MM-dd HH:mm:ss.SSS");
              var finish = luxon.DateTime.now();
              var coded = finish.diff(start).shiftTo('years','months','days','hours','minutes','seconds').toObject();
              var human = '';
              var i = 0;
              for (var dur in coded) {
                if ((coded[dur] !== 0) && (dur !== 'seconds') && (i < 2)) {
                  if (coded[dur] == 1) {
                    human += coded[dur]+' '+dur.slice(0,-1)+' ';
                  } else {
                    human += coded[dur]+' '+dur+' ';
                  }
                  i++;
                }
              }
              if (human == '') {
                human = 'just now'
              } else {
                human += 'ago'
              }
              return start.toFormat('yyyy-MMM-dd (ccc) HH:mm')+'<br /><span class="text-secondary">'+human+'</span>';
            }
        },
        { title: "Who", field: "first_name", visible: true, width: 200, resizable: true,
            formatter: function(cell, formatterParams, onRendered) {
              return cell.getValue()+' '+cell.getRow().getCell('last_name').getValue()+'<br />'+
                     '<a href="mailto:'+cell.getRow().getCell('email').getValue()+'">'+cell.getRow().getCell('email').getValue()+'</a>';
            }
         },
        { title: "Last Name", field: "last_name", visible: false },
        { title: "E-Mail", field: "email", visible: false },
        { title: "Notes", field: "note", visible: true, minWidth: 250, resizable: true, cssClass: "HTMLOverflow", formatter: "html" }
      ]
    });
    this.tabNotes.on('rowClick', function(e,row) {
      row.select();
    });
  end;



  // Survey Permissions
  asm
    this.tabPermissions = new Tabulator("#divPermissions",{
      index: "account_id",
      columns: [
        { title: "ID", field: "account_id", visible: false },
        { title: '<i class="fa-solid fa-eye fa-fw fa-lg "></i>', field: "access", width: 60, bottomCalc: "count",
            formatter: "tickCross",
            formatterParams: {
              allowEmpty: true,
              allowTruthy: true,
              tickElement: "<i class='fa-solid fa-check fa-fw fa-lg text-success'></i>",
              crossElement: "<i class='fa-solid fa-times fa-fw fa-lg text-danger'></i>"
            },
            cellClick: function(e, cell) {
              pas.Unit1.Form1.TogglePermissions(cell.getRow().getCell('account_id').getValue(),
                                                cell.getRow().getCell('first_name').getValue(),
                                                cell.getRow().getCell('last_name').getValue(),
                                                cell.getValue());
            },
        },
        { title: "First", field: "first_name"},
        { title: "Last", field: "last_name" },
        { title: "EMail", field: "email", widthGrow: 2},
        { title: "Permissions", field: "permissions", width:200 }
      ]
    });
    this.tabPermissions.on('rowClick', function(e,row) {
      row.select();
    });
  end;



  // Issues
  asm
    this.tabIssues = new Tabulator("#divIssues",{
      initialSort: [{column:"utc_stamp", dir:"desc"}],
      resizableRows: true,
      index: "issue_id",
      columns: [
        { title: "ID", field: "issue_id", visible: false },
        { title: "When", field: "utc_stamp", visible: true, width: 200, bottomCalc: "count",
            formatterPrint: false,
            formatter: function(cell, formatterParams, onRendered) {
              if (cell.getValue() !== undefined) {
                var start  = luxon.DateTime.fromFormat(cell.getValue(), "yyyy-MM-dd HH:mm:ss.SSS");
                var finish = luxon.DateTime.now();
                var coded = finish.diff(start).shiftTo('years','months','days','hours','minutes','seconds').toObject();
                var human = '';
                var i = 0;
                for (var dur in coded) {
                  if ((coded[dur] !== 0) && (dur !== 'seconds') && (i < 2)) {
                    if (coded[dur] == 1) {
                      human += coded[dur]+' '+dur.slice(0,-1)+' ';
                     } else {
                      human += coded[dur]+' '+dur+' ';
                    }
                    i++;
                  }
                }
                if (human == '') {
                  human = 'just now'
                } else {
                  human += 'ago'
                }
                return start.toFormat('yyyy-MMM-dd (ccc) HH:mm')+'<br /><span class="text-secondary">'+human+'</span>';
              }
              else {
                return '';
              }
            }
        },
        { title: "Who", field: "first_name", visible: true, width: 200, resizable: true,
            formatter: function(cell, formatterParams, onRendered) {
              return cell.getValue()+' '+cell.getRow().getCell('last_name').getValue()+'<br />'+
                     '<a href="mailto:'+cell.getRow().getCell('email').getValue()+'">'+cell.getRow().getCell('email').getValue()+'</a>';
            }
         },
        { title: "Last Name", field: "last_name", visible: false },
        { title: "E-Mail", field: "email", visible: false },
        { title: "Category", field: "category", visible: true, width: 200, resizable: true,
            formatterPrint: false,
            formatter: function(cell, formatterParams, onRendered) {
              var highlight = '';
              var rescolor = 'text-secondary';
              var resolution = cell.getRow().getCell('resolution').getValue();
              if (resolution !== undefined) {
                if (resolution.indexOf('New') > -1) { highlight = 'var(--bs-warning)'; };
                if (resolution.indexOf('In Progress') > -1) { highlight = 'var(--bs-primary)'; rescolor = 'text-info';};
                if (resolution.indexOf('Closed') > -1) { highlight = 'var(--bs-success)'; rescolor = 'text-white'};
                if (highlight !== '') { cell.getElement().style.backgroundColor = highlight; }
              }
              return cell.getValue()+'<br />'+
                     '<span class="'+rescolor+'">'+cell.getRow().getCell("resolution").getValue()+'</span>'+
                     ' [ '+(parseInt(cell.getRow().getCell("activitylog_size").getValue()/1024)+1)+' kB ]';
            }
         },
        { title: "Resolution", field: "resolution", visible: false  },
        { title: "Log Size", field: "activitylog_size", visible: false  },
        { title: "Issue", field: "issue", visible: true, resizable: true, cssClass: "HTMLOverflow", formatter: "html" }
      ]
    });
    this.tabIssues.on('rowClick', function(e,row) {
      row.select();
    });
  end;



  // Responses
  asm
    this.tabResponses = new Tabulator("#divResponses",{
      resizableRows: true,
      layout: "fitData",
      columns: [
        { title: "SurveyID", field: "SurveyID", visible: false },
        { title: "Group", field: "SurveyGroup", visible: true, minWidth: 100, headerFilter: true, bottomCalc: "count", resizable: true },
        { title: "Name", field: "SurveyName", visible: true, minWidth: 100, headerFilter: true, resizable: true },
        { title: "Time", field: "SurveyTime", visible: true, minWidth: 100, headerFilter: true, resizable: true },
        { title: "Question", field: "QuestionName", visible: true, minWidth: 100, headerFilter: true, resizable: true },
        { title: "Response", field: "Response", visible: true, minWidth: 100, headerFilter: true, resizable: true }
      ]
    });
  end;



  // Feedback - eerily similar to Feedback
  asm
    this.tabFeedback = new Tabulator("#divFeedback",{
      initialSort: [{column:"utc_stamp", dir:"desc"}],
      resizableRows: true,
      index: "feedback_id",
      columns: [
        { title: "ID", field: "feedback_id", visible: false },
        { title: "When", field: "utc_stamp", visible: true, width: 200, bottomCalc: "count",
            formatterPrint: false,
            formatter: function(cell, formatterParams, onRendered) {
              if (cell.getValue() !== undefined) {
                var start  = luxon.DateTime.fromFormat(cell.getValue(), "yyyy-MM-dd HH:mm:ss.SSS");
                var finish = luxon.DateTime.now();
                var coded = finish.diff(start).shiftTo('years','months','days','hours','minutes','seconds').toObject();
                var human = '';
                var i = 0;
                for (var dur in coded) {
                  if ((coded[dur] !== 0) && (dur !== 'seconds') && (i < 2)) {
                    if (coded[dur] == 1) {
                      human += coded[dur]+' '+dur.slice(0,-1)+' ';
                     } else {
                      human += coded[dur]+' '+dur+' ';
                    }
                    i++;
                  }
                }
                if (human == '') {
                  human = 'just now'
                } else {
                  human += 'ago'
                }
                return start.toFormat('yyyy-MMM-dd (ccc) HH:mm')+'<br /><span class="text-secondary">'+human+'</span>';
              }
              else {
                return '';
              }
            }
        },
        { title: "Survey Name", field: "survey_name", visible: true, width: 200, resizable: true,
            formatter: function(cell, formatterParams, onRendered) {
              return cell.getRow().getCell('survey_group').getValue()+'<br />'+cell.getValue();
            }
        },
        { title: "Survey Group", field: "survey_group", visible: false },
        { title: "Stage", field: "stage", visible: true, width: 200, resizable: true,
            formatterPrint: false,
            formatter: function(cell, formatterParams, onRendered) {
              var highlight = '';
              var rescolor = 'text-secondary';
              var resolution = cell.getRow().getCell('resolution').getValue();
              if (resolution !== undefined) {
                if (resolution.indexOf('New') > -1) { highlight = 'var(--bs-warning)'; };
                if (resolution.indexOf('In Progress') > -1) { highlight = 'var(--bs-primary)'; rescolor = 'text-info';};
                if (resolution.indexOf('Closed') > -1) { highlight = 'var(--bs-success)'; rescolor = 'text-white'};
                if (highlight !== '') { cell.getElement().style.backgroundColor = highlight; }
              }
              return cell.getValue()+'<br />'+
                     '<span class="'+rescolor+'">'+cell.getRow().getCell("resolution").getValue()+'</span>'+
                     ' [ '+(parseInt(cell.getRow().getCell("activitylog_size").getValue()/1024)+1)+' kB ]';
            }
         },
        { title: "Resolution", field: "resolution", visible: false  },
        { title: "Log Size", field: "activitylog_size", visible: false  },
        { title: "Feedback", field: "feedback", visible: true, resizable: true, cssClass: "HTMLOverflow", formatter: "html" }
      ]
    });
    this.tabFeedback.on('rowClick', function(e,row) {
      row.select();
    });
  end;



  // Change History Log
  asm
    this.tabChangeHistory = new Tabulator("#divChangeHistory",{
      initialSort: [{column:"utc_stamp", dir:"desc"}],
      columns: [
        { title: "ID", field: "ID", visible: false },
        { title: "When", field: "utc_stamp", visible: true, width: 200, bottomCalc: "count",
            formatterPrint: false,
            formatter: function(cell, formatterParams, onRendered) {
              var start  = luxon.DateTime.fromFormat(cell.getValue(), "yyyy-MM-dd HH:mm:ss.SSS");
              var finish = luxon.DateTime.now();
              var coded = finish.diff(start).shiftTo('years','months','days','hours','minutes','seconds').toObject();
              var human = '';
              var i = 0;
              for (var dur in coded) {
                if ((coded[dur] !== 0) && (dur !== 'seconds') && (i < 2)) {
                  if (coded[dur] == 1) {
                    human += coded[dur]+' '+dur.slice(0,-1)+' ';
                  } else {
                    human += coded[dur]+' '+dur+' ';
                  }
                  i++;
                }
              }
              if (human == '') {
                human = 'just now'
              } else {
                human += 'ago'
              }
              return start.toFormat('yyyy-MMM-dd (ccc) HH:mm')+'<br /><span class="text-secondary">'+human+'</span>';
            }
        },
        { title: "Who", field: "first_name", visible: true, width: 200, resizable: true,
            formatter: function(cell, formatterParams, onRendered) {
              return cell.getValue()+' '+cell.getRow().getCell('last_name').getValue()+'<br />'+
                     '<a href="mailto:'+cell.getRow().getCell('email').getValue()+'">'+cell.getRow().getCell('email').getValue()+'</a>';
            }
         },
        { title: "Last Name", field: "last_name", visible: false },
        { title: "E-Mail", field: "email", visible: false },
        { title: "What", field: "change", visible: true, minWidth: 250, resizable: true, formatter: "html" }
      ]
    });
    this.tabChangeHistory.on('rowClick', function(e,row) {
      row.select();
    });
  end;



  // Server Log
  asm
    var distinctCount = function(values, data, calcParams) {
                          return new Set(values).size;
                        }
    this.tabLogging = new Tabulator("#divLogging",{
      printAsHtml: true,
      columns: [
        { title: "ID", field: "ID", visible: false },
        { title: "Timestamp", field: "utc_stamp", visible: true, width: 200, bottomCalc: "count", headerFilter: true },
        { title: "IP Address", field: "ipaddr", visible: true, width: 150, resizable: true, headerFilter: true, bottomCalc: distinctCount },
        { title: "Endpoint", field: "endpoint", visible: true, minWidth: 250, widthGrow:4,resizable: true, headerFilter: true, bottomCalc: distinctCount,
            formatterPrint: false,
            formatter: function(cell, formatterParams, onRendered) {
              var highlight = '';
              if (cell.getValue() !== undefined) {
                if (cell.getValue().indexOf(' Started') > -1) { highlight = 'yellow'; };
                if (cell.getValue().indexOf('Database Created') > -1) { highlight = 'yellow'; };
                if (cell.getValue().indexOf('Version: ') > -1 ) { highlight = 'yellow'; };
                if (cell.getValue().indexOf('Release: ') > -1) { highlight = 'yellow'; };
                if (cell.getValue().indexOf('Login [ Successful') > -1) { highlight = 'lightgreen'; };
                if (cell.getValue().indexOf('Login [ Failed') > -1) { highlight = 'lightpink'; };
                if (highlight !== '') { cell.getElement().style.backgroundColor = highlight; }
              }
              return cell.getValue();
            }
        },
        { title: "First Name", field: "first_name", visible: true, minWidth: 100, resizable: true, headerFilter: true, bottomCalc: distinctCount },
        { title: "Last Name", field: "last_name", visible: true, minWidth: 100, resizable: true, headerFilter: true, bottomCalc: distinctCount },
        { title: "E-Mail", field: "email", visible: true, minWidth: 200, widthGrow: 2, resizable: true, headerFilter:true, bottomCalc: distinctCount }
      ]
    });
    this.tabLogging.on('rowClick', function(e,row) {
      row.select();
    });
  end;



  // HTML Editors (SunEditor + CodeMirror)
  asm
    var SunEditorDefaultOptions = {
      mode: "classic",
      resizingBar: true,
      charCounter: true,
      charCounterLabel: "Character Count: ",
      showPathLabel: true,
      addTagsWhitelist: "i|svg|label|input|select|option|textarea",
      attributesWhitelist: {
        input: "type|id|value|name|style|class",
        label: "id|for|style|class",
        textarea: "id|maxlength|rows|cols|style|class|resize"
      },
      codeMirror: window.CodeMirror,
//        src: CodeMirror,
//        options: {
//          theme: "custom",
//          scrollbarStyle: "overlay"
//        }
//      },
      katex: katex,
      font: [
        'Roboto',
        'Roboto Condensed',
        'Cairo'
      ],
      buttonList: [
        ['undo', 'redo'],
        ['font', 'fontSize', 'formatBlock'],
        ['paragraphStyle', 'blockquote','horizontalRule'],
        ['bold', 'underline', 'italic', 'strike', 'subscript', 'superscript', 'math'],
        ['fontColor', 'hiliteColor', 'textStyle', 'removeFormat'],
        ['list', 'outdent', 'indent', 'align', 'lineHeight'],
        ['table', 'link', 'image', 'video', 'audio'],
        ['fullScreen','showBlocks', 'codeView', 'print']
      ],
      icons: {
        undo: '<span><i class="fas fa-undo"></i></span>',
        save: '<span class="HTMLSave" style="margin-top: -2px;"><i class="fas fa-check fa-xl"></i></span>',
        redo: '<span><i class="fas fa-redo"></i></span>',

        paragraph_style: '<span><i class="fas fa-paragraph"></i></span>',
        blockquote: '<span><i class="fas fa-quote-left"></i></span>',
//        horizontal_rule: '<span><i class="fas fa-horizontal-rule"></i></span>',

        bold: '<span><i class="fas fa-bold"></i></span>',
        underline: '<span><i class="fas fa-underline"></i></span>',
        italic: '<span><i class="fas fa-italic"></i></span>',
        strike: '<span><i class="fas fa-strikethrough"></i></span>',
        subscript: '<span><i class="fas fa-subscript"></i></span>',
        superscript: '<span><i class="fas fa-superscript"></i></span>',
        math: '<span><i class="fas fa-square-root-variable"></i></span>',

        font_color: '<span><i class="fas fa-pen-nib"></i></span>',
        highlight_color: '<span><i class="fas fa-highlighter"></i></span>',
//        text_style: '<span><i class="fas fa-text"></i></span>',
        erase: '<span><i class="fas fa-eraser"></i></span>',

        list_bullets: '<span><i class="fas fa-list"></i></span>',
        list_number: '<span><i class="fas fa-list-ol"></i></span>',
        outdent: '<span><i class="fas fa-outdent"></i></span>',
        indent: '<span><i class="fas fa-indent"></i></span>',
        align_left: '<span><i class="fas fa-align-left"></i></span>',
        align_right: '<span><i class="fas fa-align-right"></i></span>',
        align_justify: '<span><i class="fas fa-align-justify"></i></span>',
        align_center: '<span><i class="fas fa-align-center"></i></span>',
        line_height: '<span><i class="fas fa-text-height"></i></span>',

        table: '<span><i class="fas fa-table"></i></span>',
        link: '<span><i class="fas fa-link"></i></span>',
        image: '<span><i class="fas fa-image"></i></span>',
        video: '<span><i class="fas fa-video"></i></span>',
        audio: '<span><i class="fas fa-microphone"></i></span>',

        expansion: '<span><i class="fas fa-expand"></i></span>',
        reduction: '<span><i class="fas fa-compress"></i></span>',
        show_blocks: '<span><i class="fas fa-tasks-alt"></i></span>',
        code_view: '<span><i class="fas fa-code"></i></span>',
        print: '<span><i class="fas fa-print"></i></span>'
      }
    };

    SunEditorDefaultOptions["resizingBarContainer"] = "#divConfigBannerContentFooter";
    SunEditorDefaultOptions["toolbarContainer"] = "#divConfigBannerContentHeader";
    this.suneditorBannerContent = SUNEDITOR.create('divConfigBannerContentText', SunEditorDefaultOptions );
    this.suneditorBannerContent.onChange = function (contents, core) { pas.Unit1.Form1.SurveyChanged(null); };

    SunEditorDefaultOptions["resizingBarContainer"] = "#divConfigBannerPreContentFooter";
    SunEditorDefaultOptions["toolbarContainer"] = "#divConfigBannerPreContentHeader";
    this.suneditorBannerPreContent = SUNEDITOR.create('divConfigBannerPreContentText', SunEditorDefaultOptions );
    this.suneditorBannerPreContent.onChange = function (contents, core) { pas.Unit1.Form1.SurveyChanged(null); };

    SunEditorDefaultOptions["resizingBarContainer"] = "#divConfigBannerPauseContentFooter";
    SunEditorDefaultOptions["toolbarContainer"] = "#divConfigBannerPauseContentHeader";
    this.suneditorBannerPauseContent = SUNEDITOR.create('divConfigBannerPauseContentText', SunEditorDefaultOptions );
    this.suneditorBannerPauseContent.onChange = function (contents, core) { pas.Unit1.Form1.SurveyChanged(null); };

    SunEditorDefaultOptions["resizingBarContainer"] = "#divConfigBannerPostContentFooter";
    SunEditorDefaultOptions["toolbarContainer"] = "#divConfigBannerPostContentHeader";
    this.suneditorBannerPostContent = SUNEDITOR.create('divConfigBannerPostContentText', SunEditorDefaultOptions );
    this.suneditorBannerPostContent.onChange = function (contents, core) { pas.Unit1.Form1.SurveyChanged(null); };

    SunEditorDefaultOptions["resizingBarContainer"] = "#divConfigAboutContentFooter";
    SunEditorDefaultOptions["toolbarContainer"] = "#divConfigAboutContentHeader";
    this.suneditorAboutContent = SUNEDITOR.create('divConfigAboutContentText', SunEditorDefaultOptions );
    this.suneditorAboutContent.onChange = function (contents, core) { pas.Unit1.Form1.SurveyChanged(null); };

    SunEditorDefaultOptions["resizingBarContainer"] = "#divConfigFeedbackContentFooter";
    SunEditorDefaultOptions["toolbarContainer"] = "#divConfigFeedbackContentHeader";
    this.suneditorFeedbackContent = SUNEDITOR.create('divConfigFeedbackContentText', SunEditorDefaultOptions );
    this.suneditorFeedbackContent.onChange = function (contents, core) { pas.Unit1.Form1.SurveyChanged(null); };

    SunEditorDefaultOptions["resizingBarContainer"] = "#divQuestionContentFooter";
    SunEditorDefaultOptions["toolbarContainer"] = "#divQuestionContentHeader";
    this.suneditorQuestionContent = SUNEDITOR.create('divQuestionContentText', SunEditorDefaultOptions );
    this.suneditorQuestionContent.onChange = function (contents, core) { pas.Unit1.Form1.QuestionChanged(null); };

//    SunEditorDefaultOptions["resizingBarContainer"] = "#divLibraryContentFooter";
//    SunEditorDefaultOptions["toolbarContainer"] = "#divLibraryContentHeader";
//    this.suneditorLibraryContent = SUNEDITOR.create('divLibraryContentText', SunEditorDefaultOptions );
//    this.suneditorLibraryContent.onChange = function (contents, core) { pas.Unit1.Form1.SurveyChanged(null); };
  end;



  // InteractJS Setup for .draggable and .resize-drag
  asm
    // This is used to drag around popup forms
    function draggableListener (event) {
      var target = event.target
      var x = (parseFloat(target.getAttribute('data-x')) || 0) + event.dx
      var y = (parseFloat(target.getAttribute('data-y')) || 0) + event.dy
      target.style.transform = 'translate(' + x + 'px, ' + y + 'px)'
      target.setAttribute('data-x', x)
      target.setAttribute('data-y', y)
    }
    window.draggableListener = draggableListener

    interact('.draggable')
      .draggable({
        listeners: { move: window.draggableListener },
        inertia: true,
      })

    interact('.resize-drag')
      .resizable({
        edges: { left: true, right: true, bottom: true, top: true },
        margin:20, // size of resizing boundary interaction area
        listeners: {
          move (event) {
            var target = event.target
            var x = (parseFloat(target.getAttribute('data-x')) || 0)
            var y = (parseFloat(target.getAttribute('data-y')) || 0)
            target.style.width = event.rect.width + 'px'
            target.style.height = event.rect.height + 'px'
            x += event.deltaRect.left
            y += event.deltaRect.top
            target.style.transform = 'translate(' + x + 'px,' + y + 'px)'
            target.setAttribute('data-x', x)
            target.setAttribute('data-y', y)
          }
        }
      })
      .draggable({
        listeners: { move: window.draggableListener },
        ignoreFrom: '.sun-editor',
      })
      .pointerEvents({
        ignoreFrom: '.sun-editor'
      });

  end;

end;

procedure TForm1.WebFormResize(Sender: TObject);
begin
  asm
    setTimeout(() => { window.dispatchEvent(new Event('resize')); pas.Unit1.Form1.ResizeQRCode(); }, 0);
  end;
end;

procedure TForm1.WebFormShow(Sender: TObject);
begin
  tmrLaunch.Enabled := True;
  asm
    setTimeout(() => { window.dispatchEvent(new Event('resize')); }, 0);
  end;
end;

end.

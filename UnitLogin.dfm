object LoginForm: TLoginForm
  Width = 375
  Height = 214
  Align = alClient
  Caption = 'Login'
  Color = clNone
  CSSLibrary = cssBootstrap
  ElementClassName = 'border border-0 LoginForm'
  ElementFont = efCSS
  ElementPosition = epIgnore
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  Shadow = False
  OnKeyDown = edtLoginEMailKeyDown
  OnResize = WebFormShow
  OnShow = WebFormShow
  object divLoginMain: TWebHTMLDiv
    Left = 5
    Top = 5
    Width = 365
    Height = 202
    ElementClassName = 'draggable rounded border border-2 border-danger bg-dark'
    ElementID = 'divLoginMain'
    ChildOrder = 2
    ElementFont = efCSS
    Role = ''
    object labelLoginProgress: TWebLabel
      AlignWithMargins = True
      Left = 8
      Top = 116
      Width = 349
      Height = 32
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 0
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Please Login'
      ElementClassName = 
        'LoginProgress rounded border border-secondary border-2 bg-dark t' +
        'ext-white'
      ElementID = 'labelLoginProgress'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      Layout = tlCenter
      ShowAccelChar = False
      WidthPercent = 100.000000000000000000
      OnClick = btnLoginClick
      ExplicitTop = 118
    end
    object WebHTMLDiv3: TWebHTMLDiv
      AlignWithMargins = True
      Left = 8
      Top = 36
      Width = 349
      Height = 32
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 0
      ElementClassName = 'overflow-hidden rounded border border-secondary bg-secondary'
      ElementID = 'divLoginEMailHolder'
      Align = alTop
      ChildOrder = 1
      ElementFont = efCSS
      Role = ''
      object WebHTMLDiv4: TWebHTMLDiv
        Left = 0
        Top = 0
        Width = 100
        Height = 32
        ElementClassName = 'ConfigLoginLabel'
        ElementID = 'divLoginUsernameLabel'
        Align = alLeft
        ElementFont = efCSS
        HTML.Strings = (
          'E-Mail Address')
        Role = ''
      end
      object edtLoginEMail: TWebEdit
        AlignWithMargins = True
        Left = 104
        Top = 3
        Width = 242
        Height = 26
        Margins.Left = 4
        Align = alClient
        AutoCompletion = acEmail
        ChildOrder = 1
        ElementClassName = 'LoginEdit rounded-1 ps-2 border border-0'
        ElementID = 'edtLoginEMail'
        ElementFont = efCSS
        HeightPercent = 100.000000000000000000
        MaxLength = 50
        SpellCheck = False
        WidthPercent = 100.000000000000000000
        OnKeyDown = edtLoginEMailKeyDown
      end
    end
    object divLoginPasswordHolder: TWebHTMLDiv
      AlignWithMargins = True
      Left = 8
      Top = 76
      Width = 349
      Height = 32
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 0
      ElementClassName = 'overflow-hidden rounded border border-secondary bg-secondary'
      ElementID = 'divLoginPasswordHolder'
      Align = alTop
      ChildOrder = 1
      ElementFont = efCSS
      Role = ''
      object WebHTMLDiv2: TWebHTMLDiv
        Left = 0
        Top = 0
        Width = 100
        Height = 32
        ElementClassName = 'ConfigLoginLabel'
        ElementID = 'divLoginPasswordLabel'
        Align = alLeft
        ElementFont = efCSS
        HTML.Strings = (
          'Password')
        Role = ''
      end
      object edtLoginPassword: TWebEdit
        AlignWithMargins = True
        Left = 104
        Top = 3
        Width = 242
        Height = 26
        Margins.Left = 4
        Align = alClient
        AutoCompletion = acCurrentPassword
        ChildOrder = 1
        ElementClassName = 'LoginEdit rounded-1 ps-2 border border-0'
        ElementID = 'edtLoginPassword'
        ElementFont = efCSS
        HeightPercent = 100.000000000000000000
        MaxLength = 50
        PasswordChar = '#'
        SpellCheck = False
        WidthPercent = 100.000000000000000000
        OnKeyDown = edtLoginEMailKeyDown
      end
    end
    object divLoginTitle: TWebHTMLDiv
      Left = 0
      Top = 0
      Width = 365
      Height = 28
      ElementClassName = 'bg-danger text-white'
      ElementID = 'divLoginTitle'
      Align = alTop
      ChildOrder = 2
      ElementFont = efCSS
      HTML.Strings = (
        
          '<div style="width:100%; text-align:center;">Survey Admin Client ' +
          'Login</div>')
      Role = ''
    end
    object divLoginButtons: TWebHTMLDiv
      AlignWithMargins = True
      Left = 4
      Top = 156
      Width = 357
      Height = 32
      Margins.Left = 4
      Margins.Top = 8
      Margins.Right = 4
      Margins.Bottom = 0
      ElementClassName = 'd-flex align-items-center justify-content-stretch'
      ElementID = 'divLoginButtons'
      Align = alTop
      ChildOrder = 4
      ElementFont = efCSS
      Role = ''
      object btnLogin: TWebButton
        AlignWithMargins = True
        Left = 258
        Top = 0
        Width = 50
        Height = 32
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Caption = 
          '<i class="fa-solid fa-right-to-bracket fa-xl text-light me-1 "><' +
          '/i> Login'
        ChildOrder = 2
        ElementClassName = 'order-2 LoginButton flex-fill btn btn-primary btn-sm'
        ElementID = 'btnLogin'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnLoginClick
        OnKeyDown = edtLoginEMailKeyDown
      end
      object btnForgot: TWebButton
        Tag = 1
        AlignWithMargins = True
        Left = 140
        Top = 0
        Width = 50
        Height = 32
        Margins.Left = 8
        Margins.Top = 0
        Margins.Right = 8
        Margins.Bottom = 0
        Caption = 
          '<i class="fa-solid fa-fish-fins text-warning fa-xl me-2"></i>For' +
          'got'
        ChildOrder = 1
        ElementClassName = 'order-1 LoginButton flex-fill btn btn-danger btn-sm'
        ElementID = 'btnForgot'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnKeyDown = edtLoginEMailKeyDown
      end
      object btnRegister: TWebButton
        Tag = 2
        AlignWithMargins = True
        Left = 31
        Top = 0
        Width = 50
        Height = 32
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Caption = 
          '<i class="fa-solid fa-user-plus fa-lg text-light me-1"></i> Regi' +
          'ster'
        ElementClassName = 'order-0 LoginButton flex-fill  btn btn-success btn-sm'
        ElementID = 'btnRegister'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnKeyDown = edtLoginEMailKeyDown
      end
    end
  end
  object tmrOpen: TWebTimer
    Enabled = False
    Interval = 500
    OnTimer = tmrOpenTimer
    Left = 56
    Top = 120
  end
end

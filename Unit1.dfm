object Form1: TForm1
  Width = 1241
  Height = 846
  Align = alClient
  Color = clBlack
  CSSLibrary = cssBootstrap
  ElementClassName = 'F1 w-100 h-100 border-0 d-flex flex-column overflow-hidden'
  ElementFont = efCSS
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  Shadow = False
  ShowClose = False
  ShowHint = True
  OnCreate = WebFormCreate
  OnResize = WebFormResize
  OnShow = WebFormShow
  object divTop: TWebHTMLDiv
    Left = 0
    Top = 0
    Width = 1233
    Height = 48
    ElementClassName = 'order-0 ButtonBarBig justify-content-between'
    ElementID = 'divTop'
    HeightStyle = ssAuto
    WidthStyle = ssAuto
    ChildOrder = 1
    ElementPosition = epRelative
    ElementFont = efCSS
    Role = ''
    object panelTopLeft: TWebPanel
      Left = 8
      Top = 4
      Width = 481
      Height = 40
      ElementClassName = 
        'order-0 d-flex align-items-center Rounded8 border border-dark bg' +
        '-white'
      ElementID = 'panelTopLeft'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      Alignment = taLeftJustify
      BorderColor = clNone
      BorderStyle = bsNone
      Color = clWhite
      ElementBodyClassName = 'btn-group m-1'
      ElementFont = efCSS
      ElementPosition = epRelative
      object btnSurveys: TWebButton
        Left = 3
        Top = 3
        Width = 50
        Height = 32
        Caption = 
          '<div class="mx-2"><i class="fa-solid fa-clipboard-list me-2 fa-x' +
          'l"></i> Surveys</div>'
        ElementClassName = 'btn btn-dark btn-sm border border-1 border-dark'
        ElementID = 'btnSurveys'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightPercent = 100.000000000000000000
        TabOrder = 10
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnMainMenuClick
      end
      object btnResponses: TWebButton
        Tag = 1
        Left = 53
        Top = 3
        Width = 50
        Height = 32
        Caption = 
          '<div class="mx-2"><i class="fa-solid fa-clipboard-check me-2 fa-' +
          'xl"></i> Responses</div>'
        ChildOrder = 1
        ElementClassName = 'btn btn-dark btn-sm border border-1 border-dark'
        ElementID = 'btnReponses'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightPercent = 100.000000000000000000
        TabOrder = 11
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnMainMenuClick
      end
      object btnQuestions: TWebButton
        Tag = 2
        Left = 103
        Top = 3
        Width = 50
        Height = 32
        Caption = 
          '<div class="mx-2"><i class="fa-solid fa-clipboard-question me-2 ' +
          'fa-xl"></i> Library</div>'
        ChildOrder = 2
        ElementClassName = 'btn btn-dark btn-sm border border-1 border-dark'
        ElementID = 'btnQuestions'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightPercent = 100.000000000000000000
        TabOrder = 12
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnMainMenuClick
      end
      object btnAccounts: TWebButton
        Tag = 3
        Left = 153
        Top = 3
        Width = 50
        Height = 32
        Caption = 
          '<div class="mx-2"><i class="fa-solid fa-clipboard-user me-2 fa-x' +
          'l"></i> Administration</div>'
        ChildOrder = 3
        ElementClassName = 'btn btn-dark btn-sm border border-1 border-dark'
        ElementID = 'btnAccounts'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightPercent = 100.000000000000000000
        TabOrder = 13
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnMainMenuClick
      end
      object btnLogging: TWebButton
        Tag = 4
        Left = 206
        Top = 3
        Width = 50
        Height = 32
        Caption = 
          '<div class="mx-2"><i class="fa-solid fa-clipboard me-2 fa-xl"></' +
          'i>Server Log</div>'
        ChildOrder = 4
        ElementClassName = 'btn btn-dark btn-sm border border-1 border-dark'
        ElementID = 'btnLogging'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightPercent = 100.000000000000000000
        TabOrder = 14
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnMainMenuClick
      end
    end
    object panelTopRight: TWebPanel
      Left = 869
      Top = 4
      Width = 364
      Height = 40
      ElementClassName = 
        'order-1 d-flex align-items-center Rounded8 border border-dark bg' +
        '-white'
      ElementID = 'panelTopRight'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      BorderColor = clNone
      BorderStyle = bsNone
      ChildOrder = 1
      Color = clWhite
      ElementBodyClassName = 'd-flex m-1 gap-1'
      ElementFont = efCSS
      ElementPosition = epRelative
      object btnAccount: TWebButton
        Left = 166
        Top = 5
        Width = 96
        Height = 32
        Caption = 
          '<div class="mx-2"><i class="fa-solid fa-user me-2 fa-xl"></i>Acc' +
          'ount</div>'
        ElementClassName = 'btn btn-success btn-sm border border-1 border-dark'
        ElementID = 'btnAccount'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightPercent = 100.000000000000000000
        TabOrder = 15
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnAccountClick
      end
      object btnLogout: TWebButton
        Left = 268
        Top = 3
        Width = 96
        Height = 32
        Caption = 
          '<div class="mx-2"><i class="fa-solid fa-right-from-bracket me-2 ' +
          'fa-xl"></i> Logout</div>'
        ChildOrder = 1
        ElementClassName = 'btn btn-danger btn-sm border border-1 border-dark'
        ElementID = 'btnLogout'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightPercent = 100.000000000000000000
        TabOrder = 16
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnLogoutClick
      end
    end
  end
  object divBottom: TWebHTMLDiv
    Left = 0
    Top = 774
    Width = 1233
    Height = 48
    ElementClassName = 'order-2 ButtonBarBig justify-content-between'
    ElementID = 'divBottom'
    HeightStyle = ssAuto
    WidthStyle = ssAuto
    ChildOrder = 3
    ElementPosition = epRelative
    ElementFont = efCSS
    Role = ''
    object panelBottomRight: TWebPanel
      Left = 962
      Top = 4
      Width = 272
      Height = 40
      ElementClassName = 
        'order-1 d-flex align-items-center Rounded8 border border-dark bg' +
        '-white'
      ElementID = 'panelBottomRight'
      WidthStyle = ssAuto
      BorderColor = clNone
      BorderStyle = bsNone
      ChildOrder = 1
      Color = clWhite
      ElementBodyClassName = 'd-flex m-1 gap-1'
      ElementFont = efCSS
      ElementPosition = epRelative
      object btnBlog: TWebButton
        Left = 80
        Top = 2
        Width = 96
        Height = 32
        Caption = 
          '<div class="mx-2"><i class="fa-solid fa-feather-pointed me-2 fa-' +
          'xl"></i>TMS Software Blog</div>'
        ElementClassName = 'order-0 btn btn-secondary btn-sm border border-1 border-dark'
        ElementID = 'btnBlog'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightPercent = 100.000000000000000000
        TabOrder = 20
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
      object btnGitHub: TWebButton
        Left = 176
        Top = 3
        Width = 96
        Height = 32
        Caption = 
          '<div class="mx-2"><i class="fa-brands fa-github me-2 fa-xl"></i>' +
          ' GitHub</div>'
        ChildOrder = 1
        ElementClassName = 'order-1 btn btn-secondary btn-sm border border-1 border-dark'
        ElementID = 'btnGitHub'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightPercent = 100.000000000000000000
        TabOrder = 21
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnGitHubClick
      end
    end
    object panelBottomLeft: TWebPanel
      Left = 8
      Top = 4
      Width = 272
      Height = 40
      ElementClassName = 
        'order-0 d-flex align-items-center Rounded8 border border-dark bg' +
        '-white'
      ElementID = 'panelBottomLeft'
      WidthStyle = ssAuto
      BorderColor = clNone
      BorderStyle = bsNone
      Color = clWhite
      ElementBodyClassName = 'd-flex m-1 gap-1'
      ElementFont = efCSS
      ElementPosition = epRelative
      object btnEmail: TWebButton
        Left = 99
        Top = 3
        Width = 96
        Height = 32
        Caption = 
          '<div class="mx-2"><i class="fa-solid fa-paper-plane me-2 fa-xl">' +
          '</i>E-Mail Support</div>'
        ChildOrder = 1
        ElementClassName = 'order-1 btn btn-success btn-sm border border-1 border-dark'
        ElementID = 'btnEMail'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightPercent = 100.000000000000000000
        TabOrder = 17
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnEmailClick
      end
      object btnDiscord: TWebButton
        Left = 195
        Top = 3
        Width = 96
        Height = 32
        Caption = 
          '<div class="mx-2"><i class="fa-brands fa-discord me-2 fa-xl"></i' +
          '> Discord</div>'
        ChildOrder = 2
        ElementClassName = 'order-2 btn btn-primary btn-sm border border-1 border-dark'
        ElementID = 'btnDiscord'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightPercent = 100.000000000000000000
        TabOrder = 19
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnDiscordClick
      end
      object btnTicket: TWebButton
        Left = 0
        Top = 3
        Width = 96
        Height = 32
        Caption = 
          '<div class="mx-2"><i class="fa-solid fa-tag me-2 fa-xl"></i> Rep' +
          'ort an Issue</div>'
        ElementClassName = 'order-0 btn btn-danger btn-sm  border border-1 border-dark'
        ElementID = 'btnTicket'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightPercent = 100.000000000000000000
        TabOrder = 18
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnTicketClick
      end
    end
  end
  object pagecontrolMain: TWebPageControl
    Left = 8
    Top = 52
    Width = 1225
    Height = 716
    ElementClassName = 'order-1 flex-fill overflow-visible position-relative'
    ElementID = 'pagecontrolMain'
    HeightStyle = ssAuto
    WidthStyle = ssAuto
    ChildOrder = 2
    ElementFont = efCSS
    TabIndex = 0
    ShowTabs = False
    TabOrder = 2
    Visible = False
    object pageSurveys: TWebTabSheet
      Left = 0
      Top = 20
      Width = 1225
      Height = 696
      ElementClassName = 'Page Rounded10 w-100 h-100 border border-dark bg-light'
      ElementID = 'pageSurveys'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      Caption = 'Surveys'
      ElementFont = efCSS
      ElementPosition = epRelative
      OnShow = pageSurveysShow
      object divSurveysSurveyHolder: TWebHTMLDiv
        Left = 4
        Top = 4
        Width = 250
        Height = 621
        ElementClassName = 
          'RightSplitter flex-shrink-0 d-flex flex-column overflow-hidden R' +
          'ounded8 border border-dark  bg-white'
        ElementID = 'divSurveysSurveyHolder'
        HeightStyle = ssAuto
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object divSurveysButtons: TWebHTMLDiv
          Left = 4
          Top = 0
          Width = 244
          Height = 32
          ElementClassName = 'm-1 d-flex align-items-center justify-content-stretch gap-1'
          ElementID = 'divSurveysButtons'
          HeightStyle = ssAuto
          WidthStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object btnSurveyNew: TWebButton
            Left = 52
            Top = 5
            Width = 50
            Height = 24
            Caption = '<i class="fa-solid fa-plus me-1 "></i> New'
            ChildOrder = 1
            ElementClassName = 
              'order-1 ShortButton flex-fill btn btn-primary btn-sm border bord' +
              'er-1 border-dark'
            ElementID = 'btnSurveyNew'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            TabOrder = 31
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnSurveyNewClick
          end
          object btnSurveyDelete: TWebButton
            Tag = 1
            Left = 104
            Top = 5
            Width = 50
            Height = 24
            Caption = '<i class="fa-solid fa-trash-can me-1"></i>Delete'
            ChildOrder = 2
            ElementClassName = 
              'order-2 ShortButton flex-fill btn btn-danger btn-sm border borde' +
              'r-1 border-dark'
            ElementID = 'btnSurveyDelete'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            TabOrder = 32
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnSurveyDeleteClick
          end
          object btnSurveyClone: TWebButton
            Tag = 2
            Left = 155
            Top = 5
            Width = 50
            Height = 24
            Caption = '<i class="fa-solid fa-clone me-1"></i> Clone'
            ChildOrder = 3
            ElementClassName = 
              'order-3 ShortButton flex-fill  btn btn-success btn-sm border bor' +
              'der-1 border-dark'
            ElementID = 'btnSurveyClone'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            TabOrder = 33
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnSurveyCloneClick
          end
          object btnSurveyReload: TWebButton
            Tag = 2
            Left = 0
            Top = 5
            Width = 50
            Height = 24
            Caption = '<i class="fa-solid fa-rotate fa-spin"></i>'
            ElementClassName = 
              'order-0 ReloadButton btn btn-secondary btn-sm border border-1 bo' +
              'rder-dark'
            ElementID = 'btnSurveyReload'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            TabOrder = 30
            WidthPercent = 100.000000000000000000
            OnClick = btnSurveyReloadClick
          end
        end
        object divSurveysSurveyList: TWebHTMLDiv
          Left = 0
          Top = 45
          Width = 250
          Height = 442
          ElementClassName = 'w-100 flex-fill rounded-bottom overflow-hidden border border-0'
          ElementID = 'divSurveysSurveyList'
          HeightStyle = ssAuto
          WidthStyle = ssAuto
          ChildOrder = 1
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object divSurveysHolderResize: TWebHTMLDiv
          Left = 64
          Top = 512
          Width = 100
          Height = 41
          ElementClassName = 'ResizeElement'
          ElementID = 'divSurveysHolderResize'
          HeightStyle = ssAuto
          WidthStyle = ssAuto
          ChildOrder = 2
          ElementPosition = epIgnore
          ElementFont = efCSS
          HTML.Strings = (
            '<div class="InnerTriangle1"></div>'
            '<div class="InnerTriangle2"></div>')
          Role = ''
        end
      end
      object divSurveysMain: TWebHTMLDiv
        Left = 267
        Top = 1
        Width = 961
        Height = 672
        ElementClassName = 'overflow-hidden flex-fill d-flex flex-column gap-1 w-100 h-100 '
        ElementID = 'divSurveysMain'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ChildOrder = 1
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object pageControlSurveys: TWebPageControl
          Left = -3
          Top = 49
          Width = 961
          Height = 609
          ElementClassName = 'order-1 flex-fill overflow-visible position-relative'
          ElementID = 'pagecontrolSurveys'
          HeightStyle = ssAuto
          ChildOrder = 1
          ElementFont = efCSS
          TabIndex = 0
          ShowTabs = False
          TabOrder = 0
          Visible = False
          object pageConfig: TWebTabSheet
            Left = 0
            Top = 20
            Width = 961
            Height = 589
            ElementClassName = 'bg-light PageNP w-100 h-100'
            ElementID = 'pageConfig'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            Caption = 'Config'
            ElementFont = efCSS
            ElementPosition = epRelative
            object divConfigHolder: TWebHTMLDiv
              Left = 186
              Top = 3
              Width = 663
              Height = 583
              ElementClassName = 'order-1 d-flex flex-fill w-100 h-100 '
              ElementID = 'divConfigHolder'
              HeightStyle = ssAuto
              WidthStyle = ssAuto
              ChildOrder = 2
              ElementPosition = epRelative
              ElementFont = efCSS
              Role = ''
              object pagecontrolSurveysConfig: TWebPageControl
                Left = -1
                Top = 0
                Width = 770
                Height = 553
                ElementClassName = 'bg-info w-100 h-100'
                ElementID = 'pagecontrolSurveyConfig'
                HeightStyle = ssAuto
                WidthStyle = ssAuto
                ChildOrder = 2
                ElementFont = efCSS
                TabIndex = 0
                ShowTabs = False
                TabOrder = 0
                Visible = False
                object pageConfigBasic: TWebTabSheet
                  Left = 0
                  Top = 20
                  Width = 770
                  Height = 533
                  ElementClassName = 'w-100 h-100 PageNP Rounded8 border border-dark  bg-info'
                  ElementID = 'pageConfigBasic'
                  HeightStyle = ssAuto
                  WidthStyle = ssAuto
                  Caption = 'Base'
                  ChildOrder = 3
                  ElementBodyClassName = 'd-flex flex-column  gap-1 m-1 overflow-visible'
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  object divConfigBasicGroup: TWebHTMLDiv
                    Left = 0
                    Top = 76
                    Width = 770
                    Height = 38
                    ElementClassName = 'order-1 FieldHolder'
                    ElementID = 'divConfigBasicLink'
                    HeightStyle = ssAuto
                    WidthStyle = ssAuto
                    ChildOrder = 1
                    ElementPosition = epRelative
                    ElementFont = efCSS
                    Role = ''
                    object divConfigBasicGroupLabel: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 80
                      Height = 32
                      ElementClassName = 'FieldLabel'
                      ElementID = 'divConfigBasicNameLabel'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      HTML.Strings = (
                        'Survey Group')
                      Role = ''
                    end
                    object edtConfigBasicGroup: TWebEdit
                      Left = 100
                      Top = 0
                      Width = 670
                      Height = 28
                      ChildOrder = 1
                      ElementClassName = 'FieldEdit'
                      ElementID = 'edtConfigBasicGroup'
                      ElementFont = efCSS
                      ElementPosition = epRelative
                      HeightPercent = 100.000000000000000000
                      SpellCheck = False
                      TabOrder = 101
                      WidthStyle = ssAuto
                      WidthPercent = 100.000000000000000000
                      OnChange = SurveyChanged
                    end
                  end
                  object divConfigBasicID: TWebHTMLDiv
                    Left = 0
                    Top = 14
                    Width = 770
                    Height = 38
                    ElementClassName = 'order-0 FieldHolder'
                    ElementID = 'divConfigBasicIDHolder'
                    HeightStyle = ssAuto
                    WidthStyle = ssAuto
                    ChildOrder = 1
                    ElementPosition = epRelative
                    ElementFont = efCSS
                    Role = ''
                    object divConfigBasicIDLabel: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 80
                      Height = 32
                      ElementClassName = 'FieldLabel'
                      ElementID = 'divConfigBasicIDLabel'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      HTML.Strings = (
                        'Survey ID')
                      Role = ''
                    end
                    object edtConfigBasicID: TWebEdit
                      Left = 100
                      Top = 0
                      Width = 670
                      Height = 28
                      AutoSelect = False
                      ChildOrder = 1
                      ElementClassName = 'FieldEdit bg-info'
                      ElementID = 'edtConfigBasicID'
                      ElementFont = efCSS
                      ElementPosition = epRelative
                      HeightPercent = 100.000000000000000000
                      ReadOnly = True
                      SpellCheck = False
                      TabOrder = 100
                      WidthStyle = ssAuto
                      WidthPercent = 100.000000000000000000
                      OnChange = SurveyChanged
                    end
                  end
                  object divConfigBasicLink: TWebHTMLDiv
                    Left = 0
                    Top = 172
                    Width = 762
                    Height = 38
                    ElementClassName = 'order-3 FieldHolder'
                    ElementID = 'divConfigBasicLink'
                    HeightStyle = ssAuto
                    WidthStyle = ssAuto
                    ChildOrder = 3
                    ElementPosition = epRelative
                    ElementFont = efCSS
                    Role = ''
                    object divConfigBasicLinkLabel: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 80
                      Height = 32
                      ElementClassName = 'FieldLabel'
                      ElementID = 'divConfigBasicLinkLabel'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      HTML.Strings = (
                        'Link Identifier')
                      Role = ''
                    end
                    object edtConfigBasicLink: TWebEdit
                      Left = 100
                      Top = 0
                      Width = 670
                      Height = 28
                      ChildOrder = 1
                      ElementClassName = 'FieldEdit'
                      ElementID = 'edtConfigBasicLink'
                      ElementFont = efCSS
                      ElementPosition = epRelative
                      HeightPercent = 100.000000000000000000
                      MaxLength = 20
                      SpellCheck = False
                      TabOrder = 103
                      WidthStyle = ssAuto
                      WidthPercent = 100.000000000000000000
                      OnChange = edtConfigBasicLinkChange
                    end
                  end
                  object divConfigBasicLiveLinkHolder: TWebHTMLDiv
                    Left = 0
                    Top = 275
                    Width = 762
                    Height = 38
                    ElementClassName = 'order-5 FieldHolder'
                    ElementID = 'divConfigBasicLiveLinkHolder'
                    HeightStyle = ssAuto
                    WidthStyle = ssAuto
                    ChildOrder = 5
                    ElementPosition = epRelative
                    ElementFont = efCSS
                    Role = ''
                    object divConfigBasicLiveLinkLabel: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 80
                      Height = 32
                      ElementClassName = 'FieldLabel'
                      ElementID = 'divConfigBasicLiveLinkLabel'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      HTML.Strings = (
                        'Live Link')
                      Role = ''
                    end
                    object divConfigBasicLiveLink: TWebHTMLDiv
                      Left = 100
                      Top = 0
                      Width = 670
                      Height = 28
                      ElementClassName = 'FieldEdit bg-info'
                      ElementID = 'divConfigBasicLiveLink'
                      WidthStyle = ssAuto
                      ChildOrder = 1
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      Role = ''
                    end
                  end
                  object divConfigBasicName: TWebHTMLDiv
                    Left = 0
                    Top = 119
                    Width = 762
                    Height = 38
                    ElementClassName = 'order-2 FieldHolder'
                    ElementID = 'divConfigBasicName'
                    HeightStyle = ssAuto
                    WidthStyle = ssAuto
                    ChildOrder = 2
                    ElementPosition = epRelative
                    ElementFont = efCSS
                    Role = ''
                    object divConfigBasicNameLabel: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 80
                      Height = 32
                      ElementClassName = 'FieldLabel'
                      ElementID = 'divConfigBasicNameLabel'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      HTML.Strings = (
                        'Survey Name')
                      Role = ''
                    end
                    object edtConfigBasicName: TWebEdit
                      Left = 100
                      Top = 0
                      Width = 670
                      Height = 28
                      ChildOrder = 1
                      ElementClassName = 'FieldEdit'
                      ElementID = 'edtConfigBasicName'
                      ElementFont = efCSS
                      ElementPosition = epRelative
                      HeightPercent = 100.000000000000000000
                      SpellCheck = False
                      TabOrder = 102
                      WidthStyle = ssAuto
                      WidthPercent = 100.000000000000000000
                      OnChange = SurveyChanged
                    end
                  end
                  object divConfigBasicTestLinkHolder: TWebHTMLDiv
                    Left = 0
                    Top = 222
                    Width = 762
                    Height = 38
                    ElementClassName = 'order-4 FieldHolder'
                    ElementID = 'divConfigBasicTestLinkHolder'
                    HeightStyle = ssAuto
                    WidthStyle = ssAuto
                    ChildOrder = 4
                    ElementPosition = epRelative
                    ElementFont = efCSS
                    Role = ''
                    object divConfigBasicTestLinkLabel: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 80
                      Height = 32
                      ElementClassName = 'FieldLabel'
                      ElementID = 'divConfigBasicTestLinkLabel'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      HTML.Strings = (
                        'Test Link')
                      Role = ''
                    end
                    object divConfigBasicTestLink: TWebHTMLDiv
                      Left = 100
                      Top = 0
                      Width = 670
                      Height = 28
                      ElementClassName = 'FieldEdit bg-info'
                      ElementID = 'divConfigBasicTestLink'
                      WidthStyle = ssAuto
                      ChildOrder = 1
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      Role = ''
                    end
                  end
                  object divSurveyInfoHolder: TWebHTMLDiv
                    Left = 0
                    Top = 328
                    Width = 770
                    Height = 200
                    ElementClassName = 
                      'order-6 d-flex flex-fill flex-column overflow-hidden border bord' +
                      'er-0  bg-white'
                    ElementID = 'divSurveyInfoHolder'
                    HeightStyle = ssAuto
                    WidthStyle = ssAuto
                    ChildOrder = 6
                    ElementPosition = epRelative
                    ElementFont = efCSS
                    Role = ''
                    object divSurveyInfoButtons: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 770
                      Height = 32
                      ElementClassName = 'ButtonBar'
                      ElementID = 'divSurveyInfoButtons'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      Role = ''
                      object btnSurveyInfoReload: TWebButton
                        Tag = 1
                        Left = 0
                        Top = 0
                        Width = 50
                        Height = 24
                        Caption = '<i class="fa-solid fa-rotate fa-spin"></i>'
                        ElementClassName = 
                          'order-0 ButtonBarReload btn btn-secondary btn-sm border border-1' +
                          ' border-dark'
                        ElementID = 'btnSurveyInfoReload'
                        ElementFont = efCSS
                        ElementPosition = epRelative
                        HeightStyle = ssAuto
                        HeightPercent = 100.000000000000000000
                        TabOrder = 104
                        WidthStyle = ssAuto
                        WidthPercent = 100.000000000000000000
                        OnClick = btnSurveyInfoReloadClick
                      end
                      object panelSurveyInfoExport: TWebPanel
                        Left = 58
                        Top = 1
                        Width = 339
                        Height = 24
                        ElementClassName = 'order-1 ButtonBarGroup'
                        ElementID = 'panelSurveyInfoExport'
                        HeightStyle = ssAuto
                        WidthStyle = ssAuto
                        BorderColor = clNone
                        BorderStyle = bsNone
                        ChildOrder = 2
                        Color = clWhite
                        ElementBodyClassName = 'btn-group'
                        ElementFont = efCSS
                        ElementPosition = epRelative
                        object btnSurveyInfoExport: TWebButton
                          Tag = 4
                          Left = 16
                          Top = 0
                          Width = 50
                          Height = 22
                          Caption = '<i class="fa-solid fa-download fa-lg me-1"></i> Export'
                          ElementClassName = 'order-0 ShortestButton btn btn-dark btn-sm'
                          ElementID = 'btnSurveyInfoExport'
                          ElementFont = efCSS
                          ElementPosition = epRelative
                          HeightPercent = 100.000000000000000000
                          TabOrder = 10
                          WidthStyle = ssAuto
                          WidthPercent = 100.000000000000000000
                          OnClick = btnSurveyInfoExportClick
                        end
                        object btnSurveyInfoExportCSV: TWebButton
                          Left = 62
                          Top = 2
                          Width = 50
                          Height = 22
                          Caption = '<i class="fa-solid fa-file-csv fa-lg me-1"></i> CSV'
                          ChildOrder = 1
                          ElementClassName = 'order-1 ShortestButton btn btn-dark btn-sm'
                          ElementID = 'btnSurveyInfoExportCSV'
                          ElementFont = efCSS
                          ElementPosition = epRelative
                          HeightPercent = 100.000000000000000000
                          TabOrder = 10
                          WidthStyle = ssAuto
                          WidthPercent = 100.000000000000000000
                          OnClick = MenuSurveyInfoExport
                        end
                        object btnSurveyInfoExportExcel: TWebButton
                          Tag = 1
                          Left = 112
                          Top = 2
                          Width = 50
                          Height = 22
                          Caption = '<i class="fa-solid fa-file-excel fa-lg me-1"></i> XLSX'
                          ChildOrder = 2
                          ElementClassName = 'order-2 ShortestButton btn btn-dark btn-sm '
                          ElementID = 'btnSurveyInfoExportExcel'
                          ElementFont = efCSS
                          ElementPosition = epRelative
                          HeightPercent = 100.000000000000000000
                          TabOrder = 10
                          WidthStyle = ssAuto
                          WidthPercent = 100.000000000000000000
                          OnClick = MenuSurveyInfoExport
                        end
                        object btnSurveyInfoExportJSON: TWebButton
                          Tag = 2
                          Left = 162
                          Top = 2
                          Width = 50
                          Height = 22
                          Caption = '<i class="fa-solid fa-file-code fa-lg me-1"></i>  JSON'
                          ChildOrder = 3
                          ElementClassName = 'order-3 ShortestButton btn btn-dark btn-sm'
                          ElementID = 'btnSurveyInfoExportJSON'
                          ElementFont = efCSS
                          ElementPosition = epRelative
                          HeightPercent = 100.000000000000000000
                          TabOrder = 10
                          WidthStyle = ssAuto
                          WidthPercent = 100.000000000000000000
                          OnClick = MenuSurveyInfoExport
                        end
                        object btnSurveyInfoExportPDF: TWebButton
                          Tag = 3
                          Left = 215
                          Top = 2
                          Width = 50
                          Height = 22
                          Caption = '<i class="fa-solid fa-file-pdf fa-lg me-1"></i>  PDF'
                          ChildOrder = 4
                          ElementClassName = 'order-4 ShortestButton btn btn-dark btn-sm'
                          ElementID = 'btnSurveyInfoExportPDF'
                          ElementFont = efCSS
                          ElementPosition = epRelative
                          HeightPercent = 100.000000000000000000
                          TabOrder = 10
                          WidthStyle = ssAuto
                          WidthPercent = 100.000000000000000000
                          OnClick = MenuSurveyInfoExport
                        end
                        object btnSurveyInfoExportPrint: TWebButton
                          Tag = 4
                          Left = 265
                          Top = 2
                          Width = 50
                          Height = 22
                          Caption = '<i class="fa-solid fa-print fa-lg me-1"></i> Print'
                          ChildOrder = 5
                          ElementClassName = 'order-5 ShortestButton btn btn-primary btn-sm'
                          ElementID = 'btnSurveyInfoExportPrint'
                          ElementFont = efCSS
                          ElementPosition = epRelative
                          HeightPercent = 100.000000000000000000
                          TabOrder = 10
                          WidthStyle = ssAuto
                          WidthPercent = 100.000000000000000000
                          OnClick = MenuSurveyInfoExport
                        end
                      end
                    end
                    object divSurveyInfo: TWebHTMLDiv
                      Left = -2
                      Top = 48
                      Width = 770
                      Height = 108
                      ElementClassName = 'rounded-bottom flex-fill overflow-hidden border border-0'
                      ElementID = 'divSurveyInfo'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ChildOrder = 1
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      Role = ''
                    end
                  end
                end
                object pageNotes: TWebTabSheet
                  Left = 0
                  Top = 20
                  Width = 770
                  Height = 533
                  ElementClassName = 'w-100 h-100 PageNP '
                  ElementID = 'pageNotes'
                  HeightStyle = ssAuto
                  WidthStyle = ssAuto
                  Caption = 'Nts'
                  ChildOrder = 9
                  ElementBodyClassName = 'd-flex flex-column  gap-1 m-1'
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  object divNotesHolder: TWebHTMLDiv
                    AlignWithMargins = True
                    Left = 0
                    Top = 0
                    Width = 770
                    Height = 533
                    Margins.Left = 0
                    Margins.Top = 0
                    Margins.Right = 0
                    Margins.Bottom = 0
                    ElementClassName = 
                      'w-100 h-100 d-flex flex-column  overflow-hidden Rounded8 border ' +
                      'border-dark  bg-white'
                    ElementID = 'divNotesHolder'
                    Align = alClient
                    ElementFont = efCSS
                    Role = ''
                    object divNotesButtons: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 770
                      Height = 32
                      ElementClassName = 'ButtonBar w-100'
                      ElementID = 'divNotesButtons'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      Role = ''
                      object btnNotesAdd: TWebButton
                        Tag = 1
                        Left = 50
                        Top = 0
                        Width = 50
                        Height = 24
                        Caption = '<i class="fa-solid fa-plus me-1"></i> Add '
                        ChildOrder = 1
                        ElementClassName = 
                          'order-1 ButtonBarElement btn btn-primary btn-sm border border-1 ' +
                          'border-dark'
                        ElementID = 'btnNotesAdd'
                        ElementFont = efCSS
                        ElementPosition = epRelative
                        HeightStyle = ssAuto
                        HeightPercent = 100.000000000000000000
                        WidthStyle = ssAuto
                        WidthPercent = 100.000000000000000000
                        OnClick = btnNotesAddClick
                      end
                      object btnNotesDelete: TWebButton
                        Tag = 1
                        Left = 99
                        Top = 1
                        Width = 50
                        Height = 24
                        Caption = '<i class="fa-solid fa-trash-can me-1"></i> Delete'
                        ChildOrder = 2
                        ElementClassName = 
                          'order-2 ButtonBarElement btn btn-danger btn-sm border border-1 b' +
                          'order-dark'
                        ElementID = 'btnNotesDelete'
                        ElementFont = efCSS
                        ElementPosition = epRelative
                        HeightStyle = ssAuto
                        HeightPercent = 100.000000000000000000
                        WidthStyle = ssAuto
                        WidthPercent = 100.000000000000000000
                        OnClick = btnNotesDeleteClick
                      end
                      object btnNotesReload: TWebButton
                        Tag = 1
                        Left = 0
                        Top = 0
                        Width = 50
                        Height = 24
                        Caption = '<i class="fa-solid fa-rotate"></i>'
                        ElementClassName = 
                          'order-0 ButtonBarReload btn btn-secondary btn-sm border border-1' +
                          ' border-dark'
                        ElementID = 'btnNotesReload'
                        ElementFont = efCSS
                        ElementPosition = epRelative
                        HeightStyle = ssAuto
                        HeightPercent = 100.000000000000000000
                        WidthStyle = ssAuto
                        WidthPercent = 100.000000000000000000
                        OnClick = btnNotesReloadClick
                      end
                      object panelNotesExport: TWebPanel
                        Left = 157
                        Top = 1
                        Width = 339
                        Height = 24
                        ElementClassName = 'order-3 ButtonBarGroup'
                        ElementID = 'panelNotesExport'
                        HeightStyle = ssAuto
                        WidthStyle = ssAuto
                        Alignment = taLeftJustify
                        BorderColor = clNone
                        BorderStyle = bsNone
                        ChildOrder = 3
                        Color = clWhite
                        ElementBodyClassName = 'btn-group'
                        ElementFont = efCSS
                        ElementPosition = epRelative
                        object btnNotesExport: TWebButton
                          Tag = 4
                          Left = 24
                          Top = 0
                          Width = 50
                          Height = 22
                          Caption = '<i class="fa-solid fa-download fa-lg me-1"></i> Export'
                          ElementClassName = 'order-0 ShortestButton btn btn-dark btn-sm'
                          ElementID = 'btnNotesExport'
                          ElementFont = efCSS
                          ElementPosition = epRelative
                          HeightPercent = 100.000000000000000000
                          TabOrder = 10
                          WidthStyle = ssAuto
                          WidthPercent = 100.000000000000000000
                          OnClick = btnNotesExportClick
                        end
                        object btnNotesExportCSV: TWebButton
                          Left = 70
                          Top = 0
                          Width = 50
                          Height = 22
                          Caption = '<i class="fa-solid fa-file-csv fa-lg me-1"></i> CSV'
                          ChildOrder = 1
                          ElementClassName = 'order-1 ShortestButton btn btn-dark btn-sm'
                          ElementID = 'btnNotesExportCSV'
                          ElementFont = efCSS
                          ElementPosition = epRelative
                          HeightPercent = 100.000000000000000000
                          TabOrder = 10
                          WidthStyle = ssAuto
                          WidthPercent = 100.000000000000000000
                          OnClick = MenuNotesExport
                        end
                        object btnNotesExportExcel: TWebButton
                          Tag = 1
                          Left = 120
                          Top = 0
                          Width = 50
                          Height = 22
                          Caption = '<i class="fa-solid fa-file-excel fa-lg me-1"></i> XLSX'
                          ChildOrder = 2
                          ElementClassName = 'order-2 ShortestButton btn btn-dark btn-sm'
                          ElementID = 'btnNotesExportExcel'
                          ElementFont = efCSS
                          ElementPosition = epRelative
                          HeightPercent = 100.000000000000000000
                          TabOrder = 10
                          WidthStyle = ssAuto
                          WidthPercent = 100.000000000000000000
                          OnClick = MenuNotesExport
                        end
                        object btnNotesExportJSON: TWebButton
                          Tag = 2
                          Left = 170
                          Top = 0
                          Width = 50
                          Height = 22
                          Caption = '<i class="fa-solid fa-file-code fa-lg me-1"></i>  JSON'
                          ChildOrder = 3
                          ElementClassName = 'order-3 ShortestButton btn btn-dark btn-sm'
                          ElementID = 'btnNotesExportJSON'
                          ElementFont = efCSS
                          ElementPosition = epRelative
                          HeightPercent = 100.000000000000000000
                          TabOrder = 10
                          WidthStyle = ssAuto
                          WidthPercent = 100.000000000000000000
                          OnClick = MenuNotesExport
                        end
                        object btnNotesExportPDF: TWebButton
                          Tag = 3
                          Left = 220
                          Top = 0
                          Width = 50
                          Height = 22
                          Caption = '<i class="fa-solid fa-file-pdf fa-lg me-1"></i>  PDF'
                          ChildOrder = 4
                          ElementClassName = 'order-4 ShortestButton btn btn-dark btn-sm'
                          ElementID = 'btnNotesExportPDF'
                          ElementFont = efCSS
                          ElementPosition = epRelative
                          HeightPercent = 100.000000000000000000
                          TabOrder = 10
                          WidthStyle = ssAuto
                          WidthPercent = 100.000000000000000000
                          OnClick = MenuNotesExport
                        end
                        object btnNotesExportPrint: TWebButton
                          Tag = 4
                          Left = 265
                          Top = 0
                          Width = 50
                          Height = 22
                          Caption = '<i class="fa-solid fa-print fa-lg me-1"></i> Print'
                          ChildOrder = 5
                          ElementClassName = 'order-5 ShortestButton btn btn-primary btn-sm'
                          ElementID = 'btnNotesExportPrint'
                          ElementFont = efCSS
                          ElementPosition = epRelative
                          HeightPercent = 100.000000000000000000
                          TabOrder = 10
                          WidthStyle = ssAuto
                          WidthPercent = 100.000000000000000000
                          OnClick = MenuNotesExport
                        end
                      end
                    end
                    object divNotes: TWebHTMLDiv
                      Left = 0
                      Top = 32
                      Width = 770
                      Height = 348
                      ElementClassName = 
                        'w-100 h-100 rounded-bottom flex-fill overflow-hidden border bord' +
                        'er-0'
                      ElementID = 'divNotes'
                      HeightStyle = ssAuto
                      ChildOrder = 1
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      Role = ''
                    end
                  end
                end
                object pageAvailability: TWebTabSheet
                  Left = 0
                  Top = 20
                  Width = 770
                  Height = 533
                  ElementClassName = 'w-100 h-100 PageNP '
                  ElementID = 'pageAvailability'
                  HeightStyle = ssAuto
                  WidthStyle = ssAuto
                  Caption = 'Avail'
                  ChildOrder = 3
                  ElementBodyClassName = 'd-flex flex-column  gap-1'
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  object divAvailabilityHolder: TWebHTMLDiv
                    Left = 0
                    Top = 0
                    Width = 770
                    Height = 380
                    ElementClassName = 
                      'w-100 h-100 d-flex flex-column  overflow-hidden Rounded8 border ' +
                      'border-dark  bg-white'
                    ElementID = 'divAvailabilityHolder'
                    HeightStyle = ssAuto
                    WidthStyle = ssAuto
                    ElementPosition = epRelative
                    ElementFont = efCSS
                    Role = ''
                    object divAvailabilityButtons: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 765
                      Height = 32
                      ElementClassName = 'ButtonBar w-100 pe-2'
                      ElementID = 'divAvailabilityButtons'
                      HeightStyle = ssAuto
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      Role = ''
                      object labelAvailabilityCountdown: TWebLabel
                        Left = 650
                        Top = 4
                        Width = 110
                        Height = 24
                        Alignment = taCenter
                        AutoSize = False
                        Caption = 'Countdown: 0d 0h 0m 0s'
                        ChildOrder = 5
                        ElementClassName = 
                          'order-5 rounded-1 CountDown btn btn-warning px-2 border border-1' +
                          ' border-dark'
                        ElementID = 'labelAvailabilityCountdown'
                        ElementFont = efCSS
                        ElementPosition = epRelative
                        HeightStyle = ssAuto
                        HeightPercent = 100.000000000000000000
                        WidthPercent = 100.000000000000000000
                      end
                      object btnAvailabilityAdd: TWebButton
                        Tag = 1
                        Left = 50
                        Top = 0
                        Width = 50
                        Height = 24
                        Caption = '<i class="fa-solid fa-plus me-1"></i> Add '
                        ChildOrder = 1
                        ElementClassName = 
                          'order-1 ButtonBarElement btn btn-primary btn-sm border border-1 ' +
                          'border-dark'
                        ElementID = 'btnAvailabilityAdd'
                        ElementFont = efCSS
                        ElementPosition = epRelative
                        HeightStyle = ssAuto
                        HeightPercent = 100.000000000000000000
                        TabOrder = 130
                        WidthStyle = ssAuto
                        WidthPercent = 100.000000000000000000
                        OnClick = btnAvailabilityAddClick
                      end
                      object btnAvailabilityDelete: TWebButton
                        Tag = 1
                        Left = 101
                        Top = -1
                        Width = 50
                        Height = 24
                        Caption = '<i class="fa-solid fa-trash-can me-1"></i> Delete'
                        ChildOrder = 2
                        ElementClassName = 
                          'order-2 ButtonBarElement btn btn-danger btn-sm border border-1 b' +
                          'order-dark'
                        ElementID = 'btnAvailabilityDelete'
                        ElementFont = efCSS
                        ElementPosition = epRelative
                        HeightStyle = ssAuto
                        HeightPercent = 100.000000000000000000
                        TabOrder = 131
                        WidthStyle = ssAuto
                        WidthPercent = 100.000000000000000000
                        OnClick = btnAvailabilityDeleteClick
                      end
                      object btnAvailabilityReload: TWebButton
                        Tag = 1
                        Left = 0
                        Top = 0
                        Width = 50
                        Height = 24
                        Caption = '<i class="fa-solid fa-rotate"></i>'
                        ElementClassName = 
                          'order-0 ButtonBarReload btn btn-secondary btn-sm border border-1' +
                          ' border-dark'
                        ElementID = 'btnAvailabilityReload'
                        ElementFont = efCSS
                        ElementPosition = epRelative
                        HeightStyle = ssAuto
                        HeightPercent = 100.000000000000000000
                        WidthStyle = ssAuto
                        WidthPercent = 100.000000000000000000
                        OnClick = btnAvailabilityReloadClick
                      end
                      object btnAvailabilityStatus: TWebButton
                        Tag = 1
                        Left = 581
                        Top = 0
                        Width = 70
                        Height = 32
                        Caption = '<i class="fa-solid fa-rotate"></i>'
                        ChildOrder = 4
                        ElementClassName = 
                          'order-4 ButtonBarEnd btn btn-secondary btn-sm border border-1 bo' +
                          'rder-dark'
                        ElementID = 'btnAvailabilityStatus'
                        ElementFont = efCSS
                        ElementPosition = epRelative
                        HeightStyle = ssAuto
                        HeightPercent = 100.000000000000000000
                        WidthStyle = ssAuto
                        WidthPercent = 100.000000000000000000
                        OnClick = btnAvailabilityReloadClick
                      end
                      object panelAvailabiltyExport: TWebPanel
                        Left = 154
                        Top = 1
                        Width = 339
                        Height = 24
                        ElementClassName = 'order-3 ButtonBarGroup'
                        ElementID = 'panelAvailabiltyExport'
                        HeightStyle = ssAuto
                        WidthStyle = ssAuto
                        BorderColor = clNone
                        BorderStyle = bsNone
                        ChildOrder = 3
                        Color = clWhite
                        ElementBodyClassName = 'btn-group'
                        ElementFont = efCSS
                        ElementPosition = epRelative
                        object btnAvailabilityExport: TWebButton
                          Tag = 4
                          Left = 32
                          Top = 0
                          Width = 50
                          Height = 22
                          Caption = '<i class="fa-solid fa-download fa-lg me-1"></i> Export'
                          ElementClassName = 'order-0 ShortestButton btn btn-dark btn-sm'
                          ElementID = 'btnAvailabilityExport'
                          ElementFont = efCSS
                          ElementPosition = epRelative
                          HeightPercent = 100.000000000000000000
                          TabOrder = 10
                          WidthStyle = ssAuto
                          WidthPercent = 100.000000000000000000
                          OnClick = btnAvailabilityExportClick
                        end
                        object btnAvailabilityExportCSV: TWebButton
                          Left = 78
                          Top = 0
                          Width = 50
                          Height = 22
                          Caption = '<i class="fa-solid fa-file-csv fa-lg me-1"></i> CSV'
                          ChildOrder = 1
                          ElementClassName = 'order-1 ShortestButton btn btn-dark btn-sm '
                          ElementID = 'btnAvailabilityExportCSV'
                          ElementFont = efCSS
                          ElementPosition = epRelative
                          HeightPercent = 100.000000000000000000
                          TabOrder = 10
                          WidthStyle = ssAuto
                          WidthPercent = 100.000000000000000000
                          OnClick = MenuAvailabilityExport
                        end
                        object btnAvailabilityExportExcel: TWebButton
                          Tag = 1
                          Left = 128
                          Top = 0
                          Width = 50
                          Height = 22
                          Caption = '<i class="fa-solid fa-file-excel fa-lg me-1"></i> XLSX'
                          ChildOrder = 2
                          ElementClassName = 'order-2 ShortestButton btn btn-dark btn-sm '
                          ElementID = 'btnAvailabilityExportExcel'
                          ElementFont = efCSS
                          ElementPosition = epRelative
                          HeightPercent = 100.000000000000000000
                          TabOrder = 10
                          WidthStyle = ssAuto
                          WidthPercent = 100.000000000000000000
                          OnClick = MenuAvailabilityExport
                        end
                        object btnAvailabilityExportJSON: TWebButton
                          Tag = 2
                          Left = 178
                          Top = 0
                          Width = 50
                          Height = 22
                          Caption = '<i class="fa-solid fa-file-code fa-lg me-1"></i>  JSON'
                          ChildOrder = 3
                          ElementClassName = 'order-3 ShortestButton btn btn-dark btn-sm'
                          ElementID = 'btnAvailabilityExportJSON'
                          ElementFont = efCSS
                          ElementPosition = epRelative
                          HeightPercent = 100.000000000000000000
                          TabOrder = 10
                          WidthStyle = ssAuto
                          WidthPercent = 100.000000000000000000
                          OnClick = MenuAvailabilityExport
                        end
                        object btnAvailabilityExportPDF: TWebButton
                          Tag = 3
                          Left = 228
                          Top = 0
                          Width = 50
                          Height = 22
                          Caption = '<i class="fa-solid fa-file-pdf fa-lg me-1"></i>  PDF'
                          ChildOrder = 4
                          ElementClassName = 'order-4 ShortestButton btn btn-dark btn-sm'
                          ElementID = 'btnAvailabilityExportPDF'
                          ElementFont = efCSS
                          ElementPosition = epRelative
                          HeightPercent = 100.000000000000000000
                          TabOrder = 10
                          WidthStyle = ssAuto
                          WidthPercent = 100.000000000000000000
                          OnClick = MenuAvailabilityExport
                        end
                        object btnAvailabilityExportPrint: TWebButton
                          Tag = 4
                          Left = 273
                          Top = 0
                          Width = 50
                          Height = 22
                          Caption = '<i class="fa-solid fa-print fa-lg me-1"></i> Print'
                          ChildOrder = 5
                          ElementClassName = 'order-4 ShortestButton btn btn-primary btn-sm'
                          ElementID = 'btnAvailabilityExportPrint'
                          ElementFont = efCSS
                          ElementPosition = epRelative
                          HeightPercent = 100.000000000000000000
                          TabOrder = 10
                          WidthStyle = ssAuto
                          WidthPercent = 100.000000000000000000
                          OnClick = MenuAvailabilityExport
                        end
                      end
                    end
                    object divAvailability: TWebHTMLDiv
                      Left = 0
                      Top = 32
                      Width = 770
                      Height = 348
                      ElementClassName = 'rounded-bottom flex-fill overflow-hidden border border-0'
                      ElementID = 'divAvailability'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ChildOrder = 1
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      Role = ''
                    end
                  end
                end
                object pageBanner: TWebTabSheet
                  Left = 0
                  Top = 20
                  Width = 770
                  Height = 533
                  ElementClassName = 'w-100 h-100 Rounded8 border border-dark  bg-info'
                  ElementID = 'pageBanner'
                  HeightStyle = ssAuto
                  WidthStyle = ssAuto
                  Caption = 'Bnr'
                  ChildOrder = 1
                  ElementBodyClassName = 'd-flex flex-column  gap-1 m-1 h-100'
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  object divConfigBannerContentHolder: TWebHTMLDiv
                    Left = 4
                    Top = 90
                    Width = 762
                    Height = 272
                    ElementClassName = 
                      'order-2 mb-2 d-flex flex-column flex-fill overflow-hidden rounde' +
                      'd border border-dark bg-secondary'
                    ElementID = 'divConfigBannerContentHolder'
                    HeightStyle = ssAuto
                    WidthStyle = ssAuto
                    ChildOrder = 2
                    ElementPosition = epRelative
                    ElementFont = efCSS
                    Role = ''
                    object divConfigBannerContentHeader: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 762
                      Height = 50
                      ElementClassName = 'order-0 flex-shrink-0 sun-editor'
                      ElementID = 'divConfigBannerContentHeader'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      Role = ''
                    end
                    object divConfigBannerContentFooter: TWebHTMLDiv
                      Left = 0
                      Top = 254
                      Width = 762
                      Height = 20
                      ElementClassName = 'order-2 flex-shrink-0 sun-editor d-flex overflow-hidden'
                      ElementID = 'divConfigBannerContentFooter'
                      WidthStyle = ssAuto
                      ChildOrder = 2
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      Role = ''
                    end
                    object divConfigBannerContent: TWebHTMLDiv
                      Left = 0
                      Top = 50
                      Width = 762
                      Height = 200
                      ElementClassName = 'order-1 flex-fill overflow-hidden'
                      ElementID = 'divConfigBannerContent'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ChildOrder = 1
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      HTML.Strings = (
                        '<textarea id="divConfigBannerContentText">')
                      Role = ''
                    end
                  end
                  object divConfigBannerFooter: TWebHTMLDiv
                    Left = 4
                    Top = 48
                    Width = 762
                    Height = 38
                    ElementClassName = 'order-1 FieldHolder'
                    ElementID = 'divConfigBannerFooter'
                    HeightStyle = ssAuto
                    WidthStyle = ssAuto
                    ChildOrder = 1
                    ElementPosition = epRelative
                    ElementFont = efCSS
                    Role = ''
                    object divConfigBannerFooterLabel: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 80
                      Height = 32
                      ElementClassName = 'FieldLabel'
                      ElementID = 'divConfigBannerFooterLabel'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      HTML.Strings = (
                        'Banner Footer')
                      Role = ''
                    end
                    object edtConfigBannerFooter: TWebEdit
                      Left = 100
                      Top = 0
                      Width = 658
                      Height = 28
                      ChildOrder = 1
                      ElementClassName = 'FieldEdit'
                      ElementID = 'edtConfigBannerFooter'
                      ElementFont = efCSS
                      ElementPosition = epRelative
                      HeightPercent = 100.000000000000000000
                      TabOrder = 141
                      WidthStyle = ssAuto
                      WidthPercent = 100.000000000000000000
                      OnChange = SurveyChanged
                    end
                  end
                  object divConfigBannerTitle: TWebHTMLDiv
                    Left = 4
                    Top = 6
                    Width = 762
                    Height = 38
                    ElementClassName = 'order-0 FieldHolder'
                    ElementID = 'divConfigBannerTitle'
                    HeightStyle = ssAuto
                    WidthStyle = ssAuto
                    ChildOrder = 2
                    ElementPosition = epRelative
                    ElementFont = efCSS
                    Role = ''
                    object divConfigBannerTitleLabel: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 80
                      Height = 32
                      ElementClassName = 'FieldLabel'
                      ElementID = 'divConfigBannerTitleLabel'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      HTML.Strings = (
                        'Banner Title')
                      Role = ''
                    end
                    object edtConfigBannerTitle: TWebEdit
                      Left = 100
                      Top = 0
                      Width = 658
                      Height = 28
                      ChildOrder = 1
                      ElementClassName = 'FieldEdit'
                      ElementID = 'edtConfigBannerTitle'
                      ElementFont = efCSS
                      ElementPosition = epRelative
                      HeightPercent = 100.000000000000000000
                      TabOrder = 140
                      WidthStyle = ssAuto
                      WidthPercent = 100.000000000000000000
                      OnChange = SurveyChanged
                    end
                  end
                end
                object pageBannerPre: TWebTabSheet
                  Left = 0
                  Top = 20
                  Width = 770
                  Height = 533
                  ElementClassName = 'w-100 h-100 Rounded8 border border-dark  bg-info'
                  ElementID = 'pageBannerPre'
                  Caption = 'Pre'
                  ChildOrder = 4
                  ElementBodyClassName = 'd-flex flex-column  gap-1 m-1 h-100'
                  ElementFont = efCSS
                  object divConfigBannerPreContentHolder: TWebHTMLDiv
                    Left = 8
                    Top = 84
                    Width = 762
                    Height = 286
                    ElementClassName = 
                      'order-2 mb-2 d-flex flex-column flex-fill overflow-hidden rounde' +
                      'd border border-dark bg-secondary'
                    ElementID = 'divConfigBannerPreContentHolder'
                    HeightStyle = ssAuto
                    WidthStyle = ssAuto
                    ChildOrder = 2
                    ElementPosition = epRelative
                    ElementFont = efCSS
                    Role = ''
                    object divConfigBannerPreContentHeader: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 762
                      Height = 50
                      ElementClassName = 'order-0 flex-shrink-0 sun-editor'
                      ElementID = 'divConfigBannerPreContentHeader'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      Role = ''
                    end
                    object divConfigBannerPreContentFooter: TWebHTMLDiv
                      Left = 0
                      Top = 266
                      Width = 762
                      Height = 20
                      ElementClassName = 'order-2 flex-shrink-0 sun-editor d-flex overflow-hidden'
                      ElementID = 'divConfigBannerPreContentFooter'
                      WidthStyle = ssAuto
                      ChildOrder = 1
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      Role = ''
                    end
                    object divConfigBannerPreContent: TWebHTMLDiv
                      Left = 0
                      Top = 50
                      Width = 762
                      Height = 215
                      ElementClassName = 'order-1 flex-fill overflow-hidden'
                      ElementID = 'divConfigBannerPreContent'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ChildOrder = 1
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      HTML.Strings = (
                        '<textarea id="divConfigBannerPreContentText">')
                      Role = ''
                    end
                  end
                  object divConfigBannerPreFooter: TWebHTMLDiv
                    Left = 8
                    Top = 48
                    Width = 762
                    Height = 38
                    ElementClassName = 'order-1 FieldHolder'
                    ElementID = 'divConfigBannerPreFooter'
                    HeightStyle = ssAuto
                    WidthStyle = ssAuto
                    ChildOrder = 1
                    ElementPosition = epRelative
                    ElementFont = efCSS
                    Role = ''
                    object divConfigBannerPreFooterLabel: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 80
                      Height = 32
                      ElementClassName = 'FieldLabel'
                      ElementID = 'divConfigBannerPreFooterLabel'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      HTML.Strings = (
                        'Pre Footer')
                      Role = ''
                    end
                    object edtConfigBannerPreFooter: TWebEdit
                      Left = 100
                      Top = 0
                      Width = 658
                      Height = 28
                      ChildOrder = 1
                      ElementClassName = 'FieldEdit'
                      ElementID = 'edtConfigBannerPreFooter'
                      ElementFont = efCSS
                      ElementPosition = epRelative
                      HeightPercent = 100.000000000000000000
                      TabOrder = 151
                      WidthStyle = ssAuto
                      WidthPercent = 100.000000000000000000
                      OnChange = SurveyChanged
                    end
                  end
                  object divConfigBannerPreTitle: TWebHTMLDiv
                    Left = 8
                    Top = 12
                    Width = 762
                    Height = 38
                    ElementClassName = 'order-0 FieldHolder'
                    ElementID = 'divConfigBannerPreTitle'
                    HeightStyle = ssAuto
                    WidthStyle = ssAuto
                    ChildOrder = 2
                    ElementPosition = epRelative
                    ElementFont = efCSS
                    Role = ''
                    object divConfigBannerPreTitleLabel: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 80
                      Height = 32
                      ElementClassName = 'FieldLabel'
                      ElementID = 'divConfigBannerPreTitleLabel'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      HTML.Strings = (
                        'Pre Title')
                      Role = ''
                    end
                    object edtConfigBannerPreTitle: TWebEdit
                      Left = 100
                      Top = 0
                      Width = 658
                      Height = 28
                      ChildOrder = 1
                      ElementClassName = 'FieldEdit'
                      ElementID = 'edtConfigBannerPreTitle'
                      ElementFont = efCSS
                      ElementPosition = epRelative
                      HeightPercent = 100.000000000000000000
                      TabOrder = 150
                      WidthStyle = ssAuto
                      WidthPercent = 100.000000000000000000
                      OnChange = SurveyChanged
                    end
                  end
                end
                object pageBannerPause: TWebTabSheet
                  Left = 0
                  Top = 20
                  Width = 770
                  Height = 533
                  ElementClassName = 'w-100 h-100 Rounded8 border border-dark  bg-info'
                  ElementID = 'pageBannerPause'
                  HeightStyle = ssAuto
                  WidthStyle = ssAuto
                  Caption = 'Pause'
                  ChildOrder = 5
                  ElementBodyClassName = 'd-flex flex-column  gap-1 m-1 h-100'
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  object divConfigBannerPauseContentHolder: TWebHTMLDiv
                    Left = 8
                    Top = 92
                    Width = 762
                    Height = 286
                    ElementClassName = 
                      'order-2 mb-2 d-flex flex-column flex-fill overflow-hidden rounde' +
                      'd border border-dark bg-secondary'
                    ElementID = 'divConfigBannerPauseContentHolder'
                    HeightStyle = ssAuto
                    WidthStyle = ssAuto
                    ChildOrder = 2
                    ElementPosition = epRelative
                    ElementFont = efCSS
                    Role = ''
                    object divConfigBannerPauseContentHeader: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 762
                      Height = 50
                      ElementClassName = 'order-0 flex-shrink-0 sun-editor'
                      ElementID = 'divConfigBannerPauseContentHeader'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      Role = ''
                    end
                    object divConfigBannerPauseContentFooter: TWebHTMLDiv
                      Left = 0
                      Top = 268
                      Width = 762
                      Height = 20
                      ElementClassName = 'order-2 flex-shrink-0 sun-editor d-flex overflow-hidden'
                      ElementID = 'divConfigBannerPauseContentFooter'
                      WidthStyle = ssAuto
                      ChildOrder = 2
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      Role = ''
                    end
                    object divConfigBannerPauseContent: TWebHTMLDiv
                      Left = 0
                      Top = 50
                      Width = 762
                      Height = 217
                      ElementClassName = 'order-1 flex-fill overflow-hidden'
                      ElementID = 'divConfigBannerPauseContent'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ChildOrder = 1
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      HTML.Strings = (
                        '<textarea id="divConfigBannerPauseContentText">')
                      Role = ''
                    end
                  end
                  object divConfigBannerPauseFooter: TWebHTMLDiv
                    Left = 8
                    Top = 56
                    Width = 762
                    Height = 38
                    ElementClassName = 'order-1 FieldHolder'
                    ElementID = 'divConfigBannerPauseFooter'
                    HeightStyle = ssAuto
                    WidthStyle = ssAuto
                    ChildOrder = 1
                    ElementPosition = epRelative
                    ElementFont = efCSS
                    Role = ''
                    object divConfigBannerPauseFooterLabel: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 80
                      Height = 32
                      ElementClassName = 'FieldLabel'
                      ElementID = 'divConfigBannerPauseFooterLabel'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      HTML.Strings = (
                        'Pause Footer')
                      Role = ''
                    end
                    object edtConfigBannerPauseFooter: TWebEdit
                      Left = 100
                      Top = 0
                      Width = 658
                      Height = 28
                      ChildOrder = 1
                      ElementClassName = 'FieldEdit'
                      ElementID = 'edtConfigBannerPauseFooter'
                      ElementFont = efCSS
                      ElementPosition = epRelative
                      HeightPercent = 100.000000000000000000
                      TabOrder = 161
                      WidthStyle = ssAuto
                      WidthPercent = 100.000000000000000000
                      OnChange = SurveyChanged
                    end
                  end
                  object divConfigBannerPauseTitle: TWebHTMLDiv
                    Left = 8
                    Top = 20
                    Width = 762
                    Height = 38
                    ElementClassName = 'order-0 FieldHolder'
                    ElementID = 'divConfigBannerPauseTitle'
                    HeightStyle = ssAuto
                    WidthStyle = ssAuto
                    ChildOrder = 2
                    ElementPosition = epRelative
                    ElementFont = efCSS
                    Role = ''
                    object divConfigBannerPauseTitleLabel: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 80
                      Height = 32
                      ElementClassName = 'FieldLabel'
                      ElementID = 'divConfigBannerPauseTitleLabel'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      HTML.Strings = (
                        'Pause Title')
                      Role = ''
                    end
                    object edtConfigBannerPauseTitle: TWebEdit
                      Left = 100
                      Top = 0
                      Width = 658
                      Height = 28
                      ChildOrder = 1
                      ElementClassName = 'FieldEdit'
                      ElementID = 'edtConfigBannerPauseTitle'
                      ElementFont = efCSS
                      ElementPosition = epRelative
                      HeightPercent = 100.000000000000000000
                      TabOrder = 160
                      WidthStyle = ssAuto
                      WidthPercent = 100.000000000000000000
                      OnChange = SurveyChanged
                    end
                  end
                end
                object pageBannerPost: TWebTabSheet
                  Left = 0
                  Top = 20
                  Width = 770
                  Height = 533
                  ElementClassName = 'w-100 h-100 Rounded8 border border-dark  bg-info'
                  ElementID = 'pageBannerPost'
                  HeightStyle = ssAuto
                  WidthStyle = ssAuto
                  Caption = 'Post'
                  ChildOrder = 6
                  ElementBodyClassName = 'd-flex flex-column  gap-1 m-1 h-100'
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  object divConfigBannerPostContentHolder: TWebHTMLDiv
                    Left = 4
                    Top = 114
                    Width = 762
                    Height = 248
                    ElementClassName = 
                      'order-2 mb-2 d-flex flex-column flex-fill overflow-hidden rounde' +
                      'd border border-dark bg-secondary'
                    ElementID = 'divConfigBannerPostContentHolder'
                    HeightStyle = ssAuto
                    WidthStyle = ssAuto
                    ChildOrder = 2
                    ElementPosition = epRelative
                    ElementFont = efCSS
                    Role = ''
                    object divConfigBannerPostContentHeader: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 762
                      Height = 50
                      ElementClassName = 'order-0 flex-shrink-0 sun-editor'
                      ElementID = 'divConfigBannerPostContentHeader'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      Role = ''
                    end
                    object divConfigBannerPostContentFooter: TWebHTMLDiv
                      Left = 3
                      Top = 210
                      Width = 762
                      Height = 20
                      ElementClassName = 'order-2 flex-shrink-0 sun-editor d-flex overflow-hidden'
                      ElementID = 'divConfigBannerPostContentFooter'
                      WidthStyle = ssAuto
                      ChildOrder = 2
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      Role = ''
                    end
                    object divConfigBannerPostContent: TWebHTMLDiv
                      Left = 0
                      Top = 50
                      Width = 762
                      Height = 150
                      ElementClassName = 'order-1 flex-fill overflow-hidden'
                      ElementID = 'divConfigBannerPostContent'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ChildOrder = 1
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      HTML.Strings = (
                        '<textarea id="divConfigBannerPostContentText">')
                      Role = ''
                    end
                  end
                  object divConfigBannerPostFooter: TWebHTMLDiv
                    Left = 8
                    Top = 64
                    Width = 762
                    Height = 38
                    ElementClassName = 'order-1 FieldHolder'
                    ElementID = 'divConfigBannerPostFooter'
                    HeightStyle = ssAuto
                    WidthStyle = ssAuto
                    ChildOrder = 1
                    ElementPosition = epRelative
                    ElementFont = efCSS
                    Role = ''
                    object divConfigBannerPostFooterLabel: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 80
                      Height = 32
                      ElementClassName = 'FieldLabel'
                      ElementID = 'divConfigBannerPostFooterLabel'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      HTML.Strings = (
                        'Post Footer')
                      Role = ''
                    end
                    object edtConfigBannerPostFooter: TWebEdit
                      AlignWithMargins = True
                      Left = 100
                      Top = 0
                      Width = 678
                      Height = 28
                      ChildOrder = 1
                      ElementClassName = 'FieldEdit'
                      ElementID = 'edtConfigBannerPostFooter'
                      ElementFont = efCSS
                      ElementPosition = epRelative
                      HeightPercent = 100.000000000000000000
                      TabOrder = 171
                      WidthStyle = ssAuto
                      WidthPercent = 100.000000000000000000
                      OnChange = SurveyChanged
                    end
                  end
                  object divConfigBannerPostTitle: TWebHTMLDiv
                    Left = 8
                    Top = 28
                    Width = 762
                    Height = 32
                    ElementClassName = 'order-0 FieldHolder'
                    ElementID = 'divConfigBannerPostTitle'
                    HeightStyle = ssAuto
                    WidthStyle = ssAuto
                    ChildOrder = 2
                    ElementPosition = epRelative
                    ElementFont = efCSS
                    Role = ''
                    object divConfigBannerPostTitleLabel: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 80
                      Height = 32
                      ElementClassName = 'FieldLabel'
                      ElementID = 'divConfigBannerPostTitleLabel'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      HTML.Strings = (
                        'Post Title')
                      Role = ''
                    end
                    object edtConfigBannerPostTitle: TWebEdit
                      Left = 100
                      Top = 0
                      Width = 658
                      Height = 28
                      ChildOrder = 1
                      ElementClassName = 'FieldEdit'
                      ElementID = 'edtConfigBannerPostTitle'
                      ElementFont = efCSS
                      ElementPosition = epRelative
                      HeightPercent = 100.000000000000000000
                      TabOrder = 170
                      WidthStyle = ssAuto
                      WidthPercent = 100.000000000000000000
                      OnChange = SurveyChanged
                    end
                  end
                end
                object pageAbout: TWebTabSheet
                  Left = 0
                  Top = 20
                  Width = 770
                  Height = 533
                  ElementClassName = 'w-100 h-100 Rounded8 border border-dark  bg-info'
                  ElementID = 'pageAbout'
                  HeightStyle = ssAuto
                  WidthStyle = ssAuto
                  Caption = 'Abt'
                  ChildOrder = 7
                  ElementBodyClassName = 'd-flex flex-column  gap-1 m-1 h-100'
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  object divConfigAboutContentHolder: TWebHTMLDiv
                    Left = 8
                    Top = 72
                    Width = 762
                    Height = 322
                    ElementClassName = 
                      'order-1 mb-2 d-flex flex-column flex-fill overflow-hidden rounde' +
                      'd border border-dark bg-secondary'
                    ElementID = 'divConfigAboutContentHolder'
                    HeightStyle = ssAuto
                    WidthStyle = ssAuto
                    ChildOrder = 1
                    ElementPosition = epRelative
                    ElementFont = efCSS
                    Role = ''
                    object divConfigAboutContentHeader: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 762
                      Height = 50
                      ElementClassName = 'order-0 flex-shrink-0 sun-editor'
                      ElementID = 'divConfigAboutContentHeader'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      Role = ''
                    end
                    object divConfigAboutContentFooter: TWebHTMLDiv
                      Left = 0
                      Top = 304
                      Width = 762
                      Height = 20
                      ElementClassName = 'order-2 flex-shrink-0 sun-editor d-flex overflow-hidden'
                      ElementID = 'divConfigAboutContentFooter'
                      WidthStyle = ssAuto
                      ChildOrder = 2
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      Role = ''
                    end
                    object divConfigAboutContent: TWebHTMLDiv
                      Left = 0
                      Top = 50
                      Width = 762
                      Height = 253
                      ElementClassName = 'order-1 flex-fill overflow-hidden'
                      ElementID = 'divConfigAboutContent'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ChildOrder = 1
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      HTML.Strings = (
                        '<textarea id="divConfigAboutContentText">')
                      Role = ''
                    end
                  end
                  object divConfigAboutTitle: TWebHTMLDiv
                    Left = 3
                    Top = 18
                    Width = 762
                    Height = 38
                    ElementClassName = 'order-0 FieldHolder'
                    ElementID = 'divConfigAboutTitle'
                    HeightStyle = ssAuto
                    WidthStyle = ssAuto
                    ChildOrder = 1
                    ElementPosition = epRelative
                    ElementFont = efCSS
                    Role = ''
                    object divConfigAboutTitleLabel: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 80
                      Height = 32
                      ElementClassName = 'FieldLabel'
                      ElementID = 'divConfigAboutTitleLabel'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      HTML.Strings = (
                        'About Title')
                      Role = ''
                    end
                    object edtConfigAboutTitle: TWebEdit
                      Left = 100
                      Top = 0
                      Width = 658
                      Height = 28
                      ChildOrder = 1
                      ElementClassName = 'FieldEdit'
                      ElementID = 'edtConfigAboutTitle'
                      ElementFont = efCSS
                      ElementPosition = epRelative
                      HeightPercent = 100.000000000000000000
                      TabOrder = 180
                      WidthStyle = ssAuto
                      WidthPercent = 100.000000000000000000
                      OnChange = SurveyChanged
                    end
                  end
                end
                object pageFeedback: TWebTabSheet
                  Left = 0
                  Top = 20
                  Width = 770
                  Height = 533
                  ElementClassName = 'w-100 h-100 Rounded8 border border-dark  bg-info'
                  ElementID = 'pageFeedback'
                  HeightStyle = ssAuto
                  WidthStyle = ssAuto
                  Caption = 'Fb'
                  ChildOrder = 8
                  ElementBodyClassName = 'd-flex flex-column  gap-1 m-1 h-100'
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  object divConfigFeedbackContentHolder: TWebHTMLDiv
                    Left = 4
                    Top = 40
                    Width = 762
                    Height = 322
                    ElementClassName = 
                      'order-1 mb-2 d-flex flex-column flex-fill overflow-hidden rounde' +
                      'd border border-dark bg-secondary'
                    ElementID = 'divConfigFeedbackContentHolder'
                    HeightStyle = ssAuto
                    WidthStyle = ssAuto
                    ChildOrder = 1
                    ElementPosition = epRelative
                    ElementFont = efCSS
                    Role = ''
                    object divConfigFeedbackContentHeader: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 762
                      Height = 50
                      ElementClassName = 'order-0 flex-shrink-0 sun-editor'
                      ElementID = 'divConfigFeedbackContentHeader'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      Role = ''
                    end
                    object divConfigFeedbackContentFooter: TWebHTMLDiv
                      Left = 0
                      Top = 304
                      Width = 762
                      Height = 20
                      ElementClassName = 'order-2 flex-shrink-0 sun-editor d-flex overflow-hidden'
                      ElementID = 'divConfigFeedbackContentFooter'
                      WidthStyle = ssAuto
                      ChildOrder = 2
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      Role = ''
                    end
                    object divConfigFeedbackContent: TWebHTMLDiv
                      Left = 0
                      Top = 50
                      Width = 762
                      Height = 253
                      ElementClassName = 'order-1 flex-fill overflow-hidden'
                      ElementID = 'divConfigFeedbackContent'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ChildOrder = 1
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      HTML.Strings = (
                        '<textarea id="divConfigFeedbackContentText">')
                      Role = ''
                    end
                  end
                  object divConfigFeedbackTitle: TWebHTMLDiv
                    Left = 4
                    Top = 2
                    Width = 762
                    Height = 38
                    ElementClassName = 'order-0 FieldHolder'
                    ElementID = 'divConfigFeedbackTitle'
                    HeightStyle = ssAuto
                    WidthStyle = ssAuto
                    ChildOrder = 1
                    ElementPosition = epRelative
                    ElementFont = efCSS
                    Role = ''
                    object divConfigFeedbackTitleLabel: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 80
                      Height = 32
                      ElementClassName = 'FieldLabel'
                      ElementID = 'divConfigFeedbackTitleLabel'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      HTML.Strings = (
                        'Feedback Title')
                      Role = ''
                    end
                    object edtConfigFeedbackTitle: TWebEdit
                      Left = 100
                      Top = 0
                      Width = 658
                      Height = 28
                      ChildOrder = 1
                      ElementClassName = 'FieldEdit'
                      ElementID = 'edtConfigFeedbackTitle'
                      ElementFont = efCSS
                      ElementPosition = epRelative
                      HeightPercent = 100.000000000000000000
                      TabOrder = 190
                      WidthStyle = ssAuto
                      WidthPercent = 100.000000000000000000
                      OnChange = SurveyChanged
                    end
                  end
                end
                object pageChangeHistory: TWebTabSheet
                  Left = 0
                  Top = 20
                  Width = 770
                  Height = 533
                  ElementClassName = 'w-100 h-100 PageNP '
                  ElementID = 'pageChangeHistory'
                  HeightStyle = ssAuto
                  WidthStyle = ssAuto
                  Caption = 'Chg'
                  ChildOrder = 2
                  ElementBodyClassName = 'd-flex flex-column  gap-1'
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  object divChangeHistoryHolder: TWebHTMLDiv
                    Left = 0
                    Top = 0
                    Width = 770
                    Height = 380
                    ElementClassName = 
                      'w-100 h-100 d-flex flex-column  overflow-hidden Rounded8 border ' +
                      'border-dark  bg-white'
                    ElementID = 'divChangeHistoryHolder'
                    HeightStyle = ssAuto
                    WidthStyle = ssAuto
                    ElementPosition = epRelative
                    ElementFont = efCSS
                    Role = ''
                    object divChangeHistoryButtons: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 770
                      Height = 32
                      ElementClassName = 'ButtonBar'
                      ElementID = 'divChangeHistoryButtons'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      Role = ''
                      object btnChangeHistoryReload: TWebButton
                        Tag = 1
                        Left = 0
                        Top = 0
                        Width = 50
                        Height = 24
                        Caption = '<i class="fa-solid fa-rotate"></i>'
                        ElementClassName = 
                          'order-0 ButtonBarReload btn btn-secondary btn-sm border border-1' +
                          ' border-dark'
                        ElementID = 'btnChangeHistoryReload'
                        ElementFont = efCSS
                        ElementPosition = epRelative
                        HeightStyle = ssAuto
                        HeightPercent = 100.000000000000000000
                        WidthStyle = ssAuto
                        WidthPercent = 100.000000000000000000
                        OnClick = btnChangeHistoryReloadClick
                      end
                      object panelChangeHistoryExport: TWebPanel
                        Left = 54
                        Top = 2
                        Width = 339
                        Height = 24
                        Margins.Left = 4
                        Margins.Top = 4
                        Margins.Right = 4
                        Margins.Bottom = 4
                        ElementClassName = 'order-1 ButtonBarGroup'
                        ElementID = 'panelChangeHistoryExport'
                        HeightStyle = ssAuto
                        WidthStyle = ssAuto
                        BorderColor = clNone
                        BorderStyle = bsNone
                        ChildOrder = 6
                        Color = clWhite
                        ElementBodyClassName = 'btn-group'
                        ElementFont = efCSS
                        ElementPosition = epRelative
                        object btnChangeHistoryExport: TWebButton
                          Tag = 4
                          Left = 0
                          Top = -1
                          Width = 50
                          Height = 22
                          Caption = '<i class="fa-solid fa-download fa-lg me-1"></i> Export'
                          ElementClassName = 'order-0 ShortestButton btn btn-dark btn-sm'
                          ElementID = 'btnChangeHistoryExport'
                          ElementFont = efCSS
                          ElementPosition = epRelative
                          HeightPercent = 100.000000000000000000
                          TabOrder = 10
                          WidthStyle = ssAuto
                          WidthPercent = 100.000000000000000000
                          OnClick = btnChangeHistoryExportClick
                        end
                        object btnChangeHistoryExportCSV: TWebButton
                          Left = 70
                          Top = 2
                          Width = 50
                          Height = 22
                          Caption = '<i class="fa-solid fa-file-csv fa-lg me-1"></i> CSV'
                          ChildOrder = 1
                          ElementClassName = 'order-1 ShortestButton btn btn-dark btn-sm'
                          ElementID = 'btnChangeHistoryExportCSV'
                          ElementFont = efCSS
                          ElementPosition = epRelative
                          HeightPercent = 100.000000000000000000
                          TabOrder = 10
                          WidthStyle = ssAuto
                          WidthPercent = 100.000000000000000000
                          OnClick = MenuChangeHistoryExport
                        end
                        object btnChangeHistoryExportExcel: TWebButton
                          Tag = 1
                          Left = 120
                          Top = 2
                          Width = 50
                          Height = 22
                          Caption = '<i class="fa-solid fa-file-excel fa-lg me-1"></i> XLSX'
                          ChildOrder = 2
                          ElementClassName = 'order-2 ShortestButton btn btn-dark btn-sm'
                          ElementID = 'btnChangeHistoryExportExcel'
                          ElementFont = efCSS
                          ElementPosition = epRelative
                          HeightPercent = 100.000000000000000000
                          TabOrder = 10
                          WidthStyle = ssAuto
                          WidthPercent = 100.000000000000000000
                          OnClick = MenuChangeHistoryExport
                        end
                        object btnChangeHistoryExportJSON: TWebButton
                          Tag = 2
                          Left = 170
                          Top = 2
                          Width = 50
                          Height = 22
                          Caption = '<i class="fa-solid fa-file-code fa-lg me-1"></i>  JSON'
                          ChildOrder = 3
                          ElementClassName = 'order-3 ShortestButton btn btn-dark btn-sm'
                          ElementID = 'btnChangeHistoryExportJSON'
                          ElementFont = efCSS
                          ElementPosition = epRelative
                          HeightPercent = 100.000000000000000000
                          TabOrder = 10
                          WidthStyle = ssAuto
                          WidthPercent = 100.000000000000000000
                          OnClick = MenuChangeHistoryExport
                        end
                        object btnChangeHistoryExportPDF: TWebButton
                          Tag = 3
                          Left = 212
                          Top = 2
                          Width = 50
                          Height = 22
                          Caption = '<i class="fa-solid fa-file-pdf fa-lg me-1"></i>  PDF'
                          ChildOrder = 4
                          ElementClassName = 'order-4 ShortestButton btn btn-dark btn-sm'
                          ElementID = 'btnChangeHistoryExportPDF'
                          ElementFont = efCSS
                          ElementPosition = epRelative
                          HeightPercent = 100.000000000000000000
                          TabOrder = 10
                          WidthStyle = ssAuto
                          WidthPercent = 100.000000000000000000
                          OnClick = MenuChangeHistoryExport
                        end
                        object btnChangeHistoryExportPrint: TWebButton
                          Tag = 4
                          Left = 273
                          Top = 2
                          Width = 50
                          Height = 22
                          Caption = '<i class="fa-solid fa-print fa-lg me-1"></i> Print'
                          ChildOrder = 5
                          ElementClassName = 'order-5 ShortestButton btn btn-primary btn-sm'
                          ElementID = 'btnChangeHistoryExportPrint'
                          ElementFont = efCSS
                          ElementPosition = epRelative
                          HeightPercent = 100.000000000000000000
                          TabOrder = 10
                          WidthStyle = ssAuto
                          WidthPercent = 100.000000000000000000
                          OnClick = MenuChangeHistoryExport
                        end
                      end
                    end
                    object divChangeHistory: TWebHTMLDiv
                      Left = 0
                      Top = 33
                      Width = 770
                      Height = 348
                      ElementClassName = 'rounded-bottom flex-fill overflow-hidden border border-0'
                      ElementID = 'divChangeHistory'
                      HeightStyle = ssAuto
                      WidthStyle = ssAuto
                      ChildOrder = 1
                      ElementPosition = epRelative
                      ElementFont = efCSS
                      Role = ''
                    end
                  end
                end
                object pageQRCode: TWebTabSheet
                  Left = 0
                  Top = 20
                  Width = 770
                  Height = 533
                  ElementClassName = 'w-100 h-100 Page Rounded8 border border-dark  bg-info'
                  ElementID = 'pageQRCode'
                  Caption = 'QRCode'
                  ChildOrder = 10
                  ElementBodyClassName = 'd-flex'
                  ElementFont = efCSS
                  MaterialGlyphColor = clBlack
                  object divQRCodeHolder: TWebHTMLDiv
                    Left = 4
                    Top = 5
                    Width = 762
                    Height = 372
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    ElementClassName = 'overflow-hidden flex-fill rounded border border-dark bg-white'
                    ElementID = 'divQRCodeHolder'
                    HeightStyle = ssAuto
                    WidthStyle = ssAuto
                    ElementPosition = epRelative
                    ElementFont = efCSS
                    Role = ''
                    object divQRCodeConstraints: TWebHTMLDiv
                      Left = 0
                      Top = 0
                      Width = 308
                      Height = 365
                      Margins.Left = 0
                      Margins.Top = 0
                      Margins.Right = 0
                      Margins.Bottom = 0
                      ElementID = 'divQRCodeConstraints'
                      ChildOrder = 1
                      ElementFont = efCSS
                      Role = ''
                      object qrcode: TTMSFNCWXQRCode
                        AlignWithMargins = True
                        Left = 20
                        Top = 20
                        Width = 268
                        Height = 325
                        Margins.Left = 20
                        Margins.Top = 20
                        Margins.Right = 20
                        Margins.Bottom = 20
                        Align = alClient
                        ParentDoubleBuffered = False
                        DoubleBuffered = True
                        ParentShowHint = False
                        ShowHint = False
                        TabOrder = 0
                        ShowAcceleratorChar = False
                        Text = '123456'
                        Settings.ColorDark = clMaroon
                        Settings.PositionColor.TopLeftInnerColor = clMaroon
                        Settings.PositionColor.TopRightInnerColor = clMaroon
                        Settings.PositionColor.BottomRightInnerColor = clMaroon
                        Settings.TimingHorizonalColor = clMaroon
                        Settings.TimingVerticalColor = clMaroon
                        Settings.TitleFont.Charset = DEFAULT_CHARSET
                        Settings.TitleFont.Color = clWindowText
                        Settings.TitleFont.Height = -11
                        Settings.TitleFont.Name = 'Tahoma'
                        Settings.TitleFont.Style = []
                        Settings.SubTitleFont.Charset = DEFAULT_CHARSET
                        Settings.SubTitleFont.Color = clWindowText
                        Settings.SubTitleFont.Height = -11
                        Settings.SubTitleFont.Name = 'Tahoma'
                        Settings.SubTitleFont.Style = []
                        Settings.QuietZoneColor = clBlack
                        Settings.AutoColorDark = clMaroon
                        Settings.AutoColorDarkAlpha = 0.600000023841857900
                        Settings.AutoColorLightAlpha = 0.699999988079071000
                      end
                    end
                  end
                end
              end
            end
            object divSurveysOptionsHolder: TWebHTMLDiv
              Left = 0
              Top = 12
              Width = 168
              Height = 514
              ElementClassName = 
                'RightSplitter order-0 d-flex flex-shrink-0 overflow-hidden Round' +
                'ed8 border border-dark  bg-dark'
              ElementID = 'divSurveysOptionsHolder'
              HeightStyle = ssAuto
              WidthStyle = ssAuto
              ElementPosition = epRelative
              ElementFont = efCSS
              Role = ''
              object divSurveysOptionsResize: TWebHTMLDiv
                Left = 24
                Top = 456
                Width = 100
                Height = 41
                ElementClassName = 'ResizeElement'
                ElementID = 'divSurveysOptionsResize'
                HeightStyle = ssAuto
                WidthStyle = ssAuto
                ChildOrder = 2
                ElementPosition = epIgnore
                ElementFont = efCSS
                HTML.Strings = (
                  '<div class="InnerTriangle1"></div>'
                  '<div class="InnerTriangle2"></div>')
                Role = ''
              end
              object divSurveysOptions: TWebHTMLDiv
                Left = 0
                Top = 2
                Width = 142
                Height = 393
                ElementClassName = 'flex-fill w-100 h-100 border border-0'
                ElementID = 'divSurveysOptions'
                HeightStyle = ssAuto
                WidthStyle = ssAuto
                ChildOrder = 1
                ElementPosition = epRelative
                ElementFont = efCSS
                Role = ''
              end
            end
          end
          object pageQuestion: TWebTabSheet
            Left = 0
            Top = 20
            Width = 961
            Height = 589
            ElementClassName = 'w-100 h-100 PageNP bg-light'
            ElementID = 'pageQuestion'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            Caption = 'Questions'
            ChildOrder = 1
            ElementFont = efCSS
            ElementPosition = epRelative
            object divQuestionsHolder: TWebHTMLDiv
              Left = 2
              Top = 0
              Width = 250
              Height = 537
              ElementClassName = 
                'RightSplitter flex-shrink-0 d-flex flex-column overflow-hidden R' +
                'ounded8 border border-dark  bg-white'
              ElementID = 'divQuestionsHolder'
              HeightStyle = ssAuto
              WidthStyle = ssAuto
              ChildOrder = 1
              ElementPosition = epRelative
              ElementFont = efCSS
              Role = ''
              object divQuestionsButtons: TWebHTMLDiv
                Left = 4
                Top = 0
                Width = 267
                Height = 32
                ElementClassName = 'm-1 d-flex align-items-center justify-content-stretch gap-1'
                ElementID = 'divQuestionsButtons'
                HeightStyle = ssAuto
                WidthStyle = ssAuto
                ElementPosition = epRelative
                ElementFont = efCSS
                Role = ''
                object btnQuestionsNew: TWebButton
                  AlignWithMargins = True
                  Left = 50
                  Top = 5
                  Width = 50
                  Height = 24
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Right = 1
                  Margins.Bottom = 0
                  Caption = '<i class="fa-solid fa-plus me-1 "></i> New'
                  ChildOrder = 1
                  ElementClassName = 
                    'order-1 ShortButton flex-fill btn btn-primary btn-sm border bord' +
                    'er-1 border-dark'
                  ElementID = 'btnQuestionsNew'
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  HeightPercent = 100.000000000000000000
                  TabOrder = 31
                  WidthStyle = ssAuto
                  WidthPercent = 100.000000000000000000
                  OnClick = btnQuestionsNewClick
                end
                object btnQuestionsDelete: TWebButton
                  Tag = 1
                  AlignWithMargins = True
                  Left = 101
                  Top = 5
                  Width = 50
                  Height = 24
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Right = 1
                  Margins.Bottom = 0
                  Caption = '<i class="fa-solid fa-trash-can me-1"></i>Delete'
                  ChildOrder = 2
                  ElementClassName = 
                    'order-2 ShortButton flex-fill btn btn-danger btn-sm border borde' +
                    'r-1 border-dark'
                  ElementID = 'btnQuestionsDelete'
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  HeightPercent = 100.000000000000000000
                  TabOrder = 32
                  WidthStyle = ssAuto
                  WidthPercent = 100.000000000000000000
                  OnClick = btnQuestionsDeleteClick
                end
                object btnQuestionsClone: TWebButton
                  Tag = 2
                  AlignWithMargins = True
                  Left = 152
                  Top = 5
                  Width = 50
                  Height = 24
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Caption = '<i class="fa-solid fa-clone me-1"></i> Clone'
                  ChildOrder = 3
                  ElementClassName = 
                    'order-3 ShortButton flex-fill  btn btn-success btn-sm border bor' +
                    'der-1 border-dark'
                  ElementID = 'btnQuestionsClone'
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  HeightPercent = 100.000000000000000000
                  TabOrder = 33
                  WidthStyle = ssAuto
                  WidthPercent = 100.000000000000000000
                  OnClick = btnQuestionsCloneClick
                end
                object btnQuestionsReload: TWebButton
                  Tag = 2
                  AlignWithMargins = True
                  Left = 0
                  Top = 5
                  Width = 50
                  Height = 24
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Caption = '<i class="fa-solid fa-rotate"></i>'
                  ElementClassName = 
                    'order-0 ReloadButton btn btn-secondary btn-sm border border-1 bo' +
                    'rder-dark'
                  ElementID = 'btnQuestionsReload'
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  HeightPercent = 100.000000000000000000
                  TabOrder = 30
                  WidthPercent = 100.000000000000000000
                  OnClick = btnQuestionsReloadClick
                end
              end
              object divQuestions: TWebHTMLDiv
                Left = 0
                Top = 31
                Width = 250
                Height = 432
                ElementClassName = 'w-100 flex-fill rounded-bottom overflow-hidden border border-0'
                ElementID = 'divQuestions'
                HeightStyle = ssAuto
                WidthStyle = ssAuto
                ChildOrder = 1
                ElementPosition = epRelative
                ElementFont = efCSS
                Role = ''
              end
              object divQuestionsHolderResize: TWebHTMLDiv
                Left = 75
                Top = 493
                Width = 100
                Height = 41
                ElementClassName = 'ResizeElement'
                ElementID = 'divQuestionsHolderResize'
                HeightStyle = ssAuto
                WidthStyle = ssAuto
                ChildOrder = 2
                ElementPosition = epIgnore
                ElementFont = efCSS
                HTML.Strings = (
                  '<div class="InnerTriangle1"></div>'
                  '<div class="InnerTriangle2"></div>')
                Role = ''
              end
            end
            object divQuestion: TWebHTMLDiv
              Left = 293
              Top = 0
              Width = 664
              Height = 529
              ElementClassName = 
                'p-1 gap-1 order-1 w-100 h-100 d-flex flex-column Rounded8 border' +
                ' border-dark  bg-info'
              ElementID = 'divQuestion'
              HeightStyle = ssAuto
              WidthStyle = ssAuto
              ChildOrder = 2
              ElementPosition = epRelative
              ElementFont = efCSS
              Role = ''
              Visible = False
              object divQuestionTypeHolder: TWebHTMLDiv
                Left = 5
                Top = 157
                Width = 656
                Height = 38
                ElementClassName = 'order-4 FieldHolder'
                ElementID = 'divQuestionTypeHolder'
                HeightStyle = ssAuto
                WidthStyle = ssAuto
                ElementPosition = epRelative
                ElementFont = efCSS
                Role = ''
                object divQuestionType: TWebHTMLDiv
                  Left = 0
                  Top = 0
                  Width = 80
                  Height = 32
                  ElementClassName = 'FieldLabel'
                  ElementID = 'divQuestionType'
                  HeightStyle = ssAuto
                  WidthStyle = ssAuto
                  ElementPosition = epRelative
                  ElementFont = efCSS
                  HTML.Strings = (
                    'Type')
                  Role = ''
                end
                object ddQuestionType: TWebDropDownControl
                  Left = 100
                  Top = 0
                  Width = 552
                  Height = 28
                  Cursor = crHandPoint
                  ElementClassName = 'overflow-hidden FieldEdit bg-white border border-1 border-dark'
                  ElementID = 'ddQuestionType'
                  WidthStyle = ssAuto
                  AutoDropDown = True
                  ChildOrder = 1
                  Color = clNone
                  Control = panelQuestionTypes
                  DropDownColor = clNone
                  DropDownHeight = 437
                  DropDownShadow = False
                  DropDownWidth = 450
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  ParentColor = False
                  TabOrder = 1
                  Text = ''
                  OnDropDown = ddQuestionTypeDropDown
                end
              end
              object divQuestionNameHolder: TWebHTMLDiv
                Left = 5
                Top = 38
                Width = 656
                Height = 38
                ElementClassName = 'order-1 FieldHolder'
                ElementID = 'divQuestionNameHolder'
                HeightStyle = ssAuto
                WidthStyle = ssAuto
                ChildOrder = 1
                ElementPosition = epRelative
                ElementFont = efCSS
                Role = ''
                object divQuestionName: TWebHTMLDiv
                  Left = 0
                  Top = 0
                  Width = 80
                  Height = 32
                  ElementClassName = 'FieldLabel'
                  ElementID = 'divQuestionName'
                  HeightStyle = ssAuto
                  WidthStyle = ssAuto
                  ElementPosition = epRelative
                  ElementFont = efCSS
                  HTML.Strings = (
                    'Name')
                  Role = ''
                end
                object edtQuestionName: TWebEdit
                  Left = 100
                  Top = 0
                  Width = 552
                  Height = 28
                  ChildOrder = 1
                  ElementClassName = 'FieldEdit'
                  ElementID = 'edtQuestionName'
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  HeightPercent = 100.000000000000000000
                  SpellCheck = False
                  TabOrder = 100
                  WidthStyle = ssAuto
                  WidthPercent = 100.000000000000000000
                  OnChange = QuestionChanged
                end
              end
              object divQuestionIDHolder: TWebHTMLDiv
                Left = 5
                Top = 0
                Width = 658
                Height = 38
                ElementClassName = 'order-0 FieldHolder'
                ElementID = 'divQuestionIDHolder'
                HeightStyle = ssAuto
                WidthStyle = ssAuto
                ChildOrder = 2
                ElementPosition = epIgnore
                ElementFont = efCSS
                Role = ''
                object divQuestionID: TWebHTMLDiv
                  Left = 0
                  Top = 0
                  Width = 80
                  Height = 32
                  ElementClassName = 'FieldLabel'
                  ElementID = 'divQuestionID'
                  HeightStyle = ssAuto
                  WidthStyle = ssAuto
                  ElementPosition = epRelative
                  ElementFont = efCSS
                  HTML.Strings = (
                    'Question ID')
                  Role = ''
                end
                object edtQuestionID: TWebEdit
                  Left = 100
                  Top = 0
                  Width = 552
                  Height = 28
                  ChildOrder = 1
                  ElementClassName = 'FieldEdit'
                  ElementID = 'edtQuestionID'
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  HeightPercent = 100.000000000000000000
                  ReadOnly = True
                  SpellCheck = False
                  TabOrder = 100
                  WidthStyle = ssAuto
                  WidthPercent = 100.000000000000000000
                end
              end
              object divQuestionContentHolder: TWebHTMLDiv
                Left = 4
                Top = 320
                Width = 656
                Height = 206
                ElementClassName = 
                  'order-7 d-flex flex-column flex-fill overflow-hidden rounded bor' +
                  'der border-dark bg-secondary'
                ElementID = 'divQuestionContentHolder'
                HeightStyle = ssAuto
                WidthStyle = ssAuto
                ChildOrder = 2
                ElementPosition = epRelative
                ElementFont = efCSS
                Role = ''
                object divQuestionContentHeader: TWebHTMLDiv
                  Left = 0
                  Top = 3
                  Width = 656
                  Height = 50
                  ElementClassName = 'order-0 sun-editor'
                  ElementID = 'divQuestionContentHeader'
                  HeightStyle = ssAuto
                  WidthStyle = ssAuto
                  ElementPosition = epRelative
                  ElementFont = efCSS
                  Role = ''
                end
                object divQuestionContentFooter: TWebHTMLDiv
                  Left = 0
                  Top = 184
                  Width = 656
                  Height = 20
                  ElementClassName = 'order-2 sun-editor d-flex overflow-hidden'
                  ElementID = 'divQuestionContentFooter'
                  WidthStyle = ssAuto
                  ChildOrder = 1
                  ElementPosition = epRelative
                  ElementFont = efCSS
                  Role = ''
                end
                object divQuestionContent: TWebHTMLDiv
                  Left = 0
                  Top = 53
                  Width = 656
                  Height = 125
                  ElementClassName = 'order-1 flex-fill overflow-hidden'
                  ElementID = 'divQuestionContent'
                  WidthStyle = ssAuto
                  ChildOrder = 2
                  ElementPosition = epRelative
                  ElementFont = efCSS
                  HTML.Strings = (
                    '<textarea id="divQuestionContentText">')
                  Role = ''
                end
              end
              object divQuestionOptionsHolder: TWebHTMLDiv
                Left = 5
                Top = 203
                Width = 656
                Height = 38
                ElementClassName = 'order-5 FieldHolder'
                ElementID = 'divQuestionOptionsHolder'
                HeightStyle = ssAuto
                WidthStyle = ssAuto
                ChildOrder = 1
                ElementPosition = epRelative
                ElementFont = efCSS
                Role = ''
                object divQuestionOptions: TWebHTMLDiv
                  Left = 0
                  Top = 0
                  Width = 80
                  Height = 32
                  ElementClassName = 'FieldLabel'
                  ElementID = 'divQuestionOptions'
                  HeightStyle = ssAuto
                  WidthStyle = ssAuto
                  ElementPosition = epRelative
                  ElementFont = efCSS
                  HTML.Strings = (
                    'Options')
                  Role = ''
                end
                object edtQuestionOptions: TWebEdit
                  Left = 100
                  Top = 0
                  Width = 552
                  Height = 28
                  ChildOrder = 1
                  ElementClassName = 'FieldEdit'
                  ElementID = 'edtQuestionOptions'
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  HeightPercent = 100.000000000000000000
                  SpellCheck = False
                  TabOrder = 100
                  WidthStyle = ssAuto
                  WidthPercent = 100.000000000000000000
                  OnChange = QuestionChanged
                end
              end
              object divQuestionOptionsInfo: TWebHTMLDiv
                AlignWithMargins = True
                Left = 4
                Top = 244
                Width = 656
                Height = 32
                ElementClassName = 
                  'w-100 flex-shrink-0 order-6 overflow-hidden rounded border borde' +
                  'r-dark bg-light'
                ElementID = 'divQuestionOptionsInfo'
                HeightStyle = ssAuto
                ChildOrder = 1
                ElementPosition = epRelative
                ElementFont = efCSS
                HTML.Strings = (
                  '+Title: Display alternate title<br />'
                  '+Footer: Display alternate footer<br />'
                  '+Fireworks: Adds a fireworks display to the page<br />')
                Role = ''
              end
              object divQuestionTitleHolder: TWebHTMLDiv
                Left = 5
                Top = 79
                Width = 656
                Height = 38
                ElementClassName = 'order-2 FieldHolder'
                ElementID = 'divQuestionTitleHolder'
                HeightStyle = ssAuto
                WidthStyle = ssAuto
                ChildOrder = 1
                ElementPosition = epRelative
                ElementFont = efCSS
                Role = ''
                object divQuestionTitle: TWebHTMLDiv
                  Left = 0
                  Top = 0
                  Width = 80
                  Height = 32
                  ElementClassName = 'FieldLabel'
                  ElementID = 'divQuestionTitle'
                  HeightStyle = ssAuto
                  WidthStyle = ssAuto
                  ElementPosition = epRelative
                  ElementFont = efCSS
                  HTML.Strings = (
                    'Title')
                  Role = ''
                end
                object edtQuestionTitle: TWebEdit
                  Left = 100
                  Top = 0
                  Width = 552
                  Height = 28
                  ChildOrder = 1
                  ElementClassName = 'FieldEdit'
                  ElementID = 'edtQuestionTitle'
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  HeightPercent = 100.000000000000000000
                  SpellCheck = False
                  TabOrder = 100
                  WidthStyle = ssAuto
                  WidthPercent = 100.000000000000000000
                  OnChange = QuestionChanged
                end
              end
              object divQuestionFooterHolder: TWebHTMLDiv
                Left = 5
                Top = 115
                Width = 656
                Height = 38
                ElementClassName = 'order-3 FieldHolder'
                ElementID = 'divQuestionFooterHolder'
                HeightStyle = ssAuto
                WidthStyle = ssAuto
                ChildOrder = 1
                ElementPosition = epRelative
                ElementFont = efCSS
                Role = ''
                object divQuestionFooter: TWebHTMLDiv
                  Left = 0
                  Top = 0
                  Width = 80
                  Height = 32
                  ElementClassName = 'FieldLabel'
                  ElementID = 'divQuestionFooter'
                  HeightStyle = ssAuto
                  WidthStyle = ssAuto
                  ElementPosition = epRelative
                  ElementFont = efCSS
                  HTML.Strings = (
                    'Footer')
                  Role = ''
                end
                object edtQuestionFooter: TWebEdit
                  Left = 100
                  Top = 0
                  Width = 552
                  Height = 28
                  ChildOrder = 1
                  ElementClassName = 'FieldEdit'
                  ElementID = 'edtQuestionFooter'
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  HeightPercent = 100.000000000000000000
                  SpellCheck = False
                  TabOrder = 100
                  WidthStyle = ssAuto
                  WidthPercent = 100.000000000000000000
                  OnChange = QuestionChanged
                end
              end
            end
          end
          object pagePermissions: TWebTabSheet
            Left = 0
            Top = 20
            Width = 961
            Height = 589
            ElementClassName = 'w-100 h-100 PageNP'
            ElementID = 'pagePermissions'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            Caption = 'Permissions'
            ChildOrder = 3
            ElementFont = efCSS
            ElementPosition = epRelative
            object divPermissionsHolder: TWebHTMLDiv
              Left = 4
              Top = 0
              Width = 498
              Height = 464
              ElementClassName = 
                'Rounded8 d-flex flex-fill flex-column overflow-hidden border bor' +
                'der-1 border-dark  bg-white'
              ElementID = 'divPermissionsHolder'
              HeightStyle = ssAuto
              WidthStyle = ssAuto
              ChildOrder = 1
              ElementPosition = epRelative
              ElementFont = efCSS
              Role = ''
              object divPermissionsButtons: TWebHTMLDiv
                Left = 0
                Top = 0
                Width = 490
                Height = 32
                ElementClassName = 'order-0 ButtonBar'
                ElementID = 'divPermissionsButtons'
                HeightStyle = ssAuto
                WidthStyle = ssAuto
                ElementPosition = epRelative
                ElementFont = efCSS
                Role = ''
                object btnPermissionsReload: TWebButton
                  Tag = 1
                  Left = 0
                  Top = 0
                  Width = 50
                  Height = 24
                  Caption = '<i class="fa-solid fa-rotate"></i>'
                  ElementClassName = 
                    'order-0 ButtonBarReload btn btn-secondary btn-sm border border-1' +
                    ' border-dark'
                  ElementID = 'divPermissionsReload'
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  HeightStyle = ssAuto
                  HeightPercent = 100.000000000000000000
                  WidthStyle = ssAuto
                  WidthPercent = 100.000000000000000000
                  OnClick = btnPermissionsReloadClick
                end
                object panelPermissionsExport: TWebPanel
                  Left = 58
                  Top = 0
                  Width = 339
                  Height = 24
                  ElementClassName = 'order-1 ButtonBarGroup'
                  ElementID = 'panelPermissionsExport'
                  HeightStyle = ssAuto
                  WidthStyle = ssAuto
                  BorderColor = clNone
                  BorderStyle = bsNone
                  ChildOrder = 6
                  Color = clWhite
                  ElementBodyClassName = 'btn-group'
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  object btnPermissionsExport: TWebButton
                    Tag = 4
                    Left = 40
                    Top = 0
                    Width = 50
                    Height = 22
                    Caption = '<i class="fa-solid fa-download fa-lg me-1"></i> Export'
                    ElementClassName = 'order-0 ShortestButton btn btn-dark btn-sm'
                    ElementID = 'btnPermissionsExport'
                    ElementFont = efCSS
                    ElementPosition = epRelative
                    HeightPercent = 100.000000000000000000
                    TabOrder = 10
                    WidthStyle = ssAuto
                    WidthPercent = 100.000000000000000000
                    OnClick = btnPermissionsExportClick
                  end
                  object btnPermissionsExportCSV: TWebButton
                    Left = 86
                    Top = 0
                    Width = 50
                    Height = 22
                    Caption = '<i class="fa-solid fa-file-csv fa-lg me-1"></i> CSV'
                    ChildOrder = 1
                    ElementClassName = 'order-1 ShortestButton btn btn-dark btn-sm'
                    ElementID = 'btnPermissionsExportCSV'
                    ElementFont = efCSS
                    ElementPosition = epRelative
                    HeightPercent = 100.000000000000000000
                    TabOrder = 10
                    WidthStyle = ssAuto
                    WidthPercent = 100.000000000000000000
                    OnClick = MenuPermissionsExport
                  end
                  object btnPermissionsExportExcel: TWebButton
                    Tag = 1
                    Left = 136
                    Top = 0
                    Width = 50
                    Height = 22
                    Caption = '<i class="fa-solid fa-file-excel fa-lg me-1"></i> XLSX'
                    ChildOrder = 2
                    ElementClassName = 'order-2 ShortestButton btn btn-dark btn-sm'
                    ElementID = 'btnPermissionsExportExcel'
                    ElementFont = efCSS
                    ElementPosition = epRelative
                    HeightPercent = 100.000000000000000000
                    TabOrder = 10
                    WidthStyle = ssAuto
                    WidthPercent = 100.000000000000000000
                    OnClick = MenuPermissionsExport
                  end
                  object btnPermissionsExportJSON: TWebButton
                    Tag = 2
                    Left = 186
                    Top = 0
                    Width = 50
                    Height = 22
                    Caption = '<i class="fa-solid fa-file-code fa-lg me-1"></i>  JSON'
                    ChildOrder = 3
                    ElementClassName = 'order-3 ShortestButton btn btn-dark btn-sm'
                    ElementID = 'btnPermissionsExportJSON'
                    ElementFont = efCSS
                    ElementPosition = epRelative
                    HeightPercent = 100.000000000000000000
                    TabOrder = 10
                    WidthStyle = ssAuto
                    WidthPercent = 100.000000000000000000
                    OnClick = MenuPermissionsExport
                  end
                  object btnPermissionsExportPDF: TWebButton
                    Tag = 3
                    Left = 236
                    Top = 0
                    Width = 50
                    Height = 22
                    Caption = '<i class="fa-solid fa-file-pdf fa-lg me-1"></i>  PDF'
                    ChildOrder = 4
                    ElementClassName = 'order-4 ShortestButton btn btn-dark btn-sm'
                    ElementID = 'btnPermissionsExportPDF'
                    ElementFont = efCSS
                    ElementPosition = epRelative
                    HeightPercent = 100.000000000000000000
                    TabOrder = 10
                    WidthStyle = ssAuto
                    WidthPercent = 100.000000000000000000
                    OnClick = MenuPermissionsExport
                  end
                  object btnPermissionsExportPrint: TWebButton
                    Tag = 4
                    Left = 282
                    Top = 1
                    Width = 50
                    Height = 22
                    Caption = '<i class="fa-solid fa-print fa-lg me-1"></i> Print'
                    ChildOrder = 5
                    ElementClassName = 'order-5 ShortestButton btn btn-primary btn-sm'
                    ElementID = 'btnPermissionsExportPrint'
                    ElementFont = efCSS
                    ElementPosition = epRelative
                    HeightPercent = 100.000000000000000000
                    TabOrder = 10
                    WidthStyle = ssAuto
                    WidthPercent = 100.000000000000000000
                    OnClick = MenuPermissionsExport
                  end
                end
              end
              object divPermissions: TWebHTMLDiv
                Left = 0
                Top = 0
                Width = 498
                Height = 464
                ElementClassName = 'rounded-bottom flex-fill overflow-hidden border border-0'
                ElementID = 'divPermissions'
                HeightStyle = ssAuto
                WidthStyle = ssAuto
                Align = alClient
                ChildOrder = 1
                ElementPosition = epRelative
                ElementFont = efCSS
                Role = ''
              end
            end
          end
          object pagePreview: TWebTabSheet
            Left = 0
            Top = 20
            Width = 961
            Height = 589
            ElementClassName = 'w-100 h-100 PageNP'
            ElementID = 'pagePreview'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            Caption = 'Preview'
            ChildOrder = 2
            ElementFont = efCSS
            ElementPosition = epRelative
            object divPreviewHolder: TWebHTMLDiv
              Left = 0
              Top = 0
              Width = 953
              Height = 464
              ElementClassName = 
                'Rounded8 d-flex flex-fill flex-column overflow-hidden border bor' +
                'der-1 border-dark  bg-white'
              ElementID = 'divPreviewHolder'
              HeightStyle = ssAuto
              WidthStyle = ssAuto
              ChildOrder = 1
              ElementPosition = epRelative
              ElementFont = efCSS
              Role = ''
              object divPreviewButtons: TWebHTMLDiv
                Left = 3
                Top = 0
                Width = 948
                Height = 32
                ElementClassName = 'order-0 ButtonBar w-100 pe-2'
                ElementID = 'divPreviewButtons'
                HeightStyle = ssAuto
                WidthStyle = ssAuto
                ElementPosition = epRelative
                ElementFont = efCSS
                Role = ''
                object labelPreviewAvailabilityCountdown: TWebLabel
                  Left = 838
                  Top = 3
                  Width = 110
                  Height = 24
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Countdown: 0d 0h 0m 0s'
                  ChildOrder = 4
                  ElementClassName = 
                    'order-5 rounded-1 CountDown btn btn-warning px-2 border border-1' +
                    ' border-dark'
                  ElementID = 'labelPreviewAvailabilityCountdown'
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  HeightStyle = ssAuto
                  HeightPercent = 100.000000000000000000
                  WidthPercent = 100.000000000000000000
                end
                object btnPreviewReload: TWebButton
                  Tag = 2
                  Left = 0
                  Top = 5
                  Width = 50
                  Height = 24
                  Caption = '<i class="fa-solid fa-rotate"></i>'
                  ElementClassName = 
                    'order-0 ButtonBarReload btn btn-secondary btn-sm border border-1' +
                    ' border-dark'
                  ElementID = 'divPermissionsReload'
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  HeightStyle = ssAuto
                  HeightPercent = 100.000000000000000000
                  WidthStyle = ssAuto
                  WidthPercent = 100.000000000000000000
                  OnClick = btnPreviewReloadClick
                end
                object panelPreviewSize: TWebPanel
                  AlignWithMargins = True
                  Left = 144
                  Top = 5
                  Width = 181
                  Height = 24
                  ElementClassName = 'order-2 ButtonBarGroup'
                  ElementID = 'panelPreviewSize'
                  HeightStyle = ssAuto
                  WidthStyle = ssAuto
                  BorderColor = clNone
                  BorderStyle = bsNone
                  ChildOrder = 1
                  Color = clWhite
                  ElementBodyClassName = 'btn-group'
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  object btnPreviewSize0: TWebButton
                    Left = 10
                    Top = 0
                    Width = 27
                    Height = 22
                    Caption = '<i class="Circle0"></i>'
                    ElementClassName = 'order-0 ShorterButton btn btn-dark btn-sm'
                    ElementID = 'btnPreviewSize0'
                    ElementFont = efCSS
                    ElementPosition = epRelative
                    HeightPercent = 100.000000000000000000
                    TabOrder = 10
                    WidthPercent = 100.000000000000000000
                    OnClick = btnPreviewSizeClick
                  end
                  object btnPreviewSize1: TWebButton
                    Tag = 1
                    Left = 43
                    Top = 0
                    Width = 27
                    Height = 22
                    Caption = '<i class="Circle1"></i>'
                    ChildOrder = 1
                    ElementClassName = 'order-1 ShorterButton btn btn-dark btn-sm'
                    ElementID = 'btnPreviewSize1'
                    ElementFont = efCSS
                    ElementPosition = epRelative
                    HeightPercent = 100.000000000000000000
                    TabOrder = 10
                    WidthPercent = 100.000000000000000000
                    OnClick = btnPreviewSizeClick
                  end
                  object btnPreviewSize2: TWebButton
                    Tag = 2
                    Left = 76
                    Top = 0
                    Width = 27
                    Height = 22
                    Caption = '<i class="Circle2"></i>'
                    ChildOrder = 2
                    ElementClassName = 'order-2 ShorterButton btn btn-primary btn-sm'
                    ElementID = 'btnPreviewSize2'
                    ElementFont = efCSS
                    ElementPosition = epRelative
                    HeightPercent = 100.000000000000000000
                    TabOrder = 10
                    WidthPercent = 100.000000000000000000
                    OnClick = btnPreviewSizeClick
                  end
                  object btnPreviewSize3: TWebButton
                    Tag = 3
                    Left = 104
                    Top = 0
                    Width = 27
                    Height = 22
                    Caption = '<i class="Circle3"></i>'
                    ChildOrder = 3
                    ElementClassName = 'order-3 ShorterButton btn btn-dark btn-sm'
                    ElementID = 'btnPreviewSize3'
                    ElementFont = efCSS
                    ElementPosition = epRelative
                    HeightPercent = 100.000000000000000000
                    TabOrder = 10
                    WidthPercent = 100.000000000000000000
                    OnClick = btnPreviewSizeClick
                  end
                  object btnPreviewSize4: TWebButton
                    Tag = 4
                    Left = 137
                    Top = 0
                    Width = 27
                    Height = 22
                    Caption = '<i class="Circle4"></i>'
                    ChildOrder = 4
                    ElementClassName = 'order-4 ShorterButton btn btn-dark btn-sm'
                    ElementID = 'btnPreviewSize4'
                    ElementFont = efCSS
                    ElementPosition = epRelative
                    HeightPercent = 100.000000000000000000
                    TabOrder = 10
                    WidthPercent = 100.000000000000000000
                    OnClick = btnPreviewSizeClick
                  end
                end
                object panelPreviewStatus: TWebPanel
                  AlignWithMargins = True
                  Left = 331
                  Top = 4
                  Width = 302
                  Height = 24
                  ElementClassName = 'order-3 ButtonBarGroup'
                  ElementID = 'panelPreviewStatus'
                  HeightStyle = ssAuto
                  WidthStyle = ssAuto
                  BorderColor = clNone
                  BorderStyle = bsNone
                  ChildOrder = 2
                  Color = clWhite
                  ElementBodyClassName = 'btn-group'
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  object btnPreviewAuto: TWebButton
                    Left = 10
                    Top = 0
                    Width = 50
                    Height = 24
                    Caption = 'Auto'
                    ElementClassName = 'order-0 ShortestButton btn btn-primary btn-sm'
                    ElementID = 'btnPreviewAuto'
                    ElementFont = efCSS
                    ElementPosition = epRelative
                    HeightStyle = ssAuto
                    HeightPercent = 100.000000000000000000
                    TabOrder = 10
                    WidthStyle = ssAuto
                    WidthPercent = 100.000000000000000000
                    OnClick = btnPreviewTimeClick
                  end
                  object btnPreviewActive: TWebButton
                    Tag = 1
                    Left = 52
                    Top = 0
                    Width = 50
                    Height = 24
                    Caption = 'Active'
                    ChildOrder = 1
                    ElementClassName = 'order-1 ShortestButton btn btn-dark btn-sm'
                    ElementID = 'btnPreviewActive'
                    ElementFont = efCSS
                    ElementPosition = epRelative
                    HeightStyle = ssAuto
                    HeightPercent = 100.000000000000000000
                    TabOrder = 10
                    WidthStyle = ssAuto
                    WidthPercent = 100.000000000000000000
                    OnClick = btnPreviewTimeClick
                  end
                  object btnPreviewPre: TWebButton
                    Tag = 2
                    Left = 102
                    Top = 0
                    Width = 50
                    Height = 24
                    Caption = 'Preview'
                    ChildOrder = 2
                    ElementClassName = 'order-2 ShortestButton btn btn-dark btn-sm'
                    ElementID = 'btnPreviewPre'
                    ElementFont = efCSS
                    ElementPosition = epRelative
                    HeightStyle = ssAuto
                    HeightPercent = 100.000000000000000000
                    TabOrder = 10
                    WidthStyle = ssAuto
                    WidthPercent = 100.000000000000000000
                    OnClick = btnPreviewTimeClick
                  end
                  object btnPreviewPause: TWebButton
                    Tag = 3
                    Left = 152
                    Top = 0
                    Width = 50
                    Height = 24
                    Caption = 'Paused'
                    ChildOrder = 3
                    ElementClassName = 'order-3 ShortestButton btn btn-dark btn-sm'
                    ElementID = 'btnPreviewPause'
                    ElementFont = efCSS
                    ElementPosition = epRelative
                    HeightStyle = ssAuto
                    HeightPercent = 100.000000000000000000
                    TabOrder = 10
                    WidthStyle = ssAuto
                    WidthPercent = 100.000000000000000000
                    OnClick = btnPreviewTimeClick
                  end
                  object btnPreviewPost: TWebButton
                    Tag = 4
                    Left = 202
                    Top = 0
                    Width = 50
                    Height = 24
                    Caption = 'Ended'
                    ChildOrder = 4
                    ElementClassName = 'order-4 ShortestButton btn btn-dark btn-sm'
                    ElementID = 'btnPreviewPost'
                    ElementFont = efCSS
                    ElementPosition = epRelative
                    HeightStyle = ssAuto
                    HeightPercent = 100.000000000000000000
                    TabOrder = 10
                    WidthStyle = ssAuto
                    WidthPercent = 100.000000000000000000
                    OnClick = btnPreviewTimeClick
                  end
                end
                object btnPreviewAvailabilityStatus: TWebButton
                  Tag = 1
                  Left = 760
                  Top = 4
                  Width = 70
                  Height = 24
                  Caption = '<i class="fa-solid fa-rotate"></i>'
                  ChildOrder = 3
                  ElementClassName = 
                    'order-4 ButtonBarEnd btn btn-secondary btn-sm border border-1 bo' +
                    'rder-dark'
                  ElementID = 'btnPreviewAvailabilityStatus'
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  HeightStyle = ssAuto
                  HeightPercent = 100.000000000000000000
                  WidthStyle = ssAuto
                  WidthPercent = 100.000000000000000000
                  OnClick = btnAvailabilityReloadClick
                end
                object btnPreviewPrint: TWebButton
                  Tag = 4
                  Left = 57
                  Top = 4
                  Width = 50
                  Height = 24
                  Caption = '<i class="fa-solid fa-print fa-lg me-1"></i> Print'
                  ChildOrder = 5
                  ElementClassName = 'order-1 ShortestButton btn btn-dark btn-sm'
                  ElementID = 'btnPreviewPrint'
                  ElementFont = efCSS
                  ElementPosition = epRelative
                  HeightStyle = ssAuto
                  HeightPercent = 100.000000000000000000
                  TabOrder = 10
                  Visible = False
                  WidthStyle = ssAuto
                  WidthPercent = 100.000000000000000000
                  OnClick = btnPreviewPrintClick
                end
              end
              object divPreview: TWebHTMLDiv
                Left = 0
                Top = 32
                Width = 953
                Height = 432
                ElementClassName = 
                  'w-100 h-100 overflow-auto d-flex justify-content-center align-it' +
                  'ems-center overflow-auto flex-fill bg-info'
                ElementID = 'divPreview'
                HeightStyle = ssAuto
                WidthStyle = ssAuto
                ChildOrder = 1
                ElementPosition = epRelative
                ElementFont = efCSS
                Role = ''
              end
            end
          end
        end
        object divSurveyMenu: TWebHTMLDiv
          Left = 0
          Top = 0
          Width = 953
          Height = 48
          ElementClassName = 'm-0 w-100 order-0 ButtonBar justify-content-between'
          ElementID = 'divSurveyMenu'
          HeightStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object divSurveyMenuRight: TWebPanel
            Left = 458
            Top = 4
            Width = 328
            Height = 40
            ElementClassName = 'order-1 Rounded8 border border-dark bg-white'
            ElementID = 'divSurveyMenuRight'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            Alignment = taLeftJustify
            BorderColor = clNone
            BorderStyle = bsNone
            ChildOrder = 1
            Color = clWhite
            ElementBodyClassName = 'd-flex m-1 gap-1'
            ElementFont = efCSS
            ElementPosition = epRelative
            object btnSurveyCancel: TWebButton
              Left = 136
              Top = 3
              Width = 96
              Height = 32
              Caption = 
                '<div class="mx-2"><i class="fa-solid fa-xmark me-2 fa-lg"></i>Ca' +
                'ncel</div>'
              ChildOrder = 3
              ElementClassName = 'btn btn-secondary btn-sm me-1 border border-1 border-dark'
              ElementID = 'btnSurveyCancel'
              ElementFont = efCSS
              ElementPosition = epRelative
              Enabled = False
              HeightPercent = 100.000000000000000000
              TabOrder = 60
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnSurveyCancelClick
            end
            object btnSurveySave: TWebButton
              Left = 232
              Top = 3
              Width = 96
              Height = 32
              Caption = 
                '<div class="mx-2"><i class="fa-solid fa-check me-2 fa-lg"></i> S' +
                'ave</div>'
              ChildOrder = 1
              ElementClassName = 'btn btn-warning btn-sm border border-1 border-dark'
              ElementID = 'btnSurveySave'
              ElementFont = efCSS
              ElementPosition = epRelative
              Enabled = False
              HeightPercent = 100.000000000000000000
              TabOrder = 61
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnSurveySaveClick
            end
          end
          object divSurveyMenuLeft: TWebHTMLDiv
            Left = 4
            Top = 3
            Width = 283
            Height = 40
            ElementClassName = 
              'order-0 p-1 Rounded8 d-flex align-items-center border border-dar' +
              'k bg-white btn-group '
            ElementID = 'divSurveyMenuLeft'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            object btnSurveyOptions: TWebButton
              Left = 6
              Top = 3
              Width = 50
              Height = 32
              Caption = 
                '<div class="mx-2"><i class="fa-solid fa-list-check me-2 fa-lg"><' +
                '/i> Options</div>'
              ElementClassName = 
                'order-0 btn btn-primary ButtonBarBigElement btn-sm border border' +
                '-1 border-dark'
              ElementID = 'btnSurveyOptions'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 50
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnSurveyMenuClick
            end
            object btnSurveyQuestions: TWebButton
              Tag = 1
              Left = 55
              Top = 3
              Width = 50
              Height = 32
              Caption = 
                '<div class="mx-2"><i class="fa-solid fa-list-ol me-2 fa-lg"></i>' +
                'Questions</div>'
              ChildOrder = 1
              ElementClassName = 
                'order-1 ButtonBarBigElement  btn btn-dark btn-sm border border-1' +
                ' border-dark'
              ElementID = 'btnSurveyQuestions'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 51
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnSurveyMenuClick
            end
            object btnSurveyPermissions: TWebButton
              Tag = 2
              Left = 107
              Top = 3
              Width = 50
              Height = 32
              Caption = 
                '<div class="mx-2"><i class="fa-solid fa-key me-2 fa-lg"></i> Per' +
                'missions</div>'
              ChildOrder = 2
              ElementClassName = 
                'order-2 ButtonBarBigElement btn btn-dark btn-sm  border border-1' +
                ' border-dark'
              ElementID = 'btnSurveyPermissions'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 52
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnSurveyMenuClick
            end
            object btnSurveyPreview: TWebButton
              Tag = 3
              Left = 161
              Top = 3
              Width = 50
              Height = 32
              Caption = 
                '<div class="mx-2"><i class="fa-solid fa-eye me-2 fa-lg"></i> Pre' +
                'view</div>'
              ChildOrder = 3
              ElementClassName = 
                'order-3 ButtonBarBigElement  btn btn-dark btn-sm  border border-' +
                '1 border-dark'
              ElementID = 'btnSurveyPreview'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 53
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnSurveyMenuClick
            end
          end
        end
      end
    end
    object pageResponses: TWebTabSheet
      Left = 0
      Top = 20
      Width = 1225
      Height = 696
      ElementClassName = 'w-100 h-100 Page Rounded10 border border-dark bg-light'
      ElementID = 'pageResponses'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      Caption = 'Responses'
      ChildOrder = 1
      ElementFont = efCSS
      ElementPosition = epRelative
      OnShow = pageResponsesShow
      object divResponsesHolder: TWebHTMLDiv
        Left = 4
        Top = 4
        Width = 800
        Height = 688
        ElementClassName = 
          'RightSplitter d-flex flex-column overflow-hidden rounded border ' +
          'border-dark  bg-white'
        ElementID = 'divResponsesHolder'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object divResponsesButtons: TWebHTMLDiv
          AlignWithMargins = True
          Left = 4
          Top = 0
          Width = 794
          Height = 32
          ElementClassName = 'ButtonBar w-100'
          ElementID = 'divResponsesButtons'
          HeightStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object btnResponsesReload: TWebButton
            Tag = 1
            Left = 0
            Top = 5
            Width = 50
            Height = 24
            Caption = '<i class="fa-solid fa-rotate"></i>'
            ElementClassName = 
              'order-0 ReloadButton btn btn-secondary btn-sm border border-1 bo' +
              'rder-dark'
            ElementID = 'btnResponsesReload'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnResponsesReloadClick
          end
          object btnResponsesClearFilters: TWebButton
            Tag = 1
            Left = 54
            Top = 5
            Width = 50
            Height = 24
            Caption = '<i class="fa-solid fa-broom me-1"></i> Clear Filters'
            ChildOrder = 1
            ElementClassName = 
              'order-1 ShortButton btn btn-info btn-sm border border-1 border-d' +
              'ark'
            ElementID = 'btnResponsesClearFilters'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnResponsesClearFiltersClick
          end
          object panelResponsesExport: TWebPanel
            Left = 247
            Top = 4
            Width = 339
            Height = 24
            ElementClassName = 'order-3 ButtonBarGroup'
            ElementID = 'panelResponsesExport'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            BorderColor = clNone
            BorderStyle = bsNone
            ChildOrder = 3
            Color = clWhite
            ElementBodyClassName = 'btn-group'
            ElementFont = efCSS
            ElementPosition = epRelative
            object btnResponsesExport: TWebButton
              Tag = 4
              Left = 48
              Top = 0
              Width = 50
              Height = 22
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Caption = '<i class="fa-solid fa-download fa-lg me-1"></i> Export'
              ElementClassName = 'order-0 ShortestButton btn btn-dark btn-sm'
              ElementID = 'btnResponsesExport'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnResponsesExportClick
            end
            object btnResponsesExportCSV: TWebButton
              Left = 94
              Top = 0
              Width = 50
              Height = 22
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Caption = '<i class="fa-solid fa-file-csv fa-lg me-1"></i> CSV'
              ChildOrder = 1
              ElementClassName = 'order-1 ShortestButton btn btn-dark btn-sm'
              ElementID = 'btnResponsesExportCSV'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = MenuResponsesExport
            end
            object btnResponsesExportExcel: TWebButton
              Tag = 1
              Left = 144
              Top = 0
              Width = 50
              Height = 22
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Caption = '<i class="fa-solid fa-file-excel fa-lg me-1"></i> XLSX'
              ChildOrder = 2
              ElementClassName = 'order-2 ShortestButton btn btn-dark btn-sm'
              ElementID = 'btnResponsesExportExcel'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = MenuResponsesExport
            end
            object btnResponsesExportJSON: TWebButton
              Tag = 2
              Left = 194
              Top = 0
              Width = 50
              Height = 22
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Caption = '<i class="fa-solid fa-file-code fa-lg me-1"></i>  JSON'
              ChildOrder = 3
              ElementClassName = 'order-3 ShortestButton btn btn-dark btn-sm'
              ElementID = 'btnResponsesExportJSON'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = MenuResponsesExport
            end
            object btnResponsesExportPDF: TWebButton
              Tag = 3
              Left = 244
              Top = 0
              Width = 50
              Height = 22
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Caption = '<i class="fa-solid fa-file-pdf fa-lg me-1"></i>  PDF'
              ChildOrder = 4
              ElementClassName = 'order-4 ShortestButton btn btn-dark btn-sm'
              ElementID = 'btnResponsesExportPDF'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = MenuResponsesExport
            end
            object btnResponsesExportPrint: TWebButton
              Tag = 4
              Left = 281
              Top = 0
              Width = 50
              Height = 22
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Caption = '<i class="fa-solid fa-print fa-lg me-1"></i> Print'
              ChildOrder = 5
              ElementClassName = 'order-5 ShortestButton btn btn-primary btn-sm'
              ElementID = 'btnResponsesExportPrint'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = MenuResponsesExport
            end
          end
          object divResponsesGroupingHolder: TWebHTMLDiv
            Left = 107
            Top = 2
            Width = 120
            Height = 24
            ElementClassName = 
              'order-2 overflow-hidden d-flex align-items-center ButtonBarEleme' +
              'nt bg-info rounded-1 border ps-0 border-1 border-dark'
            ElementID = 'divResponsesGroupingHolder'
            WidthStyle = ssAuto
            ChildOrder = 2
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            object comboResponsesGrouping: TWebComboBox
              Left = 34
              Top = 0
              Width = 100
              Height = 26
              Cursor = crHandPoint
              ChildOrder = 2
              ElementClassName = 'order-2 ButtonBarCombo rounded-1 bg-info border border-0'
              ElementID = 'comboResponsesGrouping'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              ShowFocus = False
              Text = 'No Grouping'
              WidthPercent = 100.000000000000000000
              OnChange = comboResponsesGroupingChange
              ItemIndex = 0
              Items.Strings = (
                'No Grouping'
                'by Survey'
                'by Client ID'
                'by Question'
                'by IP Address')
            end
            object btnResponsesGrouping: TWebButton
              Left = 0
              Top = 2
              Width = 50
              Height = 22
              Caption = '<i class="fa-solid fa-bars fa-xl fa-fw me-1"></i> Group'
              ChildOrder = 1
              ElementClassName = 'FS12 order-0 btn btn-info btn-sm pt-1 px-1 rounded-0 border-0'
              ElementID = 'btnResponsesGrouping'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnResponsesGroupingClick
            end
          end
        end
        object divResponses: TWebHTMLDiv
          Left = 0
          Top = 32
          Width = 800
          Height = 656
          ElementClassName = 'rounded-bottom flex-fill overflow-hidden border border-0'
          ElementID = 'divResponses'
          HeightStyle = ssAuto
          WidthStyle = ssAuto
          ChildOrder = 1
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object divResponsesHolderResize: TWebHTMLDiv
          Left = 72
          Top = 520
          Width = 100
          Height = 41
          ElementClassName = 'ResizeElement'
          ElementID = 'divResponsesHolderResize'
          HeightStyle = ssAuto
          WidthStyle = ssAuto
          ChildOrder = 2
          ElementPosition = epIgnore
          ElementFont = efCSS
          HTML.Strings = (
            '<div class="InnerTriangle1"></div>'
            '<div class="InnerTriangle2"></div>'
            '')
          Role = ''
        end
      end
      object divFeedbackHolder: TWebHTMLDiv
        Left = 818
        Top = 4
        Width = 403
        Height = 688
        ElementClassName = 
          'flex-fill d-flex flex-column overflow-hidden rounded border bord' +
          'er-dark  bg-white'
        ElementID = 'divFeedbackHolder'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 1
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object divFeedbackButtons: TWebHTMLDiv
          Left = 4
          Top = 0
          Width = 397
          Height = 73
          ElementClassName = 'ButtonBar w-100'
          ElementID = 'divFeedbackButtons'
          HeightStyle = ssAuto
          WidthStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object btnFeedbackReload: TWebButton
            Tag = 1
            Left = 15
            Top = 8
            Width = 50
            Height = 24
            Caption = '<i class="fa-solid fa-rotate"></i>'
            ElementClassName = 
              'order-0 ReloadButton btn btn-secondary btn-sm border border-1 bo' +
              'rder-dark'
            ElementID = 'btnFeedbackReload'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnFeedbackReloadClick
          end
          object btnFeedbackStatusNew: TWebButton
            Tag = 1
            Left = 75
            Top = 8
            Width = 50
            Height = 24
            Caption = '<i class="fa-solid fa-tag me-1"></i> Set Status: New'
            ChildOrder = 1
            ElementClassName = 
              'order-1 ShortButton btn btn-warning btn-sm border border-1 borde' +
              'r-dark'
            ElementID = 'btnFeedbackStatusNew'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            Visible = False
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnIssueStatusNewClick
          end
          object btnFeedbackStatusInProgress: TWebButton
            Tag = 1
            Left = 125
            Top = 8
            Width = 50
            Height = 24
            Caption = '<i class="fa-solid fa-tag me-1"></i> In Progress'
            ChildOrder = 2
            ElementClassName = 
              'order-2 ShortButton btn btn-primary btn-sm border border-1 borde' +
              'r-dark'
            ElementID = 'btnFeedbackStatusInProgress'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            Visible = False
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnIssueStatusNewClick
          end
          object btnFeedbackStatusClosed: TWebButton
            Tag = 1
            Left = 181
            Top = 8
            Width = 50
            Height = 24
            Caption = '<i class="fa-solid fa-tag me-1"></i> Closed'
            ChildOrder = 3
            ElementClassName = 
              'order-3 ShortButton btn btn-success btn-sm border border-1 borde' +
              'r-dark'
            ElementID = 'btnFeedbackStatusClosed'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            Visible = False
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnIssueStatusNewClick
          end
          object btnFeedbackActivityLog: TWebButton
            Tag = 1
            Left = 231
            Top = 8
            Width = 50
            Height = 24
            Caption = '<i class="fa-solid fa-scroll me-1"></i> View Activity Log'
            ChildOrder = 4
            ElementClassName = 
              'order-4 ShortButton btn btn-secondary btn-sm border border-1 bor' +
              'der-dark'
            ElementID = 'btnFeedbackActivityLog'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnFeedbackActivityLogClick
          end
          object panelFeedbackExport: TWebPanel
            Left = 35
            Top = 40
            Width = 339
            Height = 24
            ElementClassName = 'order-5 ButtonBarGroup'
            ElementID = 'panelFeedbackExport'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            BorderColor = clNone
            BorderStyle = bsNone
            ChildOrder = 6
            Color = clWhite
            ElementBodyClassName = 'btn-group'
            ElementFont = efCSS
            ElementPosition = epRelative
            object btnFeedbackExport: TWebButton
              Tag = 4
              Left = 0
              Top = 0
              Width = 50
              Height = 22
              Caption = '<i class="fa-solid fa-download fa-lg me-1"></i> Export'
              ElementClassName = 'order-0 ShortestButton btn btn-dark btn-sm'
              ElementID = 'btnFeedbackExport'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnFeedbackExportClick
            end
            object btnFeedbackExportCSV: TWebButton
              Left = 66
              Top = -1
              Width = 50
              Height = 22
              Caption = '<i class="fa-solid fa-file-csv fa-lg me-1"></i> CSV'
              ChildOrder = 1
              ElementClassName = 'order-1 ShortestButton btn btn-dark btn-sm'
              ElementID = 'btnFeedbackExportCSV'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = MenuFeedbackExport
            end
            object btnFeedbackExportExcel: TWebButton
              Tag = 1
              Left = 160
              Top = 0
              Width = 50
              Height = 22
              Caption = '<i class="fa-solid fa-file-excel fa-lg me-1"></i> XLSX'
              ChildOrder = 2
              ElementClassName = 'order-2 ShortestButton btn btn-dark btn-sm'
              ElementID = 'btnFeedbackExportExcel'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = MenuFeedbackExport
            end
            object btnFeedbackExportJSON: TWebButton
              Tag = 2
              Left = 210
              Top = 0
              Width = 50
              Height = 22
              Caption = '<i class="fa-solid fa-file-code fa-lg me-1"></i>  JSON'
              ChildOrder = 3
              ElementClassName = 'order-3 ShortestButton btn btn-dark btn-sm'
              ElementID = 'btnFeedbackExportJSON'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = MenuFeedbackExport
            end
            object btnFeedbackExportPDF: TWebButton
              Tag = 3
              Left = 252
              Top = 0
              Width = 50
              Height = 22
              Caption = '<i class="fa-solid fa-file-pdf fa-lg me-1"></i>  PDF'
              ChildOrder = 4
              ElementClassName = 'order-4 ShortestButton btn btn-dark btn-sm'
              ElementID = 'btnFeedbackExportPDF'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = MenuFeedbackExport
            end
            object btnFeedbackExportPrint: TWebButton
              Tag = 4
              Left = 289
              Top = 0
              Width = 50
              Height = 22
              Caption = '<i class="fa-solid fa-print fa-lg me-1"></i> Print'
              ChildOrder = 5
              ElementClassName = 'order-5 ShortestButton btn btn-primary btn-sm'
              ElementID = 'btnFeedbackExportPrint'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = MenuFeedbackExport
            end
          end
        end
        object divFeedback: TWebHTMLDiv
          Left = 0
          Top = 77
          Width = 403
          Height = 611
          ElementClassName = 'rounded-bottom flex-fill overflow-hidden border border-0'
          ElementID = 'divFeedback'
          HeightStyle = ssAuto
          WidthStyle = ssAuto
          ChildOrder = 1
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
      end
    end
    object pageQuestions: TWebTabSheet
      Left = 0
      Top = 20
      Width = 1225
      Height = 696
      ElementClassName = 'Rounded10 border border-dark bg-light'
      ElementID = 'pageLibrary'
      HeightStyle = ssPercent
      WidthStyle = ssPercent
      Caption = 'Library'
      ChildOrder = 2
      ElementFont = efCSS
      ElementPosition = epRelative
      object divLibrary: TWebHTMLDiv
        AlignWithMargins = True
        Left = 268
        Top = 4
        Width = 953
        Height = 688
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        ElementClassName = 'overflow-hidden rounded border border-dark  bg-info'
        ElementID = 'divLibrary'
        Align = alClient
        ChildOrder = 2
        ElementFont = efCSS
        Role = ''
        object divLibraryTypeHolder: TWebHTMLDiv
          AlignWithMargins = True
          Left = 4
          Top = 80
          Width = 945
          Height = 32
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 2
          ElementClassName = 'overflow-hidden rounded border border-dark bg-secondary'
          ElementID = 'divLibraryTypeHolder'
          Align = alTop
          ElementFont = efCSS
          Role = ''
          object divLibraryType: TWebHTMLDiv
            Left = 0
            Top = 0
            Width = 100
            Height = 32
            ElementClassName = 'ConfigLabel'
            ElementID = 'divLibraryType'
            Align = alLeft
            ElementFont = efCSS
            HTML.Strings = (
              'Question Type')
            Role = ''
          end
          object edtLibraryType: TWebEdit
            AlignWithMargins = True
            Left = 102
            Top = 2
            Width = 841
            Height = 28
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alClient
            ChildOrder = 1
            ElementClassName = 'rounded-1 ps-2 border border-dark bg-info text-dark'
            ElementID = 'edtLibraryType'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            ReadOnly = True
            SpellCheck = False
            TabOrder = 100
            WidthPercent = 100.000000000000000000
            OnChange = SurveyChanged
          end
        end
        object divLibraryNameHolder: TWebHTMLDiv
          AlignWithMargins = True
          Left = 4
          Top = 42
          Width = 945
          Height = 32
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 2
          ElementClassName = 'overflow-hidden rounded border border-dark bg-secondary'
          ElementID = 'divLibraryNameHolder'
          Align = alTop
          ChildOrder = 1
          ElementFont = efCSS
          Role = ''
          object divLibraryName: TWebHTMLDiv
            Left = 0
            Top = 0
            Width = 100
            Height = 32
            ElementClassName = 'ConfigLabel'
            ElementID = 'divLibraryName'
            Align = alLeft
            ElementFont = efCSS
            HTML.Strings = (
              'Library Name')
            Role = ''
          end
          object edtLibraryName: TWebEdit
            AlignWithMargins = True
            Left = 102
            Top = 2
            Width = 841
            Height = 28
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alClient
            ChildOrder = 1
            ElementClassName = 'rounded-1 ps-2 border border-none'
            ElementID = 'edtLibraryName'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            ReadOnly = True
            SpellCheck = False
            TabOrder = 100
            WidthPercent = 100.000000000000000000
            OnChange = SurveyChanged
          end
        end
        object divLibraryIDHolder: TWebHTMLDiv
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 945
          Height = 32
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 2
          ElementClassName = 'overflow-hidden rounded border border-dark bg-secondary'
          ElementID = 'divLibraryIDHolder'
          Align = alTop
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
          object divLibraryID: TWebHTMLDiv
            Left = 0
            Top = 0
            Width = 100
            Height = 32
            ElementClassName = 'ConfigLabel'
            ElementID = 'divLibraryID'
            Align = alLeft
            ElementFont = efCSS
            HTML.Strings = (
              'Library ID')
            Role = ''
          end
          object edtLibraryID: TWebEdit
            AlignWithMargins = True
            Left = 102
            Top = 2
            Width = 841
            Height = 28
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alClient
            ChildOrder = 1
            ElementClassName = 'rounded-1 ps-2 border border-dark bg-info text-dark'
            ElementID = 'edtLibraryID'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            ReadOnly = True
            SpellCheck = False
            TabOrder = 100
            WidthPercent = 100.000000000000000000
            OnChange = SurveyChanged
          end
        end
        object divLibraryContentHolder: TWebHTMLDiv
          AlignWithMargins = True
          Left = 4
          Top = 116
          Width = 945
          Height = 568
          Margins.Left = 4
          Margins.Top = 2
          Margins.Right = 4
          Margins.Bottom = 4
          ElementClassName = 'overflow-hidden rounded border border-dark bg-secondary'
          ElementID = 'divLibraryContentHolder'
          Align = alClient
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
          object divLibraryContentHeader: TWebHTMLDiv
            Left = 0
            Top = 0
            Width = 945
            Height = 50
            ElementClassName = 'sun-editor'
            ElementID = 'divLibraryContentHeader'
            HeightStyle = ssAuto
            WidthStyle = ssPercent
            Align = alTop
            ElementFont = efCSS
            Role = ''
          end
          object divLibraryContentFooter: TWebHTMLDiv
            Left = 0
            Top = 550
            Width = 945
            Height = 18
            ElementClassName = 'sun-editor d-flex overflow-hidden'
            ElementID = 'divLibraryContentFooter'
            WidthStyle = ssPercent
            Align = alBottom
            ChildOrder = 1
            ElementFont = efCSS
            Role = ''
          end
          object divLibraryContent: TWebHTMLDiv
            AlignWithMargins = True
            Left = 0
            Top = 50
            Width = 945
            Height = 499
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 1
            ElementID = 'divLibraryContent'
            Align = alClient
            ChildOrder = 2
            ElementFont = efCSS
            HTML.Strings = (
              '<textarea id="divLibraryContentText">')
            Role = ''
          end
        end
      end
      object splitterLibrary: TWebSplitter
        AlignWithMargins = True
        Left = 258
        Top = 48
        Width = 6
        Height = 600
        Cursor = crHSplit
        Margins.Left = 0
        Margins.Top = 48
        Margins.Right = 0
        Margins.Bottom = 48
        ElementClassName = 'rounded'
        ElementID = 'splitterLibrary'
        Align = alLeft
        ChildOrder = 2
        Color = 8222060
        GripColor = 8222060
      end
      object divLibraryListHolder: TWebHTMLDiv
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 250
        Height = 688
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        ElementClassName = 'overflow-hidden rounded border border-dark  bg-white'
        ElementID = 'divLibraryListHolder'
        Align = alLeft
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object divLibraryButtons: TWebHTMLDiv
          AlignWithMargins = True
          Left = 4
          Top = 0
          Width = 244
          Height = 32
          Margins.Left = 4
          Margins.Top = 0
          Margins.Right = 2
          Margins.Bottom = 0
          ElementClassName = 'd-flex align-items-center justify-content-stretch'
          ElementID = 'divLibraryButtons'
          Align = alTop
          ElementFont = efCSS
          Role = ''
          object btnLibraryListNew: TWebButton
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 50
            Height = 24
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 1
            Margins.Bottom = 0
            Caption = '<i class="fa-solid fa-plus me-1 "></i> New'
            ChildOrder = 1
            ElementClassName = 'ShortButton flex-fill btn btn-primary btn-sm'
            ElementID = 'btnLibraryListNew'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            TabOrder = 31
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnSurveyNewClick
          end
          object btnLibraryListDelete: TWebButton
            Tag = 1
            AlignWithMargins = True
            Left = 53
            Top = 3
            Width = 50
            Height = 24
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 1
            Margins.Bottom = 0
            Caption = '<i class="fa-solid fa-trash-can me-1"></i>Delete'
            ChildOrder = 2
            ElementClassName = 'ShortButton flex-fill btn btn-danger btn-sm'
            ElementID = 'btnLibraryListDelete'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            TabOrder = 32
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnSurveyDeleteClick
          end
          object btnLibraryListClone: TWebButton
            Tag = 2
            AlignWithMargins = True
            Left = 103
            Top = 3
            Width = 50
            Height = 24
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Caption = '<i class="fa-solid fa-clone me-1"></i> Clone'
            ChildOrder = 3
            ElementClassName = 'ShortButton flex-fill  btn btn-success btn-sm'
            ElementID = 'btnLibraryListClone'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            TabOrder = 33
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnSurveyCloneClick
          end
          object btnLibraryListReload: TWebButton
            Tag = 2
            AlignWithMargins = True
            Left = 153
            Top = 3
            Width = 50
            Height = 24
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Caption = '<i class="fa-solid fa-rotate"></i>'
            ElementClassName = 'ReloadButton flex-fill  btn btn-secondary btn-sm'
            ElementID = 'btnLibraryListReload'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            TabOrder = 30
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnSurveyReloadClick
          end
        end
        object divLibraryList: TWebHTMLDiv
          Left = 0
          Top = 32
          Width = 250
          Height = 656
          ElementClassName = 'rounded-bottom overflow-hidden border border-0'
          ElementID = 'divLibraryList'
          Align = alClient
          ChildOrder = 1
          ElementFont = efCSS
          Role = ''
        end
      end
    end
    object pageAccounts: TWebTabSheet
      Left = 0
      Top = 20
      Width = 1225
      Height = 696
      ElementClassName = 'w-100 h-100 Page Rounded10 border border-dark bg-light'
      ElementID = 'pageAccounts'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      Caption = 'Accounts'
      ChildOrder = 3
      ElementFont = efCSS
      ElementPosition = epRelative
      OnShow = pageAccountsShow
      object divAccountsHolder: TWebHTMLDiv
        Left = 4
        Top = 4
        Width = 600
        Height = 688
        ElementClassName = 
          'RightSplitter d-flex flex-column overflow-hidden rounded border ' +
          'border-dark  bg-white'
        ElementID = 'divAccountsHolder'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object divAccountsButtons: TWebHTMLDiv
          Left = 0
          Top = 0
          Width = 600
          Height = 32
          ElementClassName = 'ButtonBar w-100'
          ElementID = 'divAccountsButtons'
          HeightStyle = ssAuto
          WidthStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object btnAccountsReload: TWebButton
            Tag = 1
            Left = 3
            Top = 5
            Width = 50
            Height = 24
            Caption = '<i class="fa-solid fa-rotate"></i>'
            ElementClassName = 
              'order-0 ButtonBarReload btn btn-secondary btn-sm border border-1' +
              ' border-dark'
            ElementID = 'btnAccountsReload'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnAccountsReloadClick
          end
          object btnAddUser: TWebButton
            Tag = 1
            Left = 54
            Top = 5
            Width = 50
            Height = 24
            Caption = '<i class="fa-solid fa-user-plus me-1"></i> Add'
            ChildOrder = 1
            ElementClassName = 
              'order-1 ButtonBarElement btn btn-primary btn-sm border border-1 ' +
              'border-dark'
            ElementID = 'btnAddUser'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnAddUserClick
          end
          object btnDeleteUser: TWebButton
            Tag = 1
            Left = 104
            Top = 5
            Width = 50
            Height = 24
            Caption = '<i class="fa-solid fa-user-minus me-1"></i> Delete'
            ChildOrder = 2
            ElementClassName = 
              'order-2 ButtonBarElement btn btn-danger btn-sm border border-1 b' +
              'order-dark'
            ElementID = 'btnDeleteUser'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnDeleteUserClick
          end
          object btnSetPassword: TWebButton
            Tag = 1
            Left = 154
            Top = 5
            Width = 50
            Height = 24
            Caption = '<i class="fa-solid fa-key me-1"></i> Set Password'
            ChildOrder = 3
            ElementClassName = 
              'order-3 ButtonBarElement btn btn-secondary btn-sm border border-' +
              '1 border-dark'
            ElementID = 'btnSetPassword'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnSetPasswordClick
          end
          object edtSetPassword: TWebEdit
            Left = 207
            Top = 5
            Width = 125
            Height = 24
            ChildOrder = 4
            ElementClassName = 'order-4 ButtonBarElement border border-1 border-dark rounded-1'
            ElementID = 'edtSetPassword'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            SpellCheck = False
            WidthPercent = 100.000000000000000000
          end
          object panelAccountsExport: TWebPanel
            Left = 324
            Top = 4
            Width = 339
            Height = 24
            ElementClassName = 'order-5 ButtonBarGroup'
            ElementID = 'panelAccountsExport'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            BorderColor = clNone
            BorderStyle = bsNone
            ChildOrder = 5
            Color = clWhite
            ElementBodyClassName = 'btn-group'
            ElementFont = efCSS
            ElementPosition = epRelative
            object btnAccountsExport: TWebButton
              Tag = 4
              Left = 7
              Top = 0
              Width = 50
              Height = 22
              Caption = '<i class="fa-solid fa-download fa-lg me-1"></i> Export'
              ElementClassName = 'order-0 ShortestButton btn btn-dark btn-sm'
              ElementID = 'btnAccountsExport'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnAccountsExportClick
            end
            object btnAccountsExportCSV: TWebButton
              Left = 54
              Top = 0
              Width = 50
              Height = 22
              Caption = '<i class="fa-solid fa-file-csv fa-lg me-1"></i> CSV'
              ChildOrder = 1
              ElementClassName = 'order-1 ShortestButton btn btn-dark btn-sm'
              ElementID = 'btnAccountsExportCSV'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = MenuAccountsExport
            end
            object btnAccountsExportExcel: TWebButton
              Tag = 1
              Left = 106
              Top = -1
              Width = 50
              Height = 22
              Caption = '<i class="fa-solid fa-file-excel fa-lg me-1"></i> XLSX'
              ChildOrder = 2
              ElementClassName = 'order-2 ShortestButton btn btn-dark btn-sm'
              ElementID = 'btnAccountsExportExcel'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = MenuAccountsExport
            end
            object btnAccountsExportJSON: TWebButton
              Tag = 2
              Left = 155
              Top = 0
              Width = 50
              Height = 22
              Caption = '<i class="fa-solid fa-file-code fa-lg me-1"></i>  JSON'
              ChildOrder = 3
              ElementClassName = 'order-3 ShortestButton btn btn-dark btn-sm'
              ElementID = 'btnAccountsExportJSON'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = MenuAccountsExport
            end
            object btnAccountsExportPDF: TWebButton
              Tag = 3
              Left = 203
              Top = -1
              Width = 50
              Height = 22
              Caption = '<i class="fa-solid fa-file-pdf fa-lg me-1"></i>  PDF'
              ChildOrder = 4
              ElementClassName = 'order-4 ShortestButton btn btn-dark btn-sm'
              ElementID = 'btnAccountsExportPDF'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = MenuAccountsExport
            end
            object btnAccountsExportPrint: TWebButton
              Tag = 4
              Left = 232
              Top = -1
              Width = 50
              Height = 22
              Caption = '<i class="fa-solid fa-print fa-lg me-1"></i> Print'
              ChildOrder = 5
              ElementClassName = 'order-5 ShortestButton btn btn-primary btn-sm'
              ElementID = 'btnAccountsExportPrint'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = MenuAccountsExport
            end
          end
        end
        object divAccounts: TWebHTMLDiv
          Left = 0
          Top = 32
          Width = 600
          Height = 656
          ElementClassName = 'rounded-bottom flex-fill overflow-hidden border border-0'
          ElementID = 'divAccounts'
          HeightStyle = ssAuto
          WidthStyle = ssAuto
          ChildOrder = 1
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object divAccountsHolderResize: TWebHTMLDiv
          Left = 80
          Top = 528
          Width = 100
          Height = 41
          ElementClassName = 'ResizeElement'
          ElementID = 'divAccountsHolderResize'
          HeightStyle = ssAuto
          WidthStyle = ssAuto
          ChildOrder = 2
          ElementPosition = epIgnore
          ElementFont = efCSS
          HTML.Strings = (
            '<div class="InnerTriangle1"></div>'
            '<div class="InnerTriangle2"></div>'
            '')
          Role = ''
        end
      end
      object divIssuesHolder: TWebHTMLDiv
        Left = 618
        Top = 4
        Width = 603
        Height = 688
        ElementClassName = 
          'flex-fill d-flex flex-column overflow-hidden rounded border bord' +
          'er-dark  bg-white'
        ElementID = 'divIssuesHolder'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 1
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object divIssuesButtons: TWebHTMLDiv
          Left = 0
          Top = 0
          Width = 603
          Height = 32
          ElementClassName = 'ButtonBar w-100'
          ElementID = 'divIssuesButtons'
          HeightStyle = ssAuto
          WidthStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object btnIssuesReload: TWebButton
            Tag = 1
            Left = 0
            Top = 0
            Width = 50
            Height = 24
            Caption = '<i class="fa-solid fa-rotate"></i>'
            ElementClassName = 
              'order-0 ButtonBarReload btn btn-secondary btn-sm border border-1' +
              ' border-dark'
            ElementID = 'btnIssuesReload'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnIssuesReloadClick
          end
          object btnIssueStatusNew: TWebButton
            Tag = 1
            Left = 50
            Top = 0
            Width = 50
            Height = 24
            Caption = '<i class="fa-solid fa-tag me-1"></i> Set Status: New'
            ChildOrder = 1
            ElementClassName = 
              'order-1 ButtonBarElement btn btn-warning btn-sm border border-1 ' +
              'border-dark'
            ElementID = 'btnIssueStatusNew'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnIssueStatusNewClick
          end
          object btnIssueStatusInProgress: TWebButton
            Tag = 1
            Left = 100
            Top = 0
            Width = 50
            Height = 24
            Caption = '<i class="fa-solid fa-tag me-1"></i> In Progress'
            ChildOrder = 2
            ElementClassName = 
              'order-2 ButtonBarElement btn btn-primary btn-sm border border-1 ' +
              'border-dark'
            ElementID = 'btnIssueStatusInProgress'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnIssueStatusNewClick
          end
          object btnIssueStatusClosed: TWebButton
            Tag = 1
            Left = 150
            Top = 0
            Width = 50
            Height = 24
            Caption = '<i class="fa-solid fa-tag me-1"></i> Closed'
            ChildOrder = 3
            ElementClassName = 
              'order-3 ButtonBarElement btn btn-success btn-sm border border-1 ' +
              'border-dark'
            ElementID = 'btnIssueStatusClosed'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnIssueStatusNewClick
          end
          object btnViewActivityLog: TWebButton
            Tag = 1
            Left = 200
            Top = 0
            Width = 50
            Height = 24
            Caption = '<i class="fa-solid fa-scroll me-1"></i> View Activity Log'
            ChildOrder = 4
            ElementClassName = 
              'order-4 ButtonBarElement btn btn-secondary btn-sm border border-' +
              '1 border-dark'
            ElementID = 'btnViewActivityLog'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnViewActivityLogClick
          end
          object panelIssuesExport: TWebPanel
            Left = 303
            Top = 4
            Width = 339
            Height = 24
            ElementClassName = 'order-5 ButtonBarGroup'
            ElementID = 'panelIssuesExport'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            BorderColor = clNone
            BorderStyle = bsNone
            ChildOrder = 6
            Color = clWhite
            ElementBodyClassName = 'btn-group'
            ElementFont = efCSS
            ElementPosition = epRelative
            object btnIssuesExport: TWebButton
              Tag = 4
              Left = 16
              Top = 0
              Width = 50
              Height = 22
              Caption = '<i class="fa-solid fa-download fa-lg me-1"></i> Export'
              ElementClassName = 'order-0 ShortestButton btn btn-dark btn-sm'
              ElementID = 'btnIssuesExport'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnIssuesExportClick
            end
            object btnIssuesExportCSV: TWebButton
              Left = 66
              Top = 0
              Width = 50
              Height = 22
              Caption = '<i class="fa-solid fa-file-csv fa-lg me-1"></i> CSV'
              ChildOrder = 1
              ElementClassName = 'order-1 ShortestButton btn btn-dark btn-sm'
              ElementID = 'btnIssuesExportCSV'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = MenuIssuesExport
            end
            object btnIssuesExportExcel: TWebButton
              Tag = 1
              Left = 168
              Top = 0
              Width = 50
              Height = 22
              Caption = '<i class="fa-solid fa-file-excel fa-lg me-1"></i> XLSX'
              ChildOrder = 2
              ElementClassName = 'order-2 ShortestButton btn btn-dark btn-sm'
              ElementID = 'btnIssuesExportExcel'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = MenuIssuesExport
            end
            object btnIssuesExportJSON: TWebButton
              Tag = 2
              Left = 116
              Top = 0
              Width = 50
              Height = 22
              Caption = '<i class="fa-solid fa-file-code fa-lg me-1"></i>  JSON'
              ChildOrder = 3
              ElementClassName = 'order-3 ShortestButton btn btn-dark btn-sm'
              ElementID = 'btnIssuesExportJSON'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = MenuIssuesExport
            end
            object btnIssuesExportPDF: TWebButton
              Tag = 3
              Left = 204
              Top = 0
              Width = 50
              Height = 22
              Caption = '<i class="fa-solid fa-file-pdf fa-lg me-1"></i>  PDF'
              ChildOrder = 4
              ElementClassName = 'order-4 ShortestButton btn btn-dark btn-sm'
              ElementID = 'btnIssuesExportPDF'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = MenuIssuesExport
            end
            object btnIssuesExportPrint: TWebButton
              Tag = 4
              Left = 257
              Top = 0
              Width = 50
              Height = 22
              Caption = '<i class="fa-solid fa-print fa-lg me-1"></i> Print'
              ChildOrder = 5
              ElementClassName = 'order-5 ShortestButton btn btn-primary btn-sm'
              ElementID = 'btnIssuesExportPrint'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = MenuIssuesExport
            end
          end
        end
        object divIssues: TWebHTMLDiv
          Left = 0
          Top = 32
          Width = 603
          Height = 656
          ElementClassName = 'rounded-bottom flex-fill overflow-hidden border border-0'
          ElementID = 'divIssues'
          HeightStyle = ssAuto
          WidthStyle = ssAuto
          ChildOrder = 1
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
      end
    end
    object pageLogging: TWebTabSheet
      Left = 0
      Top = 20
      Width = 1225
      Height = 696
      ElementClassName = 'Page Rounded10 border border-dark bg-light'
      ElementID = 'pageLogging'
      HeightStyle = ssPercent
      WidthStyle = ssPercent
      Caption = 'Logging'
      ChildOrder = 4
      ElementFont = efCSS
      OnShow = pageLoggingShow
      object divLoggingHolder: TWebHTMLDiv
        Left = 4
        Top = 4
        Width = 1217
        Height = 453
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        ElementClassName = 
          'w-100 h-100 d-flex flex-column overflow-hidden rounded border bo' +
          'rder-dark  bg-white'
        ElementID = 'divLoggingHolder'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object divLoggingButtons: TWebHTMLDiv
          AlignWithMargins = True
          Left = 4
          Top = 0
          Width = 1211
          Height = 32
          Margins.Left = 4
          Margins.Top = 0
          Margins.Right = 2
          Margins.Bottom = 0
          ElementClassName = 'ButtonBar w-100'
          ElementID = 'divLoggingButtons'
          HeightStyle = ssAuto
          Align = alTop
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object btnLogging7Days: TWebButton
            Tag = 1
            AlignWithMargins = True
            Left = 276
            Top = 0
            Width = 50
            Height = 24
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 1
            Margins.Bottom = 0
            Caption = '<i class="fa-solid fa-calendar-week me-1"></i> Past 7 Days'
            ChildOrder = 4
            ElementClassName = 
              'order-4 ButtonBarElement  btn btn-success btn-sm border border-1' +
              ' border-dark'
            ElementID = 'btnLogging7Days'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnLogging7DaysClick
          end
          object btnLoggingAllData: TWebButton
            Tag = 2
            AlignWithMargins = True
            Left = 327
            Top = 0
            Width = 50
            Height = 24
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Caption = '<i class="fa-solid fa-calendar-days me-1"></i> All Data'
            ChildOrder = 5
            ElementClassName = 
              'order-5 ButtonBarElement btn btn-success btn-sm border border-1 ' +
              'border-dark'
            ElementID = 'btnLoggingAllData'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnLoggingAllDataClick
          end
          object btnLoggingClearFilters: TWebButton
            Tag = 1
            AlignWithMargins = True
            Left = 58
            Top = 8
            Width = 50
            Height = 24
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Caption = '<i class="fa-solid fa-broom me-1"></i> Clear Filters'
            ChildOrder = 1
            ElementClassName = 
              'order-1 ButtonBarElement btn btn-info btn-sm border border-1 bor' +
              'der-dark text-dark'
            ElementID = 'btnLoggingClearFilters'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnLoggingClearFiltersClick
          end
          object btnLoggingReload: TWebButton
            Tag = 1
            AlignWithMargins = True
            Left = 8
            Top = 8
            Width = 50
            Height = 24
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Caption = '<i class="fa-solid fa-rotate"></i>'
            ElementClassName = 
              'order-0 ButtonBarReload  btn btn-secondary btn-sm border border-' +
              '1 border-dark'
            ElementID = 'btnLoggingReload'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnLoggingReloadClick
          end
          object btnLoggingToday: TWebButton
            AlignWithMargins = True
            Left = 225
            Top = 0
            Width = 50
            Height = 24
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 1
            Margins.Bottom = 0
            Caption = '<i class="fa-solid fa-calendar-day me-1 "></i> Today'
            ChildOrder = 3
            ElementClassName = 
              'order-3 ButtonBarElement btn btn-success btn-sm border border-1 ' +
              'border-dark'
            ElementID = 'btnLoggingToday'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnLoggingTodayClick
          end
          object divLoggingDateRangeHolder: TWebHTMLDiv
            AlignWithMargins = True
            Left = 381
            Top = 0
            Width = 373
            Height = 24
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            ElementClassName = 
              'order-6 ButtonBarElement d-flex align-items-center overflow-hidd' +
              'en Rounded5  bg-success border border-1 border-dark'
            ElementID = 'divLoggingDateRangeHolder'
            WidthStyle = ssAuto
            ChildOrder = 6
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            object labelLoggingDateRange: TWebLabel
              AlignWithMargins = True
              Left = 8
              Top = 0
              Width = 77
              Height = 24
              Margins.Left = 8
              Margins.Top = 0
              Margins.Right = 8
              Margins.Bottom = 0
              Align = alLeft
              AutoSize = False
              Caption = 'Date Range'
              ElementClassName = 'text-white '
              ElementID = 'labelLoggingDateRange'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              HTML = '<i class="fa-solid fa-calendar-check me-1"></i> Range'
              Layout = tlCenter
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              ExplicitHeight = 13
            end
            object divLoggingStart: TWebHTMLDiv
              Left = 93
              Top = -3
              Width = 98
              Height = 22
              ElementClassName = 
                'overflow-hidden DateEdit rounded-1 bg-white border border-1 ps-1' +
                ' border-success'
              ElementID = 'divLoggingStart'
              ChildOrder = 3
              ElementPosition = epRelative
              ElementFont = efCSS
              Role = ''
            end
            object divLoggingEnd: TWebHTMLDiv
              Left = 218
              Top = -3
              Width = 98
              Height = 22
              ElementClassName = 
                'overflow-hidden DateEdit rounded-1 bg-white border border-1 ps-1' +
                ' border-success'
              ElementID = 'divLoggingEnd'
              ChildOrder = 3
              ElementPosition = epRelative
              ElementFont = efCSS
              Role = ''
            end
          end
          object divLoggingGroupingHolder: TWebHTMLDiv
            Left = 110
            Top = 8
            Width = 120
            Height = 24
            ElementClassName = 
              'order-2 overflow-hidden d-flex align-items-center ButtonBarEleme' +
              'nt bg-info rounded-1 border border-1 border-dark'
            ElementID = 'divLoggingGroupingHolder'
            WidthStyle = ssAuto
            ChildOrder = 2
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            object labelLoggingGroupingLabel: TWebLabel
              AlignWithMargins = True
              Left = 0
              Top = 0
              Width = 335
              Height = 18
              Cursor = crHandPoint
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              ElementClassName = 'text-dark'
              ElementID = 'labelLoggingGroupingLabel'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightStyle = ssAuto
              HeightPercent = 100.000000000000000000
              HTML = '<i class="fa-solid fa-bars fa-fw me-1"></i> Group:'
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = labelLoggingGroupingLabelClick
            end
            object comboLoggingGrouping: TWebComboBox
              Left = 34
              Top = 0
              Width = 100
              Height = 26
              Cursor = crHandPoint
              ChildOrder = 2
              ElementClassName = 'ButtonBarCombo rounded-1 bg-info border border-0'
              ElementID = 'comboLoggingGrouping'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              ShowFocus = False
              Text = 'No Grouping'
              WidthPercent = 100.000000000000000000
              OnChange = comboLoggingGroupingChange
              ItemIndex = 0
              Items.Strings = (
                'No Grouping'
                'by Survey'
                'by Account'
                'by E-Mail'
                'by IP Address'
                'by Endpoint'
                'by Version')
            end
          end
          object panelLoggingExport: TWebPanel
            AlignWithMargins = True
            Left = 755
            Top = 0
            Width = 339
            Height = 24
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            ElementClassName = 'order-7 ButtonBarGroup'
            ElementID = 'panelLoggingExport'
            WidthStyle = ssAuto
            BorderColor = clNone
            BorderStyle = bsNone
            ChildOrder = 7
            Color = clWhite
            ElementBodyClassName = 'btn-group'
            ElementFont = efCSS
            ElementPosition = epRelative
            object btnLoggingExport: TWebButton
              Tag = 4
              Left = 1
              Top = 0
              Width = 50
              Height = 22
              Caption = '<i class="fa-solid fa-download fa-lg  me-1"></i> Export'
              ElementClassName = 'order-0 ShortestButton btn btn-dark btn-sm'
              ElementID = 'btnLoggingExport'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLoggingExportClick
            end
            object btnLoggingExportCSV: TWebButton
              Left = 62
              Top = 0
              Width = 50
              Height = 22
              Caption = '<i class="fa-solid fa-file-csv fa-lg me-1"></i> CSV'
              ChildOrder = 1
              ElementClassName = 'order-1 ShortestButton btn btn-dark btn-sm'
              ElementID = 'btnLoggingExportCSV'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = MenuLoggingExport
            end
            object btnLoggingExportExcel: TWebButton
              Tag = 1
              Left = 112
              Top = 0
              Width = 50
              Height = 22
              Caption = '<i class="fa-solid fa-file-excel fa-lg me-1"></i> XLSX'
              ChildOrder = 2
              ElementClassName = 'order-2 ShortestButton btn btn-dark btn-sm'
              ElementID = 'btnLoggingExportExcel'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = MenuLoggingExport
            end
            object btnLoggingExportJSON: TWebButton
              Tag = 2
              Left = 162
              Top = 0
              Width = 50
              Height = 22
              Caption = '<i class="fa-solid fa-file-code fa-lg me-1"></i>  JSON'
              ChildOrder = 3
              ElementClassName = 'order-3 ShortestButton btn btn-dark btn-sm'
              ElementID = 'btnLoggingExportJSON'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = MenuLoggingExport
            end
            object btnLoggingExportPDF: TWebButton
              Tag = 3
              Left = 212
              Top = 0
              Width = 50
              Height = 22
              Caption = '<i class="fa-solid fa-file-pdf fa-lg me-1"></i>  PDF'
              ChildOrder = 4
              ElementClassName = 'order-4 ShortestButton btn btn-dark btn-sm '
              ElementID = 'btnLoggingExportPDF'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = MenuLoggingExport
            end
            object btnLoggingExportPrint: TWebButton
              Tag = 4
              Left = 261
              Top = 0
              Width = 50
              Height = 22
              Caption = '<i class="fa-solid fa-print fa-lg me-1"></i> Print'
              ChildOrder = 5
              ElementClassName = 'order-4 ShortestButton btn btn-primary btn-sm'
              ElementID = 'btnLoggingExportPrint'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              TabOrder = 10
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = MenuLoggingExport
            end
          end
        end
        object divLogging: TWebHTMLDiv
          AlignWithMargins = True
          Left = 0
          Top = 32
          Width = 1217
          Height = 421
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          ElementClassName = 'w-100 rounded-bottom flex-fill overflow-hidden border border-0'
          ElementID = 'divLogging'
          Align = alClient
          ChildOrder = 1
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
      end
    end
  end
  object divBlocker: TWebHTMLDiv
    Left = 49
    Top = 382
    Width = 100
    Height = 41
    ElementClassName = 'Open'
    ElementID = 'divBlocker'
    ElementFont = efCSS
    Role = ''
  end
  object panelQuestionTypes: TWebPanel
    Left = 49
    Top = 196
    Width = 162
    Height = 70
    ElementClassName = 
      'rounded-1 w-100 h-100 overflow-hidden border border-dark bg-seco' +
      'ndary'
    ElementID = 'panelQuestionTypes'
    Caption = 'panelQuestionTypes'
    ChildOrder = 4
    ElementFont = efCSS
    Visible = False
  end
  object tmrLaunch: TWebTimer
    Enabled = False
    Interval = 0
    OnTimer = tmrLaunchTimer
    Left = 48
    Top = 120
  end
  object ServerConn: TXDataWebConnection
    OnRequest = ServerConnRequest
    Left = 36
    Top = 474
  end
  object tmrCountdown: TWebTimer
    Enabled = False
    OnTimer = tmrCountdownTimer
    Left = 144
    Top = 120
  end
end

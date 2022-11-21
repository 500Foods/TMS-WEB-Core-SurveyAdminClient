object NoteForm: TNoteForm
  Width = 640
  Height = 480
  CSSLibrary = cssBootstrap
  ElementClassName = 'border border-0 NoteForm'
  ElementFont = efCSS
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  Shadow = False
  OnCreate = WebFormCreate
  object divNoteHolder: TWebHTMLDiv
    AlignWithMargins = True
    Left = 4
    Top = 2
    Width = 632
    Height = 474
    Margins.Left = 4
    Margins.Top = 2
    Margins.Right = 4
    Margins.Bottom = 4
    ElementClassName = 
      'd-flex resize-drag overflow-hidden rounded flex-column border bo' +
      'rder-3 border-danger bg-danger'
    ElementID = 'divNoteHolder'
    Align = alClient
    ChildOrder = 2
    ElementFont = efCSS
    Role = ''
    object divNoteHeader: TWebHTMLDiv
      Left = 0
      Top = 57
      Width = 632
      Height = 50
      ElementClassName = 'flex-shrink-0 order-2 align-self-start sun-editor'
      ElementID = 'divNoteHeader'
      HeightStyle = ssAuto
      WidthStyle = ssPercent
      ChildOrder = 2
      ElementPosition = epRelative
      ElementFont = efCSS
      Role = ''
    end
    object divNoteFooter: TWebHTMLDiv
      Left = 0
      Top = 456
      Width = 632
      Height = 20
      ElementClassName = 'flex-shrink-0 order-4 sun-editor d-flex overflow-hidden'
      ElementID = 'divNoteFooter'
      WidthStyle = ssAuto
      ChildOrder = 4
      ElementPosition = epRelative
      ElementFont = efCSS
      Role = ''
    end
    object divNoteContent: TWebHTMLDiv
      Left = 0
      Top = 110
      Width = 632
      Height = 345
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 1
      ElementClassName = 'order-3 align-self-stretch flex-fill'
      ElementID = 'divNoteContent'
      WidthStyle = ssPercent
      ChildOrder = 3
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '<textarea id="divNoteContentText">')
      Role = ''
    end
    object divNoteTitleHolder: TWebHTMLDiv
      Left = 0
      Top = 0
      Width = 632
      Height = 28
      ElementClassName = 'bg-danger text-white order-0 align-self-start'
      ElementID = 'divNoteTitleHolder'
      WidthStyle = ssPercent
      Align = alTop
      ChildOrder = 3
      ElementPosition = epRelative
      ElementFont = efCSS
      Role = ''
      object divNoteTitle: TWebHTMLDiv
        Left = 0
        Top = 0
        Width = 632
        Height = 28
        ElementClassName = 'flex-shrink-0'
        ElementID = 'divNoteTitle'
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        HTML.Strings = (
          
            '<div style="width:100%; text-align:center;">Add Project Note to ' +
            'abc/def</div>')
        Role = ''
      end
      object btnNoteCancel: TWebButton
        AlignWithMargins = True
        Left = 416
        Top = 0
        Width = 96
        Height = 32
        Margins.Right = 0
        Margins.Bottom = 5
        Caption = '<i class="fa-solid fa-xmark fa-lg"></i>'
        ChildOrder = 3
        ElementClassName = 'btn btn-danger btn-sm text-white m-0 p-0'
        ElementID = 'btnNoteCancel'
        ElementFont = efCSS
        ElementPosition = epIgnore
        HeightPercent = 100.000000000000000000
        TabOrder = 60
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnNoteCancelClick
      end
      object btnNoteSave: TWebButton
        AlignWithMargins = True
        Left = 512
        Top = 0
        Width = 96
        Height = 32
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 5
        Caption = '<i class="fa-solid fa-check fa-lg"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-danger btn-sm text-warning m-0 p-0'
        ElementID = 'btnNoteSave'
        ElementFont = efCSS
        ElementPosition = epIgnore
        HeightPercent = 100.000000000000000000
        TabOrder = 61
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnNoteSaveClick
      end
    end
    object divCategoriesHolder: TWebHTMLDiv
      Left = 0
      Top = 28
      Width = 632
      Height = 32
      ElementClassName = 
        'flex-shrink-0 d-none justify-content-center order-1  bg-secondar' +
        'y'
      ElementID = 'divCategoriesHolder'
      WidthStyle = ssPercent
      ChildOrder = 1
      ElementPosition = epRelative
      ElementFont = efCSS
      Role = ''
      object comboCategories: TWebComboBox
        Left = 232
        Top = 6
        Width = 175
        Height = 26
        ElementClassName = 'rounded-1 border border-1 border-dark'
        ElementID = 'comboCategories'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightPercent = 100.000000000000000000
        Text = 'Please Select a Category...'
        WidthPercent = 100.000000000000000000
        OnChange = comboCategoriesChange
        ItemIndex = 0
        Items.Strings = (
          'Please Select a Category...'
          'Billing Issue'
          'Questions Issue'
          'Responses Issue'
          'Website Issue'
          'Other Issue')
      end
    end
  end
end

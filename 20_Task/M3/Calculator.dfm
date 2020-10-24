object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 460
  ClientWidth = 415
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 415
    Height = 460
    Align = alClient
    Caption = 'GridPanel1'
    ColumnCollection = <
      item
        Value = 20.000000000000000000
      end
      item
        Value = 20.000000000000000000
      end
      item
        Value = 20.000000000000000000
      end
      item
        Value = 20.000000000000000000
      end
      item
        Value = 20.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = btn07
        Row = 1
      end
      item
        Column = 1
        Control = btn08
        Row = 1
      end
      item
        Column = 2
        Control = btn09
        Row = 1
      end
      item
        Column = 3
        Control = btnBack
        Row = 1
      end
      item
        Column = 0
        Control = btn04
        Row = 2
      end
      item
        Column = 1
        Control = btn05
        Row = 2
      end
      item
        Column = 2
        Control = btn06
        Row = 2
      end
      item
        Column = 3
        Control = btnMul
        Row = 2
      end
      item
        Column = 4
        Control = btnDiv
        Row = 2
      end
      item
        Column = 0
        Control = btn01
        Row = 3
      end
      item
        Column = 1
        Control = btn02
        Row = 3
      end
      item
        Column = 2
        Control = btn03
        Row = 3
      end
      item
        Column = 3
        Control = btnPlus
        Row = 3
      end
      item
        Column = 4
        Control = btnMin
        Row = 3
      end
      item
        Column = 0
        Control = btn0
        Row = 4
      end
      item
        Column = 1
        Control = btn00
        Row = 4
      end
      item
        Column = 2
        Control = btnPeriod
        Row = 4
      end
      item
        Column = 3
        ColumnSpan = 2
        Control = btnEqual
        Row = 4
      end
      item
        Column = 0
        ColumnSpan = 5
        Control = edtResult
        Row = 0
      end
      item
        Column = 4
        Control = btnAC
        Row = 1
      end>
    RowCollection = <
      item
        Value = 20.000000000000000000
      end
      item
        Value = 20.000000000000000000
      end
      item
        Value = 20.000000000000000000
      end
      item
        Value = 20.000000000000000000
      end
      item
        Value = 20.000000000000000000
      end>
    TabOrder = 0
    object btn07: TButton
      Left = 1
      Top = 93
      Width = 83
      Height = 91
      Align = alClient
      Caption = '7'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -67
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btn01Click
    end
    object btn08: TButton
      Left = 84
      Top = 93
      Width = 82
      Height = 91
      Align = alClient
      Caption = '8'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -67
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btn01Click
    end
    object btn09: TButton
      Left = 166
      Top = 93
      Width = 83
      Height = 91
      Align = alClient
      Caption = '9'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -67
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btn01Click
    end
    object btnBack: TButton
      Left = 249
      Top = 93
      Width = 82
      Height = 91
      Align = alClient
      Caption = #8592
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -67
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnBackClick
    end
    object btn04: TButton
      Left = 1
      Top = 184
      Width = 83
      Height = 92
      Align = alClient
      Caption = '4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -67
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btn01Click
    end
    object btn05: TButton
      Left = 84
      Top = 184
      Width = 82
      Height = 92
      Align = alClient
      Caption = '5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -67
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btn01Click
    end
    object btn06: TButton
      Left = 166
      Top = 184
      Width = 83
      Height = 92
      Align = alClient
      Caption = '6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -67
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = btn01Click
    end
    object btnMul: TButton
      Left = 249
      Top = 184
      Width = 82
      Height = 92
      Align = alClient
      Caption = #10006
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -47
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = btnMulClick
    end
    object btnDiv: TButton
      Left = 331
      Top = 184
      Width = 83
      Height = 92
      Align = alClient
      Caption = #10135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -47
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = btnDivClick
    end
    object btn01: TButton
      Left = 1
      Top = 276
      Width = 83
      Height = 91
      Align = alClient
      Caption = '1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -67
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = btn01Click
    end
    object btn02: TButton
      Left = 84
      Top = 276
      Width = 82
      Height = 91
      Align = alClient
      Caption = '2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -67
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = btn01Click
    end
    object btn03: TButton
      Left = 166
      Top = 276
      Width = 83
      Height = 91
      Align = alClient
      Caption = '3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -67
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = btn01Click
    end
    object btnPlus: TButton
      Left = 249
      Top = 276
      Width = 82
      Height = 91
      Align = alClient
      Caption = #10133
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -67
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = btnPlusClick
    end
    object btnMin: TButton
      Left = 331
      Top = 276
      Width = 83
      Height = 91
      Align = alClient
      Caption = #10134
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -67
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = btnMinClick
    end
    object btn0: TButton
      Left = 1
      Top = 367
      Width = 83
      Height = 92
      Align = alClient
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -67
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnClick = btn0Click
    end
    object btn00: TButton
      Left = 84
      Top = 367
      Width = 82
      Height = 92
      Align = alClient
      Caption = '00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -67
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnClick = btn00Click
    end
    object btnPeriod: TButton
      Left = 166
      Top = 367
      Width = 83
      Height = 92
      Align = alClient
      Caption = '.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -67
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      OnClick = btnPeriodClick
    end
    object btnEqual: TButton
      Left = 249
      Top = 367
      Width = 165
      Height = 92
      Align = alClient
      Caption = '='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -67
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      OnClick = btnEqualClick
    end
    object edtResult: TEdit
      Left = 1
      Top = 1
      Width = 413
      Height = 92
      Align = alClient
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -67
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      ExplicitHeight = 89
    end
    object btnAC: TButton
      Left = 331
      Top = 93
      Width = 83
      Height = 91
      Align = alClient
      Caption = 'AC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -47
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
      OnClick = btnACClick
    end
  end
end

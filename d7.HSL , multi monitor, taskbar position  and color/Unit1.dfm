object Form1: TForm1
  Left = 350
  Top = 158
  Width = 617
  Height = 747
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    601
    708)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 663
    Width = 601
    Height = 45
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      601
      45)
    object Button1: TButton
      Left = 493
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Close'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 12
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Child'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 174
      Top = 8
      Width = 75
      Height = 25
      Caption = 'icon 2'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 93
      Top = 8
      Width = 75
      Height = 25
      Caption = 'icon 1'
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 255
      Top = 8
      Width = 75
      Height = 25
      Caption = 'taskbar'
      TabOrder = 4
      OnClick = Button5Click
    end
  end
  object Panel2: TPanel
    Left = 40
    Top = 40
    Width = 546
    Height = 601
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Panel2'
    ParentBackground = False
    TabOrder = 1
    object TabControl1: TTabControl
      Left = 8
      Top = 16
      Width = 529
      Height = 553
      ParentShowHint = False
      ShowHint = True
      Style = tsFlatButtons
      TabOrder = 0
      Tabs.Strings = (
        'All'
        'Errors'
        'Alerts'
        'Warnings')
      TabIndex = 0
      object Memo1: TMemo
        Left = 4
        Top = 416
        Width = 521
        Height = 133
        Align = alBottom
        Lines.Strings = (
          'Memo1')
        TabOrder = 0
      end
      object StringGrid1: TStringGrid
        Left = 4
        Top = 50
        Width = 521
        Height = 366
        Align = alClient
        DefaultColWidth = 110
        Options = [goFixedHorzLine, goHorzLine, goRangeSelect, goRowSelect]
        TabOrder = 1
        RowHeights = (
          24
          24
          24
          24
          24)
      end
      object ToolBar1: TToolBar
        Left = 4
        Top = 27
        Width = 521
        Height = 23
        Caption = 'ToolBar1'
        TabOrder = 2
        object ToolButton1: TToolButton
          Left = 0
          Top = 2
          Caption = 'ToolButton1'
          ImageIndex = 0
        end
        object ToolButton2: TToolButton
          Left = 23
          Top = 2
          Caption = 'ToolButton2'
          ImageIndex = 1
        end
        object ToolButton3: TToolButton
          Left = 46
          Top = 2
          Caption = 'ToolButton3'
          ImageIndex = 2
        end
        object ToolButton4: TToolButton
          Left = 69
          Top = 2
          Caption = 'ToolButton4'
          ImageIndex = 3
        end
        object ToolButton5: TToolButton
          Left = 92
          Top = 2
          Width = 8
          Caption = 'ToolButton5'
          ImageIndex = 4
          Style = tbsSeparator
        end
        object ToolButton6: TToolButton
          Left = 100
          Top = 2
          Caption = 'ToolButton6'
          ImageIndex = 4
        end
        object ToolButton7: TToolButton
          Left = 123
          Top = 2
          Caption = 'ToolButton7'
          ImageIndex = 5
        end
      end
    end
  end
  object ComboBox1: TComboBox
    Left = 40
    Top = 8
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'ComboBox1'
  end
  object TrackBar1: TTrackBar
    Left = 8
    Top = 40
    Width = 26
    Height = 601
    Max = 239
    Orientation = trVertical
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnChange = TrackBar1Change
  end
  object SpinEdit1: TSpinEdit
    Left = 191
    Top = 8
    Width = 58
    Height = 22
    MaxValue = 1
    MinValue = 0
    TabOrder = 4
    Value = 0
  end
end

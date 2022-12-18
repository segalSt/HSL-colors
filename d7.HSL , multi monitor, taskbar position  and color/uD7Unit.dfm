object Form1: TForm1
  Left = 329
  Top = 124
  Width = 1115
  Height = 719
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    1099
    681)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 170
    Width = 137
    Height = 16
    Caption = 'lightness (intensivnost'#39')'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 37
    Width = 95
    Height = 16
    Caption = 'hui - ton, ottenok'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 103
    Width = 154
    Height = 16
    Caption = 'saturation - nassyshenost'#39
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 115
    Top = 13
    Width = 578
    Height = 16
    Caption = 
      'primary:      0 - red      60 - yellow    120 green        180  ' +
      'light blue       240 blue      300 - purple      360 red'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 180
    Top = 80
    Width = 90
    Height = 16
    Caption = '0 min - 240 max'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 179
    Top = 144
    Width = 111
    Height = 16
    Caption = ' 0 - min       120 max'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblHui: TLabel
    Left = 1040
    Top = 41
    Width = 26
    Height = 13
    Caption = 'lblHui'
  end
  object lblLig: TLabel
    Left = 1040
    Top = 172
    Width = 24
    Height = 13
    Caption = 'lblLig'
  end
  object lblSat: TLabel
    Left = 1040
    Top = 105
    Width = 26
    Height = 13
    Caption = 'lblSat'
  end
  object Label7: TLabel
    Left = 49
    Top = 578
    Width = 9
    Height = 16
    Caption = 'B'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 49
    Top = 445
    Width = 10
    Height = 16
    Caption = 'R'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 49
    Top = 511
    Width = 10
    Height = 16
    Caption = 'G'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 952
    Top = 449
    Width = 26
    Height = 13
    Caption = 'lblHui'
  end
  object Label11: TLabel
    Left = 952
    Top = 580
    Width = 24
    Height = 13
    Caption = 'lblLig'
  end
  object Label12: TLabel
    Left = 952
    Top = 513
    Width = 26
    Height = 13
    Caption = 'lblSat'
  end
  object trbLig: TTrackBar
    Left = 172
    Top = 165
    Width = 868
    Height = 26
    Anchors = [akLeft, akTop, akRight]
    Max = 120
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnChange = trbHuiChange
  end
  object Panel1: TPanel
    Left = 8
    Top = 212
    Width = 1081
    Height = 201
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
  end
  object trbHui: TTrackBar
    Left = 172
    Top = 32
    Width = 868
    Height = 30
    Anchors = [akLeft, akTop, akRight]
    Max = 360
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnChange = trbHuiChange
  end
  object trbSat: TTrackBar
    Left = 172
    Top = 98
    Width = 868
    Height = 26
    Anchors = [akLeft, akTop, akRight]
    Max = 360
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnChange = trbHuiChange
  end
  object TrackBar1: TTrackBar
    Left = 76
    Top = 440
    Width = 868
    Height = 30
    Anchors = [akLeft, akTop, akRight]
    Max = 255
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnChange = TrackBar1Change
  end
  object TrackBar2: TTrackBar
    Left = 76
    Top = 506
    Width = 868
    Height = 26
    Anchors = [akLeft, akTop, akRight]
    Max = 255
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnChange = TrackBar1Change
  end
  object TrackBar3: TTrackBar
    Left = 76
    Top = 573
    Width = 868
    Height = 26
    Anchors = [akLeft, akTop, akRight]
    Max = 255
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnChange = TrackBar1Change
  end
end

object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Nutri'#269'n'#237' kalkula'#269'ka'
  ClientHeight = 391
  ClientWidth = 610
  Color = clWhite
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 95
    Width = 609
    Height = 346
    TabOrder = 0
    object Button2: TButton
      Left = 187
      Top = 12
      Width = 246
      Height = 57
      Caption = 'P'#345'ihl'#225#353'en'#237
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 187
      Top = 92
      Width = 246
      Height = 57
      Caption = 'Registrace'
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 187
      Top = 172
      Width = 246
      Height = 57
      Caption = 'Konec'
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object Panel3: TPanel
      Left = 0
      Top = 248
      Width = 609
      Height = 49
      Color = clHighlight
      ParentBackground = False
      TabOrder = 3
    end
    object Button5: TButton
      Left = 8
      Top = 215
      Width = 161
      Height = 18
      Caption = 'Vymazani u'#382'ivatelu'
      TabOrder = 4
      Visible = False
      OnClick = Button5Click
    end
    object Memo1: TMemo
      Left = 8
      Top = 199
      Width = 185
      Height = 10
      TabOrder = 5
      Visible = False
    end
    object Button4: TButton
      Left = 512
      Top = 256
      Width = 75
      Height = 33
      Caption = 'N'#225'pov'#283'da'
      TabOrder = 6
      OnClick = Button4Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 609
    Height = 89
    Color = clHighlight
    ParentBackground = False
    TabOrder = 1
    object Label7: TLabel
      Left = 0
      Top = 27
      Width = 609
      Height = 38
      Alignment = taCenter
      AutoSize = False
      Caption = 'Nutri'#269'n'#237' kalkula'#269'ka'
      Color = clHighlight
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
end

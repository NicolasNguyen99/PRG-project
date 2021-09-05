object Form3: TForm3
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'P'#345'ihl'#225#353'en'#237
  ClientHeight = 230
  ClientWidth = 482
  Color = clBtnFace
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
    Top = 0
    Width = 524
    Height = 249
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label11: TLabel
      Left = 15
      Top = 84
      Width = 139
      Height = 19
      Caption = 'U'#382'ivatelsk'#233' jm'#233'no'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clHighlight
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 15
      Top = 128
      Width = 44
      Height = 19
      Caption = 'Heslo'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clHighlight
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 335
      Top = 86
      Width = 99
      Height = 14
      Caption = 'Jm'#233'no neexistuje'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label4: TLabel
      Left = 335
      Top = 130
      Width = 114
      Height = 14
      Caption = #352'patn'#283' zadan'#233' heslo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Edit5: TEdit
      Left = 170
      Top = 80
      Width = 150
      Height = 27
      Color = clHighlight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Edit6: TEdit
      Left = 170
      Top = 124
      Width = 150
      Height = 27
      Color = clHighlight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 40
      Top = 168
      Width = 114
      Height = 33
      Caption = 'P'#345'ihl'#225'sit se'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button1: TButton
      Left = 352
      Top = 168
      Width = 97
      Height = 33
      Caption = 'Zp'#283't'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 523
      Height = 65
      Color = clHighlight
      ParentBackground = False
      TabOrder = 4
      object Label10: TLabel
        Left = 0
        Top = 14
        Width = 483
        Height = 34
        Alignment = taCenter
        AutoSize = False
        Caption = 'P'#345'ihl'#225#353'en'#237
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindow
        Font.Height = -32
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel3: TPanel
      Left = -1
      Top = 207
      Width = 484
      Height = 26
      Color = clHighlight
      ParentBackground = False
      TabOrder = 5
    end
    object Memo1: TMemo
      Left = 188
      Top = -3
      Width = 169
      Height = 11
      Lines.Strings = (
        '')
      TabOrder = 6
      Visible = False
      WordWrap = False
    end
  end
end

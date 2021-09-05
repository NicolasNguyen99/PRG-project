object Form4: TForm4
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Nutri'#269'n'#237' kalkula'#269'ka'
  ClientHeight = 386
  ClientWidth = 462
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 465
    Height = 433
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 465
      Height = 49
      Color = clHighlight
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 20
        Top = 13
        Width = 67
        Height = 19
        Caption = 'U'#382'ivatel:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 95
        Top = 13
        Width = 4
        Height = 19
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Button1: TButton
        Left = 352
        Top = 12
        Width = 89
        Height = 27
        Caption = 'Odhl'#225'sit se'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object PageControl1: TPageControl
      Left = -3
      Top = 45
      Width = 468
      Height = 233
      ActivePage = TabSheet1
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = 'Informace o u'#382'ivateli'
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 464
          Height = 209
          Color = clHighlight
          ParentBackground = False
          TabOrder = 0
          object Label5: TLabel
            Left = 25
            Top = 20
            Width = 58
            Height = 19
            Caption = 'Jm'#233'no:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 25
            Top = 45
            Width = 45
            Height = 19
            Caption = 'V'#225'ha:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 25
            Top = 70
            Width = 53
            Height = 19
            Caption = 'V'#253#353'ka:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 25
            Top = 95
            Width = 35
            Height = 19
            Caption = 'V'#283'k:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 25
            Top = 120
            Width = 63
            Height = 19
            Caption = 'Pohlav'#237':'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 25
            Top = 145
            Width = 62
            Height = 19
            Caption = 'Aktivita:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 25
            Top = 170
            Width = 26
            Height = 19
            Caption = 'C'#237'l:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 100
            Top = 20
            Width = 4
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 100
            Top = 45
            Width = 4
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 100
            Top = 70
            Width = 4
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 100
            Top = 95
            Width = 4
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 100
            Top = 120
            Width = 4
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label17: TLabel
            Left = 100
            Top = 145
            Width = 4
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label18: TLabel
            Left = 100
            Top = 170
            Width = 4
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label19: TLabel
            Left = 251
            Top = 45
            Width = 77
            Height = 19
            Caption = 'B'#237'lkoviny:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label20: TLabel
            Left = 251
            Top = 70
            Width = 83
            Height = 19
            Caption = 'Sacharidy:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label21: TLabel
            Left = 251
            Top = 95
            Width = 43
            Height = 19
            Caption = 'Tuky:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label22: TLabel
            Left = 375
            Top = 45
            Width = 4
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label23: TLabel
            Left = 375
            Top = 95
            Width = 4
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label24: TLabel
            Left = 375
            Top = 70
            Width = 4
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label25: TLabel
            Left = 251
            Top = 20
            Width = 116
            Height = 19
            Caption = 'Kalorie na den:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label26: TLabel
            Left = 375
            Top = 20
            Width = 4
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label27: TLabel
            Left = 174
            Top = 70
            Width = 23
            Height = 19
            Caption = 'cm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label28: TLabel
            Left = 174
            Top = 45
            Width = 19
            Height = 19
            Caption = 'kg'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label37: TLabel
            Left = 435
            Top = 45
            Width = 10
            Height = 19
            Caption = 'g'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label38: TLabel
            Left = 435
            Top = 70
            Width = 10
            Height = 19
            Caption = 'g'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label39: TLabel
            Left = 435
            Top = 95
            Width = 10
            Height = 19
            Caption = 'g'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Memo1: TMemo
            Left = 174
            Top = -4
            Width = 135
            Height = 18
            Lines.Strings = (
              '')
            TabOrder = 1
            Visible = False
          end
          object Panel7: TPanel
            Left = 240
            Top = 15
            Width = 4
            Height = 180
            Color = clWindow
            ParentBackground = False
            TabOrder = 0
          end
          object Button3: TButton
            Left = 277
            Top = 160
            Width = 75
            Height = 25
            Caption = 'Zm'#283'na '#250'daj'#367
            TabOrder = 2
            Visible = False
            OnClick = Button1Click
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Zad'#225'v'#225'n'#237' j'#237'del'
        ImageIndex = 1
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 492
          Height = 209
          Color = clHighlight
          ParentBackground = False
          TabOrder = 0
          object Label31: TLabel
            Left = 25
            Top = 20
            Width = 128
            Height = 19
            Caption = 'N'#225'zev produktu:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label32: TLabel
            Left = 25
            Top = 50
            Width = 75
            Height = 19
            Caption = 'Mno'#382'stv'#237':'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label33: TLabel
            Left = 25
            Top = 80
            Width = 116
            Height = 19
            Caption = 'Po'#269'et B'#237'lkovin:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label34: TLabel
            Left = 25
            Top = 110
            Width = 132
            Height = 19
            Caption = 'Po'#269'et Sacharid'#367':'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label35: TLabel
            Left = 25
            Top = 140
            Width = 92
            Height = 19
            Caption = 'Po'#269'et Tuk'#367':'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label36: TLabel
            Left = 295
            Top = 50
            Width = 10
            Height = 19
            Caption = 'g'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label40: TLabel
            Left = 65
            Top = 175
            Width = 119
            Height = 16
            Caption = 'J'#237'dlo bylo zaps'#225'no'
            Font.Charset = ANSI_CHARSET
            Font.Color = clLime
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object Edit1: TEdit
            Left = 168
            Top = 19
            Width = 209
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlight
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = Edit1Click
          end
          object Edit2: TEdit
            Left = 168
            Top = 49
            Width = 121
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlight
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            NumbersOnly = True
            ParentFont = False
            TabOrder = 1
            OnClick = Edit2Click
          end
          object Edit3: TEdit
            Left = 168
            Top = 109
            Width = 121
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlight
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            NumbersOnly = True
            ParentFont = False
            TabOrder = 2
            OnClick = Edit3Click
          end
          object Edit4: TEdit
            Left = 168
            Top = 79
            Width = 121
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlight
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            NumbersOnly = True
            ParentFont = False
            TabOrder = 3
            OnClick = Edit4Click
          end
          object Edit5: TEdit
            Left = 168
            Top = 139
            Width = 121
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlight
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            NumbersOnly = True
            ParentFont = False
            TabOrder = 4
            OnClick = Edit5Click
          end
          object ComboBox1: TComboBox
            Left = 295
            Top = 79
            Width = 66
            Height = 24
            Style = csDropDownList
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Visible = False
            Items.Strings = (
              'kg'
              'g')
          end
          object Button2: TButton
            Left = 264
            Top = 168
            Width = 113
            Height = 31
            Caption = 'Zapsat j'#237'dlo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            OnClick = Button2Click
          end
        end
        object Memo2: TMemo
          Left = 295
          Top = 49
          Width = 162
          Height = 89
          TabOrder = 1
          Visible = False
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Historie j'#237'del'
        ImageIndex = 2
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 597
          Height = 202
          Color = clHighlight
          ParentBackground = False
          TabOrder = 0
          object Label43: TLabel
            Left = 0
            Top = 90
            Width = 198
            Height = 19
            Alignment = taCenter
            Caption = 'Bude p'#345'id'#225'no v dal'#353#237' verzi'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Button4: TButton
            Left = 15
            Top = 85
            Width = 128
            Height = 32
            Caption = 'Vymazat j'#237'dla'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            Visible = False
            OnClick = Button4Click
          end
          object Memo3: TMemo
            Left = 153
            Top = 11
            Width = 297
            Height = 182
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlight
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Lines.Strings = (
              '')
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 1
            Visible = False
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Vytv'#225#345'en'#237' j'#237'del'
        ImageIndex = 3
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 597
          Height = 202
          Color = clHighlight
          ParentBackground = False
          TabOrder = 0
          object Label29: TLabel
            Left = 0
            Top = 90
            Width = 198
            Height = 19
            Alignment = taCenter
            Caption = 'Bude p'#345'id'#225'no v dal'#353#237' verzi'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
    object Button5: TButton
      Left = 341
      Top = 206
      Width = 75
      Height = 25
      Caption = 'Button5'
      TabOrder = 2
      Visible = False
      OnClick = Button5Click
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 274
    Width = 467
    Height = 115
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Label3: TLabel
      Left = 20
      Top = 35
      Width = 50
      Height = 16
      Caption = 'Kalorie:'
      Color = clHighlight
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label30: TLabel
      Left = 20
      Top = 6
      Width = 267
      Height = 16
      Caption = 'Nutri'#269'n'#237' hodnoty pot'#345'ebn'#233' pro spln'#283'n'#237' c'#237'le'
      Color = clHighlight
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 20
      Top = 65
      Width = 62
      Height = 16
      Caption = 'B'#237'lkoviny:'
      Color = clHighlight
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label41: TLabel
      Left = 222
      Top = 35
      Width = 68
      Height = 16
      Caption = 'Sacharidy:'
      Color = clHighlight
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label42: TLabel
      Left = 222
      Top = 65
      Width = 33
      Height = 16
      Caption = 'Tuky:'
      Color = clHighlight
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Edit6: TEdit
      Left = 85
      Top = 33
      Width = 121
      Height = 24
      AutoSize = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NumbersOnly = True
      ParentFont = False
      TabOrder = 0
    end
    object Edit7: TEdit
      Left = 85
      Top = 63
      Width = 121
      Height = 24
      AutoSize = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NumbersOnly = True
      ParentFont = False
      TabOrder = 1
    end
    object Edit8: TEdit
      Left = 295
      Top = 33
      Width = 121
      Height = 24
      AutoSize = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NumbersOnly = True
      ParentFont = False
      TabOrder = 2
    end
    object Edit9: TEdit
      Left = 295
      Top = 63
      Width = 121
      Height = 24
      AutoSize = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NumbersOnly = True
      ParentFont = False
      TabOrder = 3
    end
    object Panel9: TPanel
      Left = -4
      Top = 93
      Width = 471
      Height = 20
      Color = clHighlight
      ParentBackground = False
      TabOrder = 4
    end
  end
end

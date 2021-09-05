object Form5: TForm5
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'U'#382'ivatelsk'#225' n'#225'pov'#283'da'
  ClientHeight = 199
  ClientWidth = 440
  Color = clWhite
  DefaultMonitor = dmPrimary
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 521
    Height = 201
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 424
      Height = 144
      Caption = 
        'V'#237'tej v m'#233'm programu. Nutri'#269'n'#237' kalkula'#269'ka ti pom'#367#382'e dos'#225'hnout tv' +
        #233'ho c'#237'le, a'#357' u'#382' to je zhubnout, nebo p'#345'ibrat. Vprvn'#237' '#345'ad'#283' se mus' +
        #237'te zaregistrovat, pot'#233' se va'#353'e informace ulo'#382#237' a program s n'#283'mi' +
        ' bude moct pracovat, a potom se m'#367#382'ete p'#345'ihl'#225'sit. Po p'#345'ihl'#225#353'en'#237' ' +
        'uvid'#237'te svoje informace, kolik b'#237'lkovin, sacharid'#367' a tuk'#367' mus'#237'te' +
        ' dneska sn'#237'st atd.. V pr'#367'b'#283'hu dne budete p'#345'id'#225'vat sn'#283'zen'#233' j'#237'dlo,' +
        ' a program za v'#225's bude po'#269#237'tat kolik v'#225'm toho je'#353't'#283' zb'#253'v'#225'. Histo' +
        'rie j'#237'del a p'#345'id'#225'v'#225'n'#237' j'#237'del na st'#225'l'#253' seznam se budou p'#345'id'#225'vat a'#382 +
        ' v dal'#353#237' verzi. Douf'#225'm '#382'e se v'#225'm program bude l'#237'bit.'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clHighlight
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Panel2: TPanel
      Left = 0
      Top = 160
      Width = 521
      Height = 41
      Color = clHighlight
      ParentBackground = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 344
      Top = 168
      Width = 75
      Height = 25
      Caption = 'Zp'#283't'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
end

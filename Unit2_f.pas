unit Unit2_f;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Edit3: TEdit;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Button2: TButton;
    Edit2: TEdit;
    Label2: TLabel;
    Label8: TLabel;
    Edit4: TEdit;
    Label9: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Label17: TLabel;
    Button1: TButton;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Button4: TButton;
    Panel3: TPanel;
    Label7: TLabel;
    Panel2: TPanel;
    Memo1: TMemo;
    Label10: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BMR_Vypocet();
    procedure Vymazani_Dat();
    procedure Edit1Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit8Click(Sender: TObject);
    procedure Edit9Click(Sender: TObject);
    procedure Edit3Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure ComboBox2Click(Sender: TObject);
    procedure ComboBox3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Const
  Minimalni_Delka_Hesla=5;

var
  Form2: TForm2;
  Kontrola_Hesla, Kontrola_Vysky, Kontrola_Vahy, Kontrola_Veku, Heslo_Velke_Pismeno, Kontrola_Jmena, Kontrola_Vyplneni1, Kontrola_Vyplneni2, Kontrola_Vyplneni3, Heslo_Cislo, Heslo_Pismeno, Kontrola_Uzivatelskeho_Jmena, Uzivatelske_Jmeno_Original: boolean;
  X, Vek, Delka_Hesla, I, Vyber_Zatez, Plus_Kalorie: integer;
  Zapisovani_Zatez, Vaha, Vyska, BMR, BMR_Cil:real;
  Jmeno, Heslo, Heslo_Kontrola, Pohlavi, Cil: string;

implementation

{$R *.dfm}

uses Unit1_f;

procedure TForm2.BMR_Vypocet();
begin
  if Pohlavi='Muz' then begin
    BMR:=(((13.7516*Vaha)+(5.0033*Vyska)-(6.755*Vek))+66)
  end
  else begin
    BMR:=(((9.5634*Vaha)+(1.8496*Vyska)-(4.6756*Vek))+655)
  end;

  if Cil='Pribrat' then Plus_Kalorie:=500
  else if Cil='Zhubnout' then Plus_Kalorie:=-300
       else Plus_Kalorie:=0;

  BMR_Cil:=(BMR*Zapisovani_Zatez)+Plus_Kalorie;
  BMR_Cil:=Round(BMR_Cil);
end;

procedure TForm2.Vymazani_Dat();
begin
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  Edit4.Text:='';
  Edit8.Text:='';
  Edit9.Text:='';
  ComboBox1.Text:='';
  ComboBox2.Text:='';
  ComboBox3.Text:='';
  Label9.Visible:=False;
  Label14.Visible:=False;
  Label15.Visible:=False;
  Label18.Visible:=False;
  Label19.Visible:=False;
  Label20.Visible:=False;
  Label21.Visible:=False;
  Label22.Visible:=False;
  ComboBox1.ItemIndex:=-1;
  ComboBox2.ItemIndex:=-1;
  ComboBox3.ItemIndex:=-1;
  Button1.Enabled:=False;
  Memo1.Clear;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Label20.Visible:=False;
  Memo1.Clear;
  BMR_Vypocet;
  Memo1.Lines.LoadFromFile('Uzivatele.csv');
  Memo1.Lines.Strings[0]:=#13#10 + Jmeno + #13#10 + Heslo + #13#10 + (FloatToStr(Vaha)) + #13#10 + (FloatToStr(Vyska)) + #13#10 + (IntToStr(Vek)) + #13#10 + Pohlavi + #13#10 + (FloatToStr(Zapisovani_Zatez)) + #13#10 + Cil + #13#10 + (FloatTOStr(BMR_Cil));
  Memo1.Lines.SaveToFile('Uzivatele.csv');
  Vymazani_Dat;
  Label10.Visible:=True;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Memo1.Clear;
  Jmeno:=Edit1.Text;
  Vaha:=StrToFloat(Edit8.Text);
  Vyska:=StrToFloat(Edit9.Text);
  Heslo:=Edit2.Text;
  Heslo_Kontrola:=Edit4.Text;
  Vek:=StrToInt(Edit3.Text);
  Heslo_Velke_Pismeno:=False;
  Heslo_Pismeno:=False;
  Heslo_Cislo:=False;
  Kontrola_Hesla:=True;
  Kontrola_Vyplneni1:=True;
  Kontrola_Vyplneni2:=True;
  Kontrola_Vyplneni3:=True;
  Label10.Visible:=False;
  Label13.Visible:=False;
  Kontrola_Uzivatelskeho_Jmena:=True;
  Uzivatelske_Jmeno_Original:=True;

  X:=1;
  Memo1.Lines.LoadFromFile('Uzivatele.csv');
  for I := 0 to Memo1.Lines.Count do begin
    if (Memo1.Lines[X]<>Edit1.Text) then begin
      X:=X+9;
    end else begin
      Uzivatelske_Jmeno_Original:=False;
      Label13.Visible:=True;
      Edit1.Text:='';
    end;
  end;

  if Jmeno='' then Kontrola_Uzivatelskeho_Jmena:=False;

  if length(Heslo)=length(Heslo_Kontrola) then begin
    Delka_Hesla:=length(Heslo);
    for I := 1 to Delka_Hesla do begin
      if Heslo[I]<>Heslo_Kontrola[I] then Kontrola_Hesla:=False;
    end;
      if Kontrola_Hesla=False then Label9.Visible:=True;
      if Delka_Hesla>=Minimalni_Delka_Hesla then begin
        for I := 1 to Delka_Hesla do begin
          if (Heslo[I]>='a') AND (Heslo[I]<='z') then Heslo_Pismeno:=True;
          if (Heslo[I]>='A') AND (Heslo[I]<='Z') then Heslo_Velke_Pismeno:=True;
          if (Heslo[I]>='1') AND (Heslo[I]<='9') then Heslo_Cislo:=True;
        end;
          if (Heslo_Pismeno<>True) OR (Heslo_Velke_Pismeno<>True) OR (Heslo_Cislo<>True) then begin
            Label14.Visible:=True;
          end;
      end else begin
        Label14.Visible:=True;
      end;
  end else begin
    Label9.Visible:=True;
  end;

  if ((Kontrola_Hesla=True) AND (Heslo_Pismeno=True) AND (Heslo_Velke_Pismeno=True) AND (Heslo_Cislo=True))  then begin
    Label14.Visible:=False;
  end else Label14.Visible:=True;

  case ComboBox1.ItemIndex of
    0:begin
      Pohlavi:='Muz';
    end;
    1:begin
      Pohlavi:='Zena';
    end;
  else begin
    Label22.Visible:=True;
    Kontrola_Vyplneni1:=False;
  end;
  end;

  case ComboBox2.ItemIndex of
    0:begin
      Zapisovani_Zatez:=1.2;
    end;
    1:begin
      Zapisovani_Zatez:=1.375;
    end;
    2:begin
      Zapisovani_Zatez:=1.55;
    end;
    3:begin
      Zapisovani_Zatez:=1.725;
    end;
    else begin
    Label22.Visible:=True;
    Kontrola_Vyplneni2:=False;
  end;
  end;

  Case ComboBox3.ItemIndex of
    0:begin
      Cil:='Zhubnout';
    end;
    1:begin
      Cil:='Udrzet';
    end;
    2:begin
      Cil:='Pribrat';
    end;
    else begin
    Label22.Visible:=True;
    Kontrola_Vyplneni3:=False;
  end;
  end;

  if Edit1.Text='' then Label21.Visible:=True
  else begin
    Label21.Visible:=False;
    Kontrola_Jmena:=True;
  end;

  if (StrToInt(Edit3.Text)<1) OR (StrToInt(Edit3.Text)>100) then begin
    Label15.Visible:=True;
    Kontrola_Veku:=False;
  end
  else begin
    Label15.Visible:=False;
    Kontrola_Veku:=True;
  end;

  if (StrToInt(Edit8.Text)<30) OR (StrToInt(Edit8.Text)>200) then begin
    Label18.Visible:=True;
    Kontrola_Vahy:=False;
  end
  else begin
    Label18.Visible:=False;
    Kontrola_Vahy:=True;
  end;

  if (StrToInt(Edit9.Text)<100) OR (StrToInt(Edit9.Text)>250) then begin
    Label19.Visible:=True;
    Kontrola_Vysky:=False;
  end
  else begin
    Label19.Visible:=False;
    Kontrola_Vysky:=True;
  end;

  if (Kontrola_Vyplneni1=True) AND (Kontrola_Vyplneni2=True) AND (Kontrola_Vyplneni3=True) then Label22.Visible:=False;

  if ((Kontrola_Hesla=True) AND (Uzivatelske_Jmeno_Original=True) AND (Heslo_Pismeno=True) AND (Heslo_Velke_Pismeno=True) AND (Heslo_Cislo=True) AND (Kontrola_Veku=True) AND (Kontrola_Vahy=True) AND (Kontrola_Vysky=True) AND (Kontrola_Jmena=True) AND (Kontrola_Vyplneni1=True) AND (Kontrola_Vyplneni2=True) AND (Kontrola_Vyplneni3=True) AND (Kontrola_Uzivatelskeho_Jmena))   then begin
    Button1.Enabled:=True;
    Label20.Visible:=True;
    Label9.Visible:=False;
  end else begin
    Button1.Enabled:=False;
    Label20.Visible:=False;
  end;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  Vymazani_Dat;
  Label10.Visible:=False;
  Label13.Visible:=False;
  Form1.Show;
  Form2.Hide;
end;
procedure TForm2.ComboBox1Click(Sender: TObject);
begin
  Label10.Visible:=False;
  Label20.Visible:=False;
end;

procedure TForm2.ComboBox2Click(Sender: TObject);
begin
  Label10.Visible:=False;
  Label20.Visible:=False;
end;

procedure TForm2.ComboBox3Click(Sender: TObject);
begin
  Label10.Visible:=False;
  Label20.Visible:=False;
end;

procedure TForm2.Edit1Click(Sender: TObject);
begin
  Label10.Visible:=False;
  Label20.Visible:=False;
end;

procedure TForm2.Edit2Click(Sender: TObject);
begin
  Label10.Visible:=False;
  Label20.Visible:=False;
end;

procedure TForm2.Edit3Click(Sender: TObject);
begin
  Label10.Visible:=False;
  Label20.Visible:=False;
end;

procedure TForm2.Edit4Change(Sender: TObject);
begin
  Label10.Visible:=False;
  Label20.Visible:=False;
end;

procedure TForm2.Edit8Click(Sender: TObject);
begin
  Label10.Visible:=False;
  Label20.Visible:=False;
end;

procedure TForm2.Edit9Click(Sender: TObject);
begin
  Label10.Visible:=False;
  Label20.Visible:=False;
end;

end.

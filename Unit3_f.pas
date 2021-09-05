unit Unit3_f;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    Panel2: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Button3: TButton;
    Button1: TButton;
    Panel1: TPanel;
    Label10: TLabel;
    Panel3: TPanel;
    Memo1: TMemo;
    Label1: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Vymazani_Dat();
  private
    { Private declarations }
  public
    { Public declarations }
    Pozice_Uzivatele: integer;
  end;

var
  Form3: TForm3;
  Y, X, I: integer;
  Kontrola_Uzivatelskeho_Jmena, Uzivatel_Existence:boolean;
  Jmeno:String;

implementation

{$R *.dfm}

uses Unit1_f, Unit4_f;

procedure TForm3.Button1Click(Sender: TObject);
begin
  Vymazani_Dat;
  Label1.Visible:=False;
  Label4.Visible:=False;
  Form1.Show;
  Form3.Hide;
end;

procedure TForm3.Vymazani_Dat();
begin
  Edit5.Text:='';
  Edit6.Text:='';
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  Memo1.Clear;
  Form4.Memo1.Clear;
  X:=1;
  Memo1.Lines.LoadFromFile('Uzivatele.csv');
  Kontrola_Uzivatelskeho_Jmena:=False;
  Uzivatel_Existence:=False;

  for I := 1 to Memo1.Lines.Count do begin
    if (Memo1.Lines[X]<>Edit5.Text) then begin
      X:=X+9;
    end else begin
      Pozice_Uzivatele:=X;
      Uzivatel_Existence:=True;
      Kontrola_Uzivatelskeho_Jmena:=True;
      Label1.Visible:=False;
    end;
  end;

  if Uzivatel_Existence=False then Label1.Visible:=True
  else begin
    if Memo1.Lines[Pozice_Uzivatele+1]=Edit6.Text then begin
      Form4.Show;
      Vymazani_Dat;

      Form4.Memo1.Lines.Strings[0]:=#13#10 + Memo1.Lines[Pozice_Uzivatele] + #13#10 + Memo1.Lines[Pozice_Uzivatele+1] + #13#10 + Memo1.Lines[Pozice_Uzivatele+2] + #13#10 + Memo1.Lines[Pozice_Uzivatele+3] + #13#10 + Memo1.Lines[Pozice_Uzivatele+4] + #13#10 + Memo1.Lines[Pozice_Uzivatele+5] + #13#10 + Memo1.Lines[Pozice_Uzivatele+6] + #13#10 + Memo1.Lines[Pozice_Uzivatele+7] + #13#10 + Memo1.Lines[Pozice_Uzivatele+8] + #13#10;

      if Form4.Memo1.Lines[8]='Udrzet' then begin
        Form4.Memo1.Lines.Strings[10]:=FloatToStr((StrToFloat(Form4.Memo1.Lines[3]))*2) + #13#10 + FloatToStr((StrToFloat(Form4.Memo1.Lines[3]))*1.4) + #13#10;
      end
      else begin
        if Form4.Memo1.Lines[8]='Pribrat' then begin
          Form4.Memo1.Lines.Strings[10]:=FloatToStr((StrToFloat(Form4.Memo1.Lines[3]))*2.3) + #13#10 + FloatToStr((StrToFloat(Form4.Memo1.Lines[3]))*1.8) + #13#10;
        end
        else begin
          if Form4.Memo1.Lines[8]='Zhubnout' then begin
            Form4.Memo1.Lines.Strings[10]:=FloatToStr((StrToFloat(Form4.Memo1.Lines[3]))*1.6) + #13#10 + FloatToStr((StrToFloat(Form4.Memo1.Lines[3]))*1) + #13#10;
          end;
        end;
    end;

    Form4.Label12.Caption:=Form4.Memo1.Lines[1];
    Form4.Label13.Caption:=Form4.Memo1.Lines[3];
    Form4.Label14.Caption:=Form4.Memo1.Lines[4];
    Form4.Label15.Caption:=Form4.Memo1.Lines[5];
    Form4.Label16.Caption:=Form4.Memo1.Lines[6];
    Form4.Label18.Caption:=Form4.Memo1.Lines[8];

    Form4.Memo1.Lines.Strings[12]:=FloatToStr((StrToFLoat(Form4.Memo1.Lines[9]) - ((StrToFloat(Form4.Memo1.Lines[10])*4) + (StrToFloat(Form4.Memo1.Lines[11])*9)))/4);

    Form4.Label2.Caption:=Memo1.Lines[Pozice_Uzivatele];
    Form4.Edit6.Text:=Form4.Memo1.Lines[9];
    Form4.Edit7.Text:=Form4.Memo1.Lines[10];
    Form4.Edit9.Text:=Form4.Memo1.Lines[11];
    Form4.Edit8.Text:=Form4.Memo1.Lines[12];

    Form4.Label26.Caption:=FloatToStr(Round(StrToFloat(Form4.Memo1.Lines[9])));
    Form4.Label22.Caption:=Form4.Memo1.Lines[10];
    Form4.Label23.Caption:=Form4.Memo1.Lines[11];
    Form4.Label24.Caption:=Form4.Memo1.Lines[12];

    if Form4.Memo1.Lines[7]=(FloatToStr(1.2)) then Form4.Label17.Caption:='Necvičím';
    if Form4.Memo1.Lines[7]=(FloatToStr(1.375)) then Form4.Label17.Caption:='Cvičím 1-3 týdně';
    if Form4.Memo1.Lines[7]=(FloatToStr(1.55)) then Form4.Label17.Caption:='Cvičím 3-5 týdně';
    if Form4.Memo1.Lines[7]=(FloatToStr(1.725)) then Form4.Label17.Caption:='Cvičím 6-7 týdně';

    Form4.Memo3.Clear;
    Form4.Memo3.Lines.LoadFromFile('Historie_Jidlo.csv');
    Label1.Visible:=False;
    Label4.Visible:=False;
    Form4.Memo2.Lines.Clear;
    Form4.Memo2.Lines.LoadFromFile('Uzivatele_Plneni.csv');
  Uzivatel_Nalezen:=False;
  for I := 0 to Form4.Memo2.Lines.Count do begin
    if Form4.Label2.Caption=Form4.Memo2.Lines[I] then begin
      Pozice_Uzivatele:=I;
      Uzivatel_Nalezen:=True;
    end;
  end;

  if Uzivatel_Nalezen=True then begin
    Form4.Edit6.Text:=Form4.Memo2.Lines[Pozice_Uzivatele+1];
    Form4.Edit7.Text:=Form4.Memo2.Lines[Pozice_Uzivatele+2];
    Form4.Edit8.Text:=Form4.Memo2.Lines[Pozice_Uzivatele+3];
    Form4.Edit9.Text:=Form4.Memo2.Lines[Pozice_Uzivatele+4];
    end else begin
      Y:=Form4.Memo2.Lines.Count;
      Form4.Memo2.Lines[Y]:= Form4.Label12.Caption + #13#10;
      Form4.Memo2.Lines[Y+1]:= Form4.Edit6.Text + #13#10;
      Form4.Memo2.Lines[Y+2]:= Form4.Edit7.Text + #13#10;
      Form4.Memo2.Lines[Y+3]:= Form4.Edit8.Text + #13#10;
      Form4.Memo2.Lines[Y+4]:= Form4.Edit9.Text + #13#10;
      Form4.Memo2.Lines[Y+5]:= ' ' + #13#10;
    end;

  Form3.Hide;
  Form4.Memo2.Lines.SaveToFile('Uzivatele_Plneni.csv');
    end else begin
      Label4.Visible:=True;
    end;
  end;

end;

end.

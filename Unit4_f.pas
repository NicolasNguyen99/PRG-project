unit Unit4_f;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Grids,
  VCLTee.TeCanvas;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Memo1: TMemo;
    Panel3: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    TabSheet4: TTabSheet;
    Label27: TLabel;
    Label28: TLabel;
    Panel4: TPanel;
    Label29: TLabel;
    Button3: TButton;
    Panel5: TPanel;
    Panel6: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Edit5: TEdit;
    ComboBox1: TComboBox;
    Panel7: TPanel;
    Button2: TButton;
    Label36: TLabel;
    Panel8: TPanel;
    Label3: TLabel;
    Memo3: TMemo;
    Button4: TButton;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label30: TLabel;
    Label40: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Label4: TLabel;
    Edit8: TEdit;
    Label41: TLabel;
    Edit9: TEdit;
    Label42: TLabel;
    Memo2: TMemo;
    Panel9: TPanel;
    Button5: TButton;
    Label43: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Edit4Click(Sender: TObject);
    procedure Edit3Click(Sender: TObject);
    procedure Edit5Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  I, Pozice_Uzivatele, vyber:integer;
  Uzivatel_Nalezen: Boolean;

implementation

{$R *.dfm}

uses Unit1_f, Unit2_f, Unit3_f;

procedure TForm4.Button1Click(Sender: TObject);
begin
  Label2.Caption:='';
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  Edit4.Text:='';
  Edit5.Text:='';
  Edit6.Text:='';
  Form1.Show;
  Form4.Hide;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  Pozice_Uzivatele:=0;
  Y:=0;
  if StrToFloat(Edit7.Text)<10 then begin
    Edit4.Enabled:=False;
    Edit7.Text:='0';
    Edit7.Color:=Cllime;
    Edit4.Text:='0';
  end;
  if StrToFloat(Edit8.Text)<10 then begin
    Edit3.Enabled:=False;
    Edit8.Text:='0';
    Edit8.Color:=Cllime;
    Edit3.Text:='0';
  end;
  if StrToFloat(Edit9.Text)<10 then begin
    Edit5.Enabled:=False;
    Edit9.Text:='0';
    Edit9.Color:=Cllime;
    Edit5.Text:='0';
  end;

  if Edit7.Text<>'0' then Edit7.Text:=FloatToStr((StrToFloat(Edit7.Text))-(StrToFloat(Edit4.Text)));
  if Edit8.Text<>'0' then Edit8.Text:=FloatToStr((StrToFloat(Edit8.Text))-(StrToFloat(Edit3.Text)));
  if Edit9.Text<>'0' then Edit9.Text:=FloatToStr((StrToFloat(Edit9.Text))-(StrToFloat(Edit5.Text)));
  if Edit6.Text<>'0' then Edit6.Text:=FloatToStr((StrToFloat(Edit6.Text))-(((StrToFloat(Edit4.Text))*4)+((StrToFloat(Edit3.Text))*4)+((StrToFloat(Edit5.Text))*9)));
  for I := 1 to Memo2.Lines.Count do begin
    if Label2.Caption=Memo2.Lines[I] then begin
      Pozice_Uzivatele:=I;
    end;
  end;
  Memo2.Lines.Delete(Pozice_Uzivatele+1);
  Memo2.Lines.Delete(Pozice_Uzivatele+1);
  Memo2.Lines.Delete(Pozice_Uzivatele+1);
  Memo2.Lines.Delete(Pozice_Uzivatele+1);

  if Edit6.Text='0' then begin
    Memo2.Lines[Pozice_Uzivatele+1]:= '0' + #13#10;
  end else begin
    Memo2.Lines[Pozice_Uzivatele+1]:= Edit6.Text + #13#10;
  end;

  if Edit7.Text='0' then begin
    Memo2.Lines[Pozice_Uzivatele+2]:= '0' + #13#10;
  end else begin
    Memo2.Lines[Pozice_Uzivatele+2]:= Edit7.Text + #13#10;
  end;

  if Edit6.Text='0' then begin
    Memo2.Lines[Pozice_Uzivatele+3]:= '0' + #13#10;
  end else begin
    Memo2.Lines[Pozice_Uzivatele+3]:= Edit8.Text + #13#10;
  end;

  if Edit6.Text='0' then begin
    Memo2.Lines[Pozice_Uzivatele+4]:= '0' + #13#10;
  end else begin
    Memo2.Lines[Pozice_Uzivatele+4]:= Edit9.Text + #13#10;
  end;

  //for I := 0 to Memo2.Lines.Count do begin
    //inc(Y);
    //if Memo2.Lines[I]=' ' then break;
  //end;
  //Y:=Y-2;
  //Memo2.Lines.Insert(Y,Edit1.Text+ #13#10);
  //Memo2.Lines.Insert(Y+1,Edit2.Text+ #13#10);
  //Memo2.Lines.Insert(Y+2,Edit4.Text+ #13#10);
  //Memo2.Lines.Insert(Y+3,Edit3.Text+ #13#10);
  //Memo2.Lines.Insert(Y+4,Edit5.Text+ #13#10);
  //Memo3.Clear;
  //Memo3.Lines.SaveToFile('Historie_Jidlo.csv');

  Memo2.Lines.SaveToFile('Uzivatele_Plneni.csv');

  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  Edit4.Text:='';
  Edit5.Text:='';
  Label40.Visible:=True;

  if StrToFloat(Edit7.Text)<10 then begin
    Edit4.Enabled:=False;
    Edit7.Text:='0';
    Edit7.Color:=Cllime;
    Edit4.Text:='0';
  end;
  if StrToFloat(Edit8.Text)<10 then begin
    Edit3.Enabled:=False;
    Edit8.Text:='0';
    Edit8.Color:=Cllime;
    Edit3.Text:='0';
  end;
  if StrToFloat(Edit9.Text)<10 then begin
    Edit5.Enabled:=False;
    Edit9.Text:='0';
    Edit9.Color:=Cllime;
    Edit5.Text:='0';
  end;

  if StrToFloat(Edit6.Text)<100 then begin
    Edit6.Color:=Cllime;
    Edit1.Enabled:=False;
    Edit2.Enabled:=False;
    Button2.Enabled:=False;
    Edit5.Enabled:=False;
    Edit9.Text:='0';
    Edit9.Color:=Cllime;
    Edit3.Enabled:=False;
    Edit8.Text:='0';
    Edit8.Color:=Cllime;
    Edit4.Enabled:=False;
    Edit7.Text:='0';
    Edit7.Color:=Cllime;
    Edit6.Text:='0';
      case MessageDlg('Dnešek už si splnil!', mtConfirmation, [mbOK], 0) of
        mrOk:
        begin
          Edit1.Text:='';
          Edit2.Text:='';
          Edit3.Text:='';
          Edit4.Text:='';
          Edit5.Text:='';
          Edit6.Color:=clWindow;
          Edit7.Color:=clWindow;
          Edit8.Color:=clWindow;
          Edit9.Color:=clWindow;
          Label40.Visible:=False;
          Memo2.Lines.Delete(Pozice_Uzivatele+1);
          Memo2.Lines.Delete(Pozice_Uzivatele+1);
          Memo2.Lines.Delete(Pozice_Uzivatele+1);
          Memo2.Lines.Delete(Pozice_Uzivatele+1);
          Memo2.Lines[Pozice_Uzivatele+1]:= Label26.Caption + #13#10;
          Memo2.Lines[Pozice_Uzivatele+2]:= Label22.Caption + #13#10;
          Memo2.Lines[Pozice_Uzivatele+3]:= Label24.Caption + #13#10;
          Memo2.Lines[Pozice_Uzivatele+4]:= Label23.Caption + #13#10;
          Memo2.Lines.SaveToFile('Uzivatele_Plneni.csv');
          Form1.Show;
          Form4.Hide;
        end;
      end;
  end;

end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  Label2.Caption:=IntToStr(Form3.Pozice_Uzivatele);
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
  Memo3.Clear;
  Memo3.Lines.SaveToFile('Historie_Jidlo.csv');
  Edit6.Text:=Label26.Caption;
  Edit7.Text:=Label22.Caption;
  Edit8.Text:=Label24.Caption;
  Edit9.Text:=Label23.Caption;
end;

procedure TForm4.Button5Click(Sender: TObject);
begin
  Memo2.Lines.LoadFromFile('Uzivatele_Plneni.csv');
  Memo2.Clear;
  Memo2.Lines.SaveToFile('Uzivatele_Plneni.csv');
end;

procedure TForm4.Edit1Click(Sender: TObject);
begin
  Label40.Visible:=False;
end;

procedure TForm4.Edit2Click(Sender: TObject);
begin
  Label40.Visible:=False;
end;

procedure TForm4.Edit3Click(Sender: TObject);
begin
  Label40.Visible:=False;
end;

procedure TForm4.Edit4Click(Sender: TObject);
begin
  Label40.Visible:=False;
end;

procedure TForm4.Edit5Click(Sender: TObject);
begin
  Label40.Visible:=False;
end;

end.

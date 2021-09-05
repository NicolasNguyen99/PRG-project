unit Unit1_f;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Unit2_f, Unit3_f;

type
  TForm1 = class(TForm)
    Panel2: TPanel;
    Button2: TButton;
    Button1: TButton;
    Button3: TButton;
    Panel1: TPanel;
    Label7: TLabel;
    Panel3: TPanel;
    Button5: TButton;
    Memo1: TMemo;
    Button4: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit5_f;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form2.Show;
  Form1.Hide;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form3.Show;
  Form1.Hide;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Close;
Form2.Close;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Form5.Show;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Memo1.Clear;
  Memo1.Lines.SaveToFile('Uzivatele.csv');
end;

end.

program Project1;

uses
  Vcl.Forms,
  Unit1_f in 'Unit1_f.pas' {Form1},
  Unit2_f in 'Unit2_f.pas' {Form2},
  Unit3_f in 'Unit3_f.pas' {Form3},
  Unit4_f in 'Unit4_f.pas' {Form4},
  Unit5_f in 'Unit5_f.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.

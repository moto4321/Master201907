program Calculator_Project;

uses
  Vcl.Forms,
  Calculator in 'Calculator.pas' {Form1},
  Splash in 'Splash.pas' {USplash};

{$R *.res}

begin
  Application.Initialize;
  { SplashForm �����ϰ� ȭ�鿡 �Ѹ� }
  USplash := TUSplash.Create(Application);
  USplash.Show;
  USplash.Refresh;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  USplash.Hide;
  USplash.Free;
  //Application.CreateForm(TUSplash, USplash);
  Application.Run;
end.

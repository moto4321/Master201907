unit Splash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg;

type
  TUSplash = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    lblName: TLabel;
    lblEmail: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  USplash: TUSplash;

implementation

{$R *.dfm}

end.

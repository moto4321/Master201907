unit Calculator;

interface

uses
  Winapi.Windows,StrUtils, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, NumberEdit;

type
  TForm1 = class(TForm)
    GridPanel1: TGridPanel;
    btn07: TButton;
    btn08: TButton;
    btn09: TButton;
    btnBack: TButton;
    btn04: TButton;
    btn05: TButton;
    btn06: TButton;
    btnMul: TButton;
    btnDiv: TButton;
    btn01: TButton;
    btn02: TButton;
    btn03: TButton;
    btnPlus: TButton;
    btnMin: TButton;
    btn0: TButton;
    btn00: TButton;
    btnPeriod: TButton;
    btnEqual: TButton;
    edtResult: TEdit;
    btnAC: TButton;
    procedure btn0Click(Sender: TObject);
    procedure btn00Click(Sender: TObject);
    procedure btn01Click(Sender: TObject);
    procedure btnPlusClick(Sender: TObject);
    procedure btnMinClick(Sender: TObject);
    procedure btnMulClick(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
    procedure btnEqualClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure btnACClick(Sender: TObject);
    procedure btnPeriodClick(Sender: TObject);
  private
    { Private declarations }
    FResult: String;
    Foperand: Integer;  // +:1, -:2, *:3, /:4
    FfirstNum: double;
    FCal: Boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn00Click(Sender: TObject);
begin
  if FCal = true then    // 점이 없으면 clear 뿐 아니라 두번째 수가 문제!
    begin
      if FfirstNum = StrToFloat(edtResult.Text) then
        begin
          edtResult.Clear;
        end;
    end;
  FResult := edtResult.Text;
  if FResult <> '' then
    begin
      FResult := FResult + '00';
      edtResult.Text := FResult;
    end;
end;

procedure TForm1.btn01Click(Sender: TObject);
begin
  {if FCal = true then    // 점이 없으면 clear 뿐 아니라 두번째 수가 문제!
    begin
      showmessage(edtResult.Text);
      if FfirstNum = StrToFloat(edtResult.Text) then
        begin
          edtResult.Clear;
        end;
    end;}
  
  if (FCal = true) and (FloatToStr(FfirstNum) = edtResult.Text) then
    begin
      edtResult.Clear;
    end;
  FResult := edtResult.Text;
  FResult := FResult + TButton(Sender).Caption;
  edtResult.Text := FResult;
end;

procedure TForm1.btn0Click(Sender: TObject);
begin
  if (FCal = true) and (FloatToStr(FfirstNum) = edtResult.Text) then
    begin
      edtResult.Clear;
    end;
  FResult := edtResult.Text;
  //if FResult <> '' then
    //begin
        FResult := FResult + '0';
        edtResult.Text := FResult;
    //end;
end;


procedure TForm1.btnACClick(Sender: TObject);
begin
  edtResult.Clear;
  Foperand := 0;
  FCal := false;
end;

procedure TForm1.btnBackClick(Sender: TObject);
begin
  edtResult.Text := Copy(edtResult.Text, 1, Length(edtResult.Text) - 1)
end;

procedure TForm1.btnEqualClick(Sender: TObject);
var
  Result: double;
begin
  Result := 0;
  if Foperand = 0 then
    begin
      ShowMessage('Cannot Calculate');
    end
  else
    if Foperand = 1 then
      begin
        Result := FfirstNum + StrToFloat(edtResult.Text);
        edtResult.Text := FloatToStr(Result);
      end
    else if Foperand = 2 then
      begin
        Result := FfirstNum - StrToFloat(edtResult.Text);
        edtResult.Text := FloatToStr(Result);
      end
    else if Foperand = 3 then
      begin
        Result := FfirstNum * StrToFloat(edtResult.Text);
        edtResult.Text := FloatToStr(Result);
      end
    else if Foperand = 4 then
      begin
        try
          Result := FfirstNum / StrToFloat(edtResult.Text);
        except
          on E: EDivByZero do
            ShowMessage('정수를 0으로 나눔');
          on E: EZeroDivide do
            ShowMessage('실수를 0으로 나눔');
        end;
        edtResult.Text := FloatToStr(Result);
      end;

  Foperand := 0;
  FCal := false;

end;

procedure TForm1.btnDivClick(Sender: TObject);
begin
  Foperand := 4;
  FfirstNum := StrToFloat(edtResult.Text);
  FCal := True;
end;

procedure TForm1.btnMinClick(Sender: TObject);
begin
  FOperand := 2;
  FfirstNum := StrToFloat(edtResult.Text);
  FCal := True;
end;

procedure TForm1.btnMulClick(Sender: TObject);
begin
  FOperand := 3;
  FfirstNum := StrToFloat(edtResult.Text);
  FCal := True;
end;

procedure TForm1.btnPeriodClick(Sender: TObject);
begin
  FResult := edtResult.Text;
  { if FCal = true then
    begin
      if FResult <> '' then
        begin
          edtResult.Clear;
        end;
    end; }
  if FResult <> '' then
    begin
      FResult := FResult + '.';
      edtResult.Text := FResult;
    end
  else
    begin
      edtResult.Text := '0.';
    end;

end;

procedure TForm1.btnPlusClick(Sender: TObject);
begin
  FOperand := 1;
  FfirstNum := StrToFloat(edtResult.Text);
  FCal := True;
end;

end.

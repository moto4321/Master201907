// 
// Created by the DataSnap proxy generator.
// 2019-07-18 ���� 1:54:15
// 

unit Uclientclass;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FGetCountCommand: TDBXCommand;
    FInsert_DeptCommand: TDBXCommand;
    FDelete_DeptCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function GetCount(value: string): Integer;
    function Insert_Dept(code: string; dept: string; section: string): Integer;
    function Delete_Dept(code: string): Integer;
  end;

implementation

function TServerMethods1Client.EchoString(Value: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FDBXConnection.CreateCommand;
    FEchoStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEchoStringCommand.Text := 'TServerMethods1.EchoString';
    FEchoStringCommand.Prepare;
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.ExecuteUpdate;
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.ReverseString(Value: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FDBXConnection.CreateCommand;
    FReverseStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReverseStringCommand.Text := 'TServerMethods1.ReverseString';
    FReverseStringCommand.Prepare;
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.ExecuteUpdate;
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.GetCount(value: string): Integer;
begin
  if FGetCountCommand = nil then
  begin
    FGetCountCommand := FDBXConnection.CreateCommand;
    FGetCountCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetCountCommand.Text := 'TServerMethods1.GetCount';
    FGetCountCommand.Prepare;
  end;
  FGetCountCommand.Parameters[0].Value.SetWideString(value);
  FGetCountCommand.ExecuteUpdate;
  Result := FGetCountCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethods1Client.Insert_Dept(code: string; dept: string; section: string): Integer;
begin
  if FInsert_DeptCommand = nil then
  begin
    FInsert_DeptCommand := FDBXConnection.CreateCommand;
    FInsert_DeptCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInsert_DeptCommand.Text := 'TServerMethods1.Insert_Dept';
    FInsert_DeptCommand.Prepare;
  end;
  FInsert_DeptCommand.Parameters[0].Value.SetWideString(code);
  FInsert_DeptCommand.Parameters[1].Value.SetWideString(dept);
  FInsert_DeptCommand.Parameters[2].Value.SetWideString(section);
  FInsert_DeptCommand.ExecuteUpdate;
  Result := FInsert_DeptCommand.Parameters[3].Value.GetInt32;
end;

function TServerMethods1Client.Delete_Dept(code: string): Integer;
begin
  if FDelete_DeptCommand = nil then
  begin
    FDelete_DeptCommand := FDBXConnection.CreateCommand;
    FDelete_DeptCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDelete_DeptCommand.Text := 'TServerMethods1.Delete_Dept';
    FDelete_DeptCommand.Prepare;
  end;
  FDelete_DeptCommand.Parameters[0].Value.SetWideString(code);
  FDelete_DeptCommand.ExecuteUpdate;
  Result := FDelete_DeptCommand.Parameters[1].Value.GetInt32;
end;

constructor TServerMethods1Client.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;

constructor TServerMethods1Client.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;

destructor TServerMethods1Client.Destroy;
begin
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  FGetCountCommand.DisposeOf;
  FInsert_DeptCommand.DisposeOf;
  FDelete_DeptCommand.DisposeOf;
  inherited;
end;

end.

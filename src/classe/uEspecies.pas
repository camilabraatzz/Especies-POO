unit uEspecies;

interface

uses
  uExceptions, System.Generics.Collections, System.SysUtils;

type
  TEspecies = class
  private
    FNomeEspecie : String;
    function GetNomeEspecie: String;
    procedure SetNomeEspecie(const Value: String);
  public
    property NomeEspecie : String read GetNomeEspecie write SetNomeEspecie;
    function ToString : string; override;
  end;

implementation

{ TEspecies }

function TEspecies.GetNomeEspecie: String;
begin
  Result := FNomeEspecie;
end;

procedure TEspecies.SetNomeEspecie(const Value: String);
begin
  if Value = '' then
    raise ENomeObrigatorio.Create;
  FNomeEspecie := Value
end;

function TEspecies.ToString: string;
begin
  Result := FNomeEspecie;
end;

end.

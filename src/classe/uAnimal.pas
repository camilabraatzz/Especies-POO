unit uAnimal;

interface

uses
  uExceptions, uEspecies, System.SysUtils;

type
  TAnimal = class
  private
    FNomeDoAnimal : String;
    FNomeDaEspecie : TEspecies;
    function GetNomeAnimal: String;
    procedure SetNomeAnimal(const Value: String);
    function GetNomeDaEspecie: TEspecies;
    procedure SetNomeDaEspecie(const Value: TEspecies);
  public
    property NomeAnimal : String read GetNomeAnimal write SetNomeAnimal;
    property NomeDaEspecie : TEspecies read GetNomeDaEspecie write SetNomeDaEspecie;
    function ToString : String; override;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TAnimal }

constructor TAnimal.Create;
begin
  FNomeDaEspecie := TEspecies.Create;
end;

destructor TAnimal.Destroy;
begin
  if Assigned(FNomeDaEspecie) then
    FreeAndNil(FNomeDaEspecie)
end;

function TAnimal.GetNomeAnimal: String;
begin
  Result := FNomeDoAnimal;
end;

function TAnimal.GetNomeDaEspecie: TEspecies;
begin
  Result := FNomeDaEspecie;
end;

procedure TAnimal.SetNomeAnimal(const Value: String);
begin
  if Value = '' then
    raise ENomeObrigatorio.Create;
  FNomeDoAnimal := Value;
end;

procedure TAnimal.SetNomeDaEspecie(const Value: TEspecies);
begin
  FNomeDaEspecie := Value;
end;

function TAnimal.ToString: String;
begin
  Result := FNomeDoAnimal;
end;

end.

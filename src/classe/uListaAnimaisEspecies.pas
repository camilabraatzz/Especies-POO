unit uListaAnimaisEspecies;

interface

uses
  System.Generics.Collections, uAnimal;

type
  TListaAnimaisEspecies = class
  private
    FoListaAnimaisEspecies : TList<TAnimal>;
    function GetListaAimaisEspecies: TList<TAnimal>;
    procedure SetListaAimaisEspecies(const Value: TList<TAnimal>);
  public
    property ListaAnimaisEspecies : TList<TAnimal> read GetListaAimaisEspecies write SetListaAimaisEspecies;
    procedure AdicionarLista(oAnimal : TAnimal);
    function ToString : String; override;
  end;

implementation

{ TListaAnimaisEspecies }

procedure TListaAnimaisEspecies.AdicionarLista(oAnimal: TAnimal);
begin
  FoListaAnimaisEspecies.Add(oAnimal);
end;

function TListaAnimaisEspecies.GetListaAimaisEspecies: TList<TAnimal>;
begin
  Result := FoListaAnimaisEspecies;
end;

procedure TListaAnimaisEspecies.SetListaAimaisEspecies(
  const Value: TList<TAnimal>);
begin
  FoListaAnimaisEspecies := Value;
end;

function TListaAnimaisEspecies.ToString: String;
var
  oAnimal : TAnimal;
begin
  for oAnimal in FoListaAnimaisEspecies do
   Result :=
end;

end.

unit uExceptions;

interface

uses
  System.SysUtils;

type
  ENomeObrigatorio = class(exception)
  public
    constructor Create; reintroduce;
  end;

implementation

{ ENomeObrigatorio }

constructor ENomeObrigatorio.Create;
begin
  Self.Message := 'O nome � obrigat�rio';
end;

end.

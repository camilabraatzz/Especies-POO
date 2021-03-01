program Especies;

uses
  Vcl.Forms,
  uFrmPrincipal in 'view\uFrmPrincipal.pas' {Form1},
  uAnimal in 'classe\uAnimal.pas',
  uListaDeAnimais in 'classe\uListaDeAnimais.pas',
  uListaDeEspecies in 'classe\uListaDeEspecies.pas',
  uEspecies in 'classe\uEspecies.pas',
  uExceptions in 'exception\uExceptions.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Auric');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

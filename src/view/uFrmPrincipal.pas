unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.WinXCtrls, uEspecies, uListaDeEspecies, uAnimal, uListaDeAnimais,
  uExceptions;

type
  TForm1 = class(TForm)
    pgControl: TPageControl;
    pg1: TTabSheet;
    pg2: TTabSheet;
    edtEspecies: TLabeledEdit;
    edtNomeAnimal: TLabeledEdit;
    btnInserir2: TButton;
    btnInserir1: TButton;
    cmbEspecie: TComboBox;
    Label2: TLabel;
    Memo1: TMemo;
    procedure btnInserir1Click(Sender: TObject);
    procedure btnInserir2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    oEspecies : TEspecies;
    oAnimal   : TAnimal;
    oListaDeEspecies : TListaDeEspecies;
    oListaDeAnimais  : TListaDeAnimais;
    procedure InserirEspecie;
    procedure InserirAnimal;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  oAnimal          := TAnimal.Create;
  oListaDeAnimais  := TListaDeAnimais.Create;
  oEspecies        := TEspecies.Create;
  oListaDeEspecies := TListaDeEspecies.Create;
end;

procedure TForm1.InserirEspecie;
begin
  oEspecies.NomeEspecie := edtEspecies.Text;
  oListaDeEspecies.AdicionarLista(oEspecies);
  cmbEspecie.AddItem(oListaDeEspecies.ToString, NIL);
end;

procedure TForm1.btnInserir1Click(Sender: TObject);
begin
  InserirEspecie;
  pgControl.TabIndex := pg2.TabIndex;
end;

procedure TForm1.InserirAnimal;
begin
  InserirEspecie;
  oAnimal.NomeAnimal := edtNomeAnimal.Text;
  oListaDeAnimais.AdicionarAnimal(oAnimal);
  Memo1.Lines.Add(oListaDeAnimais.ToString);
end;

procedure TForm1.btnInserir2Click(Sender: TObject);
begin
  InserirAnimal;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  if Assigned(oAnimal) then
      FreeAndNil(oAnimal);
  if Assigned(oListaDeAnimais) then
      FreeAndNil(oListaDeAnimais);
  if Assigned(oEspecies) then
      FreeAndNil(oEspecies);
  if Assigned(oListaDeEspecies) then
      FreeAndNil(oListaDeEspecies);
end;
end.

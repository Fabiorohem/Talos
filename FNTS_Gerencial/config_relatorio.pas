unit config_relatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tfrmconfig_relatorio = class(TForm)
    grprelatorio: TGroupBox;
    lbltitulo: TLabel;
    lblsubtitulo: TLabel;
    chk1: TCheckBox;
    chk2: TCheckBox;
    chk3: TCheckBox;
    chk4: TCheckBox;
    chk5: TCheckBox;
    chk6: TCheckBox;
    chk7: TCheckBox;
    chk8: TCheckBox;
    chk9: TCheckBox;
    chk10: TCheckBox;
    chk11: TCheckBox;
    chk12: TCheckBox;
    chk13: TCheckBox;
    chk14: TCheckBox;
    chk15: TCheckBox;
    btngravar: TButton;
    btncancelar: TButton;
    procedure chk15Click(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconfig_relatorio:Tfrmconfig_relatorio;

implementation

{$R *.dfm}

uses lista_venda2, principal;

procedure Tfrmconfig_relatorio.btngravarClick(Sender: TObject);
begin

if chk10.Checked = true then
frmlista_venda2.combo_relatorio.Items.Add('COMISS�O POR VENDA A VISTA/RECEBIMENTOS');
frmlista_venda2.combo_relatorio.text := 'COMISS�O POR VENDA A VISTA/RECEBIMENTOS';
    frmlista_venda2.combo_cliente.visible := TRUE;
    frmlista_venda2.combo_vendedor.visible := TRUE;
    frmlista_venda2.combo_caixa.visible := TRUE;
    frmlista_venda2.lcaixa.visible := TRUE;
    frmlista_venda2.combo_forma.visible := TRUE;
    frmlista_venda2.lforma.visible := TRUE;
 
    if chk1.Checked = true then
    frmlista_venda2.combo_relatorio.Items.Add('RELA��O SINT�TICA');
    frmlista_venda2.combo_relatorio.Text := 'RELA��O SINT�TICA';
    frmlista_venda2.combo_cliente.visible := TRUE;
    frmlista_venda2.combo_vendedor.visible := TRUE;
    frmlista_venda2.combo_caixa.visible := TRUE;
    frmlista_venda2.lcaixa.visible := TRUE;
    frmlista_venda2.combo_forma.visible := TRUE;
    frmlista_venda2.lforma.visible := TRUE;

    frmlista_venda2.combo_produto.visible := false;
    frmlista_venda2.LPRODUTO.visible := false;
    frmlista_venda2.lgrupo.visible := false;
    frmlista_venda2.combo_grupo.visible := false;

    frmlista_venda2.lfornecedor.visible := TRUE;
    frmlista_venda2.combo_fornecedor.visible := TRUE;
    frmlista_venda2.lmarca.visible := TRUE;
    frmlista_venda2.combo_marca.visible := TRUE;
    frmlista_venda2.lsituacao.visible := true;
    frmlista_venda2.COMBO_SITUACAO.visible := True;
    frmlista_venda2.bTodos_Produtos.visible := false;
    frmlista_venda2.Ltipo.visible := True;
    frmlista_venda2.combo_tipo.visible := True;

if  chk6.Checked = true then
    frmlista_venda2.combo_relatorio.Items.Add('RESUMO DE VENDAS POR VENDEDOR');
    frmlista_venda2.combo_relatorio.Text := 'RESUMO DE VENDAS POR VENDEDOR';
    frmlista_venda2.combo_cliente.visible := TRUE;
    frmlista_venda2.combo_vendedor.visible := TRUE;
    frmlista_venda2.combo_caixa.visible := TRUE;
    frmlista_venda2.lcaixa.visible := TRUE;
    frmlista_venda2.combo_forma.visible := TRUE;
    frmlista_venda2.lforma.visible := TRUE;

    frmlista_venda2.combo_produto.visible := false;
    frmlista_venda2.LPRODUTO.visible := false;
    frmlista_venda2.lgrupo.visible := false;
    frmlista_venda2.combo_grupo.visible := false;

    frmlista_venda2.lfornecedor.visible := TRUE;
    frmlista_venda2.combo_fornecedor.visible := TRUE;
    frmlista_venda2.lmarca.visible := TRUE;
    frmlista_venda2.combo_marca.visible := TRUE;
    frmlista_venda2.bTodos_Produtos.visible := false;
    frmlista_venda2.Ltipo.visible := False;
    frmlista_venda2.combo_tipo.visible := False;



  end;


procedure Tfrmconfig_relatorio.chk15Click(Sender: TObject);
var
i: Integer;
checado:Boolean;
begin
checado:=false;
if chk15.checked = True then
checado:=True;
for i := 0 to ComponentCount-1 do
if (Components[i] is TCheckBox) then
TCheckBox (Components[i]).checked:=checado;
end;



end.

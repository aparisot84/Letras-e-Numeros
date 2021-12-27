unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.MPlayer;

type
  TForm1 = class(TForm)
    BtnSort: TButton;
    BtnB: TButton;
    Label1: TLabel;
    BtnI: TButton;
    BtnP: TButton;
    BtnA: TButton;
    BtnH: TButton;
    BtnO: TButton;
    BtnV: TButton;
    BtnQ: TButton;
    BtnJ: TButton;
    BtnW: TButton;
    BtnR: TButton;
    BtnS: TButton;
    BtnC: TButton;
    BtnK: TButton;
    BtnL: TButton;
    BtnM: TButton;
    BtnN: TButton;
    BtnD: TButton;
    BtnE: TButton;
    BtnF: TButton;
    BtnG: TButton;
    BtnT: TButton;
    BtnU: TButton;
    BtnX: TButton;
    BtnY: TButton;
    BtnZ: TButton;
    MediaPlayer1: TMediaPlayer;
    BtnSair: TButton;
    BtnDica: TButton;
    procedure BtnSortClick(Sender: TObject);
    function aleatorio: integer;
    procedure verifica(letra: string);
    procedure playletra(letra: string);
    procedure BtnDicaClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnAClick(Sender: TObject);
    procedure BtnBClick(Sender: TObject);
    procedure BtnCClick(Sender: TObject);
    procedure BtnDClick(Sender: TObject);
    procedure BtnEClick(Sender: TObject);
    procedure BtnFClick(Sender: TObject);
    procedure BtnGClick(Sender: TObject);
    procedure BtnHClick(Sender: TObject);
    procedure BtnIClick(Sender: TObject);
    procedure BtnJClick(Sender: TObject);
    procedure BtnKClick(Sender: TObject);
    procedure BtnLClick(Sender: TObject);
    procedure BtnMClick(Sender: TObject);
    procedure BtnNClick(Sender: TObject);
    procedure BtnOClick(Sender: TObject);
    procedure BtnPClick(Sender: TObject);
    procedure BtnQClick(Sender: TObject);
    procedure BtnRClick(Sender: TObject);
    procedure BtnSClick(Sender: TObject);
    procedure BtnTClick(Sender: TObject);
    procedure BtnUClick(Sender: TObject);
    procedure BtnVClick(Sender: TObject);
    procedure BtnWClick(Sender: TObject);
    procedure BtnXClick(Sender: TObject);
    procedure BtnYClick(Sender: TObject);
    procedure BtnZClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  indice: array[0..25] of String = ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
  numero: integer;

implementation

{$R *.dfm}

function TForm1.aleatorio;
begin
  Result := Random(26);
  //ele ja pode dar a letra do vetor aqui e eu so vou precisar usar o resultado
end;

procedure TForm1.verifica(letra: string);
begin
  if letra = Label1.Caption then
  begin
    MediaPlayer1.FileName := ExtractFilePath(Application.ExeName) + 'aplauso\applause'+ IntToStr(Random(9)) + '.mp3';
    MediaPlayer1.Open;
    MediaPlayer1.Play;
    ShowMessage('Parabéns, você acertou!!!!!!');
  end
  else
  begin
    MediaPlayer1.FileName := ExtractFilePath(Application.ExeName) + 'erro\erro'+ IntToStr(Random(2)) + '.mp3';
    MediaPlayer1.Open;
    MediaPlayer1.Play;
    ShowMessage('Que pena, você errou!!!!!');
  end;
end;

procedure TForm1.BtnSortClick(Sender: TObject);
var alt: integer;
begin
  Label1.Caption := indice[aleatorio];
  Label1.Visible := False;
  playletra(Label1.Caption);
end;



procedure TForm1.playletra(letra: string);
begin
  MediaPlayer1.FileName := ExtractFilePath(Application.ExeName) + 'sounds\' + LowerCase(letra) + '.mp3';
  MediaPlayer1.Open;
  MediaPlayer1.Play;
end;

procedure TForm1.BtnAClick(Sender: TObject);
begin
  verifica(BtnA.Caption);
end;

procedure TForm1.BtnBClick(Sender: TObject);
begin
  verifica(BtnB.Caption);
end;

procedure TForm1.BtnCClick(Sender: TObject);
begin
  verifica(BtnC.Caption);
end;

procedure TForm1.BtnDClick(Sender: TObject);
begin
  verifica(BtnD.Caption);
end;

procedure TForm1.BtnDicaClick(Sender: TObject);
begin
 Label1.Visible := True;
end;

procedure TForm1.BtnEClick(Sender: TObject);
begin
  verifica(BtnE.Caption);
end;

procedure TForm1.BtnFClick(Sender: TObject);
begin
  verifica(BtnF.Caption);
end;

procedure TForm1.BtnGClick(Sender: TObject);
begin
  verifica(BtnG.Caption);
end;

procedure TForm1.BtnHClick(Sender: TObject);
begin
  verifica(BtnH.Caption);
end;

procedure TForm1.BtnIClick(Sender: TObject);
begin
  verifica(BtnI.Caption);
end;

procedure TForm1.BtnJClick(Sender: TObject);
begin
  verifica(BtnJ.Caption);
end;

procedure TForm1.BtnKClick(Sender: TObject);
begin
  verifica(BtnK.Caption);
end;

procedure TForm1.BtnLClick(Sender: TObject);
begin
  verifica(BtnL.Caption);
end;

procedure TForm1.BtnMClick(Sender: TObject);
begin
  verifica(BtnM.Caption);
end;

procedure TForm1.BtnNClick(Sender: TObject);
begin
  verifica(BtnN.Caption);
end;

procedure TForm1.BtnOClick(Sender: TObject);
begin
  verifica(BtnO.Caption);
end;

procedure TForm1.BtnPClick(Sender: TObject);
begin
  verifica(BtnP.Caption);
end;

procedure TForm1.BtnQClick(Sender: TObject);
begin
  verifica(BtnQ.Caption);
end;

procedure TForm1.BtnRClick(Sender: TObject);
begin
  verifica(BtnR.Caption);
end;

procedure TForm1.BtnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;
procedure TForm1.BtnSClick(Sender: TObject);
begin
  verifica(BtnS.Caption);
end;
procedure TForm1.BtnTClick(Sender: TObject);
begin
  verifica(BtnT.Caption);
end;
procedure TForm1.BtnUClick(Sender: TObject);
begin
  verifica(BtnU.Caption);
end;

procedure TForm1.BtnVClick(Sender: TObject);
begin
  verifica(BtnV.Caption);
end;

procedure TForm1.BtnWClick(Sender: TObject);
begin
  verifica(BtnW.Caption);
end;

procedure TForm1.BtnXClick(Sender: TObject);
begin
  verifica(BtnX.Caption);
end;

procedure TForm1.BtnYClick(Sender: TObject);
begin
  verifica(BtnY.Caption);
end;

procedure TForm1.BtnZClick(Sender: TObject);
begin
  verifica(BtnZ.Caption);
end;

end.
























{
Ao abrir o programa, teremos que apertar o botao iniciar
(também haverá o botao pausar e sair)

O programa vai gerar um numero aleatório que vai er usado como indice para os números e letras

O programa vai tocar o som correspondente a letra e o usuário deve clicar na letra

  Se a letra for certa, vai tocar um som e vai contabilizar acerto

  Se a letra for errada, vai tocar um som e vai contabilizar um erro

    Vai recomeçar após 5 segundos










}
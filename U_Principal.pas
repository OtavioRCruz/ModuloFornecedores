unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TForm3 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Image2: TImage;
    Image3: TImage;
    Label3: TLabel;
    Label2: TLabel;
    Image4: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses U_Consulta, U_Cadastro;

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
  U_Cadastro.Form1.ShowModal;
end;

procedure TForm3.BitBtn2Click(Sender: TObject);
begin
  U_Consulta.Form2.ShowModal;
end;

procedure TForm3.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := MessageDlg('N�o esque�a de fazer o backup!', mtInformation, [mbOK,mbCancel],0) = mrOk;
end;

procedure TForm3.Image3Click(Sender: TObject);
begin
  U_Cadastro.Form1.ShowModal;
end;

procedure TForm3.Image4Click(Sender: TObject);
begin
  U_Consulta.Form2.ShowModal;
end;

procedure TForm3.Label2Click(Sender: TObject);
begin
  U_Cadastro.Form1.ShowModal;
end;

procedure TForm3.Label3Click(Sender: TObject);
begin
  U_Consulta.Form2.ShowModal;
end;

end.

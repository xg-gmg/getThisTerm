unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Text1: TText;
    Text2: TText;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses term;
procedure TForm1.Button1Click(Sender: TObject);
var
  y:string;
  m:string;
begin
   Edit1.Text := FormatDateTime('yyyymmddhhnnss', Now()); //ֱ����ʾ��ǰ������   ʱ����
   y := FormatDateTime('yyyy', Now());   //��
   m := FormatDateTime('mm', Now());     //��
   Edit2.Text:=whichTerm(y,m); //�����ǰѧ��
end;

end.

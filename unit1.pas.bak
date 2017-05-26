unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Grids, Menus;

type

  { TFormGame2 }

  TFormGame2 = class(TForm)
    MainMenu1: TMainMenu;
    AboutBTN: TMenuItem;
    StartBTN: TMenuItem;
    ModeBTN: TMenuItem;
    ExitBTN: TMenuItem;
    StringGrid1: TStringGrid;
    procedure AboutBTNClick(Sender: TObject);
    procedure ExitBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ModeBTNClick(Sender: TObject);
    procedure StartBTNClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormGame2: TFormGame2;

implementation

{$R *.lfm}

{ TFormGame2 }

procedure TFormGame2.StartBTNClick(Sender: TObject);
begin

end;

procedure TFormGame2.ModeBTNClick(Sender: TObject);
begin
     FormGame2.Hide;
     //FormMainMenu.Show;
end;

procedure TFormGame2.FormCreate(Sender: TObject);
begin

end;

procedure TFormGame2.AboutBTNClick(Sender: TObject);
begin
   Showmessage('Powered by ...');
end;

procedure TFormGame2.ExitBTNClick(Sender: TObject);
begin
    Close;
end;

end.


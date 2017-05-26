unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Menus, StdCtrls, form_MainMenu;

type

  { TFormMMenu }

  TFormMMenu = class(TForm)
    PlayGameBTN: TButton;
    CloseBTN: TButton;
    Image1: TImage;
    MainMenu1: TMainMenu;
    ChoseBTN: TMenuItem;
    ExitBTN: TMenuItem;
    AboutBTN: TMenuItem;
    NewGameBTN: TMenuItem;
    procedure AboutBTNClick(Sender: TObject);
    procedure ChoseBTNClick(Sender: TObject);
    procedure CloseBTNClick(Sender: TObject);
    procedure ExitBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure NewGameBTNClick(Sender: TObject);
    procedure PlayGameBTNClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormMMenu: TFormMMenu;

implementation

{$R *.lfm}

{ TFormMMenu }

procedure TFormMMenu.Image1Click(Sender: TObject);
begin

end;

procedure TFormMMenu.CloseBTNClick(Sender: TObject);
begin
  Close;
end;

procedure TFormMMenu.ExitBTNClick(Sender: TObject);
begin
  Close;
end;

procedure TFormMMenu.AboutBTNClick(Sender: TObject);
begin
    showmessage('Данное вот это что-то еще на стадии разработки. У нас кончилось время, деньги и мана.');
end;

procedure TFormMMenu.ChoseBTNClick(Sender: TObject);
begin
  FormMainMenu.Hide;
  FormMMenu.Show;
end;

procedure TFormMMenu.FormCreate(Sender: TObject);
begin

end;

procedure TFormMMenu.NewGameBTNClick(Sender: TObject);
begin

end;

procedure TFormMMenu.PlayGameBTNClick(Sender: TObject);
begin
  FormMainMenu.Show;
  FormMMenu.Hide;
end;

end.


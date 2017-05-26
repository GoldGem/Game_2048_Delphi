unit form_MainMenu;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Grids,
  ExtCtrls, Menus, StdCtrls, Unit1;

type

  { TFormMainMenu }

  TFormMainMenu = class(TForm)
    Btn2048: TButton;
    Btn4096: TButton;
    btnExit: TButton;
    MainMenuMain: TMainMenu;
    GameModeBtn: TMenuItem;
    ExitBtn: TMenuItem;
    AboutBTN: TMenuItem;
    NewGameBtn: TMenuItem;
    MainMenuPanel: TPanel;
    StringGrid1: TStringGrid;
    procedure AboutBTNClick(Sender: TObject);
    procedure Btn2048Click(Sender: TObject);
    procedure Btn4096Click(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure ExitBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GameModeBtnClick(Sender: TObject);
    procedure MainMenuPanelClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure NewGameBtnClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormMainMenu: TFormMainMenu;

implementation

{$R *.lfm}

{ TFormMainMenu }

procedure TFormMainMenu.FormCreate(Sender: TObject);
begin
    NewGameBtn.Enabled:=False;
    GameModeBtn.Enabled:=False;
end;

procedure TFormMainMenu.GameModeBtnClick(Sender: TObject);
begin
  MainMenuPanel.Visible:=True;
  NewGameBtn.Enabled:=False;
  GameModeBtn.Enabled:=False;
end;

procedure TFormMainMenu.Btn2048Click(Sender: TObject);
begin
  GameModeBtn.Enabled:=True;
  MainMenuPanel.Visible:=false;
  NewGameBtn.Enabled:=True;
end;

procedure TFormMainMenu.Btn4096Click(Sender: TObject);
begin
  FormGame2.Show;
  FormMainMenu.Hide;
end;

procedure TFormMainMenu.AboutBTNClick(Sender: TObject);
begin
  showmessage('Powered by ...');
end;

procedure TFormMainMenu.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFormMainMenu.ExitBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFormMainMenu.MainMenuPanelClick(Sender: TObject);
begin
  MainMenuPanel.Visible:=True;
end;

procedure TFormMainMenu.MenuItem1Click(Sender: TObject);
begin

end;

procedure TFormMainMenu.NewGameBtnClick(Sender: TObject);
begin

end;

end.


unit form_MainMenu;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Grids,
  ExtCtrls, Menus;

type

  { TFormMainMenu }

  TFormMainMenu = class(TForm)
    MainMenuMain: TMainMenu;
    GameModeBtn: TMenuItem;
    ExitBtn: TMenuItem;
    NewGameBtn: TMenuItem;
    StringGrid1: TStringGrid;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormMainMenu: TFormMainMenu;

implementation

{$R *.lfm}

end.


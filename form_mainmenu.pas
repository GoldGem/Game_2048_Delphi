unit form_MainMenu;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Grids,
  ExtCtrls, Menus, LCLType;

type

  { TFormMainMenu }

  TFormMainMenu = class(TForm)
    MainMenuMain: TMainMenu;
    GameModeBtn: TMenuItem;
    ExitBtn: TMenuItem;
    NewGameBtn: TMenuItem;
    StringGridMain: TStringGrid;
    procedure ExitBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StringGridMainKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

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
var
   i,j:integer;
begin
   randomize;
   for i:=0 to 3 do
       for j:=0 to 3 do
           StringGridMain.Cells[i,j]:='0';
   i:=random(3);
   j:=random(3);
   StringGridMain.Cells[i,j]:='2';

end;

procedure TFormMainMenu.StringGridMainKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   i,j:integer;
begin
  if key = VK_RIGHT then
  for i:=0 to 3 do
      for j:=0 to 3 do
          if StringGridMain.Cells[i,j]<>'0' then
          begin
             StringGridMain.Cells[3,j]:='2';
             if i<>3 then
                StringGridMain.Cells[i,j]:='0';
          end;
  if key = VK_LEFT then
  for i:=0 to 3 do
      for j:=0 to 3 do
          if StringGridMain.Cells[i,j]<>'0' then
          begin
             StringGridMain.Cells[0,j]:='2';
             if i<>0 then
                StringGridMain.Cells[i,j]:='0';
          end;
  if key = VK_UP then
  for i:=0 to 3 do
      for j:=0 to 3 do
          if StringGridMain.Cells[i,j]<>'0' then
          begin
             StringGridMain.Cells[i,0]:='2';
             if j<>0 then
                StringGridMain.Cells[i,j]:='0';
          end;
  if key = VK_DOWN then
  for i:=0 to 3 do
      for j:=0 to 3 do
          if StringGridMain.Cells[i,j]<>'0' then
          begin
             StringGridMain.Cells[i,3]:='2';
             if j<>3 then
                StringGridMain.Cells[i,j]:='0';
          end;
end;



procedure TFormMainMenu.ExitBtnClick(Sender: TObject);
begin
  Close;
end;

end.


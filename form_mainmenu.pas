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
   i,j,t,k:integer;
begin
  t:=0;
  if key = VK_RIGHT then
  begin
  for i:=0 to 3 do
      for j:=0 to 3 do

          if (StringGridMain.Cells[i,j]<>'0') and (i<>3) then
          begin
               for k:=3 downto 0 do
               begin
                    if StringGridMain.Cells[k,j]='0' then
                    begin
                       StringGridMain.Cells[k,j]:=StringGridMain.Cells[i,j];
                       if (i<>k) and (i<>3) then
                         StringGridMain.Cells[i,j]:='0';
                       //break
                    end;
               end;
           end;
               {while t<>1 do
               begin
                    i:=random(3);
                    j:=random(3);
                    if StringGridMain.Cells[i,j]='0' then
                    begin
                         StringGridMain.Cells[i,j]:='2';
                         t:=1;
                    end;
               end;}


  end;
  if key = VK_LEFT then
  begin
  for i:=0 to 3 do
      for j:=0 to 3 do

          if (StringGridMain.Cells[i,j]<>'0') then
          begin
               for k:=0 to 3 do
               begin
                    if StringGridMain.Cells[i,k]='0' then
                    begin
                       StringGridMain.Cells[i,k]:=StringGridMain.Cells[i,j];
                       if (i<>k) and (i<>0) then
                         StringGridMain.Cells[i,j]:='0';
                       //break
                    end;
               end;
           end;
          {while t<>1 do
          begin
               i:=random(3);
               j:=random(3);
               if StringGridMain.Cells[i,j]<>'2' then
               begin
                  StringGridMain.Cells[i,j]:='0';
                  t:=1;
               end;
          end;}
  end;

  if key = VK_UP then
  begin
  for i:=0 to 3 do
      for j:=0 to 3 do

          if (StringGridMain.Cells[i,j]<>'0') then
          begin
               for k:=0 to 3 do
               begin
                    if StringGridMain.Cells[k,j]='0' then
                    begin
                       StringGridMain.Cells[k,j]:=StringGridMain.Cells[i,j];
                       if (j<>k) and (j<>0) then
                         StringGridMain.Cells[i,j]:='0';
                       //break
                    end;
               end;
           end;
          {while t<>1 do
          begin
               i:=random(3);
               j:=random(3);
               if StringGridMain.Cells[i,j]='0' then
               begin
                  StringGridMain.Cells[i,j]:='2';
                  t:=1;
               end;
          end;}
  end;

  if key = VK_DOWN then
  begin
  for i:=0 to 3 do
      for j:=0 to 3 do

          if (StringGridMain.Cells[i,j]<>'0') and (j<>3) then
          begin
               for k:=3 downto 0 do
               begin
                    if StringGridMain.Cells[i,k]='0' then
                    begin
                       StringGridMain.Cells[i,k]:=StringGridMain.Cells[i,j];
                       if (j<>k) and (j<>3) then
                         StringGridMain.Cells[i,j]:='0';
                       //break
                    end;
               end;
           end;
          {while t<>1 do
          begin
               i:=random(3);
               j:=random(3);
               if StringGridMain.Cells[i,j]='0' then
               begin
                  StringGridMain.Cells[i,j]:='2';
                  t:=1;
               end;
          end};
  end;
end;

procedure TFormMainMenu.ExitBtnClick(Sender: TObject);
begin
  Close;
end;

end.


program game;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, form_MainMenu, Unit1, Unit2, Unit3
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TFormMMenu, FormMMenu);
  Application.CreateForm(TFormMainMenu, FormMainMenu);
  Application.Run;
end.


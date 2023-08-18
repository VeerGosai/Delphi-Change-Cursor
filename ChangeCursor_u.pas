unit ChangeCursor_u;

// Veer Gosai
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TfrmChangeCursor = class(TForm)
    btnCursorLeft: TButton;
    imgCursor: TImage;
    btnCursorRight: TButton;
    lblMouseCursor: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btnCursorRightClick(Sender: TObject);
    procedure btnCursorLeftClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure MouseUpdate;
  end;

var
  frmChangeCursor: TfrmChangeCursor;
  iMouse: Integer;

implementation

{$R *.dfm}

//Default Mouse Type (Default)
procedure TfrmChangeCursor.FormActivate(Sender: TObject);
begin
  iMouse := 2;
end;

//Left Button
procedure TfrmChangeCursor.btnCursorLeftClick(Sender: TObject);
begin
  iMouse := iMouse - 1;
  MouseUpdate;
end;

//Right Button
procedure TfrmChangeCursor.btnCursorRightClick(Sender: TObject);
begin
  iMouse := iMouse + 1;
  MouseUpdate;
end;

//Procedure Called Everytime Button Is Clicked
procedure TfrmChangeCursor.MouseUpdate;
begin
  case iMouse of
    1: //Cross Cursor
      begin
        btnCursorLeft.Visible := False;
        btnCursorRight.Visible := True;
        imgCursor.Picture.LoadFromFile('../../Cross.png');
        frmChangeCursor.Cursor := crCross;
        //When Hovering Over A Component (e.g. Button) It will Return To The Default Cursor
        btnCursorLeft.Cursor := crCross;
        btnCursorRight.Cursor := crCross;

      end;
    2: //Default Cursor
      begin
        btnCursorLeft.Visible := True;
        btnCursorRight.Visible := True;
        imgCursor.Picture.LoadFromFile('../../Default.png');
        frmChangeCursor.Cursor := crDefault;
        //For Changing Cursor On A Page Control, use ts(TabSheet Name).Cursor := cr...;
        btnCursorLeft.Cursor := crDefault;
        btnCursorRight.Cursor := crDefault;

      end;
    3: //Hand Cursor
      begin
        btnCursorLeft.Visible := True;
        btnCursorRight.Visible := False;
        imgCursor.Picture.LoadFromFile('../../Hand.png');
        frmChangeCursor.Cursor := crHandPoint;
        //There Are 21 Cursor Options
        btnCursorLeft.Cursor := crHandPoint;
        btnCursorRight.Cursor := crHandPoint

      end;
  end;
end;

end.

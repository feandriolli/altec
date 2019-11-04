unit UnitDtm;

interface

uses
  System.SysUtils, System.Classes, System.ImageList, Vcl.ImgList, Vcl.Controls;

type
  TDtm = class(TDataModule)
    ImageListMenu: TImageList;
    ImageListPrincipal: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dtm: TDtm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

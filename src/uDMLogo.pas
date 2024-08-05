/// <summary>
/// ***************************************************************************
///
/// Shift Keys Generator
///
/// Copyright 2024 Patrick Prémartin under AGPL 3.0 license.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
/// THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
/// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
/// DEALINGS IN THE SOFTWARE.
///
/// ***************************************************************************
///
/// Use to generate a unique key composed of values between -7 and 7 for
/// simple encryption and decryption of a set of bytes using the SHL and SHR
/// binary operators.
///
/// If you're developing under Delphi or Pascal in general, you can use these blocks with the TOlfCryptDecrypt.ShiftCrypt and TOlfCryptDecrypt.ShiftDecrypt functions in the Olf.RTL.CryptDecrypt unit from https://github.com/DeveloppeurPascal/librairies/
///
/// ***************************************************************************
///
/// Author(s) :
/// Patrick PREMARTIN
///
/// Site :
/// https://shiftkeysgenerator.olfsoftware.fr/
///
/// Project site :
/// https://github.com/DeveloppeurPascal/Shift-Keys-Generator
///
/// ***************************************************************************
/// File last update : 2024-08-05T21:27:55.607+02:00
/// Signature : fb9a7b3ee752f3e7e45c0ade04ac7ceac7af3f3f
/// ***************************************************************************
/// </summary>

unit uDMLogo;

interface

uses
  System.SysUtils, System.Classes, System.ImageList, FMX.ImgList;

type
  TdmLogo = class(TDataModule)
    imgLogo: TImageList;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  dmLogo: TdmLogo;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.

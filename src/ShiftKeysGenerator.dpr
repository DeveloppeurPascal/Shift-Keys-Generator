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
/// File last update : 2024-08-05T21:27:55.598+02:00
/// Signature : dae39c9e81f8244065da30d86ac5f54867eb61f5
/// ***************************************************************************
/// </summary>

program ShiftKeysGenerator;

uses
  System.StartUpCopy,
  FMX.Forms,
  fMain in 'fMain.pas' {frmMain},
  Olf.FMX.AboutDialog in '..\lib-externes\AboutDialog-Delphi-Component\src\Olf.FMX.AboutDialog.pas',
  Olf.FMX.AboutDialogForm in '..\lib-externes\AboutDialog-Delphi-Component\src\Olf.FMX.AboutDialogForm.pas' {OlfAboutDialogForm},
  Olf.RTL.CryptDecrypt in '..\lib-externes\librairies\src\Olf.RTL.CryptDecrypt.pas',
  Olf.RTL.Params in '..\lib-externes\librairies\src\Olf.RTL.Params.pas',
  u_urlOpen in '..\lib-externes\librairies\src\u_urlOpen.pas',
  uDMLogo in 'uDMLogo.pas' {dmLogo: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmLogo, dmLogo);
  Application.Run;
end.

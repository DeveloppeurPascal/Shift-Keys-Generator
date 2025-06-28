(* C2PP
  ***************************************************************************

  Shift Keys Generator

  Copyright 2024-2025 Patrick Prémartin under AGPL 3.0 license.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
  THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
  DEALINGS IN THE SOFTWARE.

  ***************************************************************************

  Use to generate a unique key composed of values between -7 and 7 for
  simple encryption and decryption of a set of bytes using the SHL and SHR
  binary operators.

  If you're developing under Delphi or Pascal in general, you can use these blocks with the TOlfCryptDecrypt.ShiftCrypt and TOlfCryptDecrypt.ShiftDecrypt functions in the Olf.RTL.CryptDecrypt unit from https://github.com/DeveloppeurPascal/librairies/

  ***************************************************************************

  Author(s) :
  Patrick PREMARTIN

  Site :
  https://shiftkeysgenerator.olfsoftware.fr/

  Project site :
  https://github.com/DeveloppeurPascal/Shift-Keys-Generator

  ***************************************************************************
  File last update : 2025-06-28T19:19:52.000+02:00
  Signature : 37a556be800e2f0ca7ff1433c898223b1fdb8119
  ***************************************************************************
*)

unit uTxtAboutDescription;

interface

function GetTxtAboutDescription(const Language: string;
  const Recursif: boolean = false): string;

implementation

// For the languages codes, please use 2 letters ISO codes
// https://en.wikipedia.org/wiki/List_of_ISO_3166_country_codes

uses
  System.SysUtils,
  uConsts;

const
  CTxtEN = '''
Shift Keys Generator is a simple generator of numbers between -7 and 7 as lists or arrays in different programming languages.

*****************
* Credits

This application was developed by Patrick Prémartin in Delphi.

*****************
* Publisher info

This software is published by OLF SOFTWARE, a company registered in Paris (France) under the reference 439521725.

****************
* Personal data

This program is autonomous in its current version. It does not depend on the Internet and communicates nothing to the outside world.

We have no knowledge of what you do with it.

No information about you is transmitted to us or to any third party.

We use no cookies, no tracking, no stats on your use of the application.

***************
* User support

If you have any questions or require additional functionality, please leave us a message on the application's website or on its code repository.

''';
   CTxtFR = '''
Shift Keys Generator est un simple générateur de nombres compris entre -7 et 7 sous forme de listes ou de tableaux dans différents langages de programmation.

*****************
* Remerciements

Cette application a été développée par Patrick Prémartin en Delphi.

*****************
* Info éditeur

Ce logiciel est éditée par OLF SOFTWARE, société enregistrée à Paris (France) sous la référence 439521725.

****************
* Données personnelles

Ce programme est autonome dans sa version actuelle. Il ne dépend pas d'Internet et ne communique rien au monde extérieur.

Nous n'avons aucune connaissance de ce que vous faites avec lui.

Aucune information vous concernant n'est transmise à nous ou à des tiers.

Nous n'utilisons pas de cookies, pas de tracking, pas de statistiques sur votre utilisation de l'application.

***************
* Assistance aux utilisateurs

Si vous avez des questions ou si vous avez besoin de fonctionnalités supplémentaires, veuillez nous laisser un message sur le site web de l'application ou sur son dépôt de code.

''';

function GetTxtAboutDescription(const Language: string;
  const Recursif: boolean): string;
var
  lng: string;
begin
  lng := Language.tolower;
  if (lng = 'en') then
    result := CTxtEN
  else if (lng = 'fr') then // France
    result := CTxtFR
  else if not Recursif then
    result := GetTxtAboutDescription(CDefaultLanguage, true)
  else
    raise Exception.Create('Unknow description for language "' +
      Language + '".');
end;

end.

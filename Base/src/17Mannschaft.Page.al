page 60050 "17 Mannschaft"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "17 Mannschaft";

    layout
    {
        area(Content)
        {
            group(Allgemein)
            {
                field("Mannschafts-ID"; "Mannschafts-ID")
                {
                    ApplicationArea = All;
                    Editable = False;
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field(Gruendungsjahr; Gruendungsjahr)
                {
                    ApplicationArea = All;
                }
                field("WM-Titel"; "WM-Titel")
                {
                    ApplicationArea = All;
                }
            }
            group("Adresse & Kontakt")
            {
                field(Adresse; Adresse)
                {
                    ApplicationArea = All;
                }
                field("Länder/Region Code"; "Länder/Region Code")
                {
                    ApplicationArea = All;
                }
                field(Ort; Ort)
                {
                    ApplicationArea = All;
                }
                field(Kanton; Kanton)
                {
                    ApplicationArea = All;
                }
                field("Post Code"; "Post Code")
                {
                    ApplicationArea = All;
                }
                field(Telefon; Telefon)
                {
                    ApplicationArea = All;
                }
                field("E-Mail"; "E-Mail")
                {
                    ApplicationArea = All;
                }
            }
            group(Team)
            {
                part(Spieler; "17 Spieler")
                {
                    SubPageLink = TeamID = field("Mannschafts-ID");
                    UpdatePropagation = Both;
                    ApplicationArea = All;
                }
            }
        }

    }

    var
        myInt: Integer;
}
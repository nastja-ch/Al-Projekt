page 60051 "17 Spieler"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "17 Spieler";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(ID; TeamID)
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field(Height; "Grösse")
                {
                    ApplicationArea = All;
                }
                field(Weight; Gewicht)
                {
                    ApplicationArea = All;
                }
                field(Birthdate; Geburtsdatum)
                {
                    ApplicationArea = All;
                }
                field(Position; Position)
                {
                    ApplicationArea = All;
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
        }
    }




}
table 60051 "17 Spieler"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; TeamID; Integer)
        {
            DataClassification = CustomerContent;
            TableRelation = "17 Mannschaft"."Mannschafts-ID";
        }
        field(2; "Zeile Nr."; Integer)
        {
            DataClassification = CustomerContent;
            AutoIncrement = true;
        }
        field(3; Name; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(4; "Grösse"; Decimal)
        {
            DataClassification = CustomerContent;
        }
        field(5; Gewicht; Decimal)
        {
            DataClassification = CustomerContent;
        }
        field(6; Geburtsdatum; Date)
        {
            DataClassification = CustomerContent;
        }
        field(8; Position; Option)
        {
            DataClassification = CustomerContent;
            OptionMembers = Stürmer,Goalie,Verteidiger,Aussenstürmer,Innenstürmer;
        }
    }

    keys
    {
        key(PK; TeamID, "Zeile Nr.")
        {
            Clustered = true;
        }
    }



}
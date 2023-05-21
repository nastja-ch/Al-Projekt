table 60050 "17 Mannschaft"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Mannschafts-ID"; Integer)
        {
            AutoIncrement = true;
            DataClassification = CustomerContent;
        }
        field(2; Name; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(4; Gruendungsjahr; Date)
        {
            DataClassification = CustomerContent;
        }
        field(5; Mitglieder; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(6; "WM-Titel"; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(7; Adresse; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(8; "Länder/Region Code"; Code[10])
        {
            TableRelation = "Country/Region";

            trigger OnValidate()
            begin
                PostCode_g.CheckClearPostCodeCityCounty(Ort, "Post Code", Kanton, "Länder/Region Code", xRec."Länder/Region Code");
            end;
        }
        field(9; "Post Code"; Code[20])
        {
            Access = Internal;
            Caption = 'Post Code';
            TableRelation = if ("Länder/Region Code" = const('')) "Post Code"
            else
            if ("Länder/Region Code" = filter(<> '')) "Post Code" where("Country/Region Code" = field("Länder/Region Code"));
            ValidateTableRelation = false;

            trigger OnLookup()
            begin
                PostCode_g.LookupPostCode(Ort, "Post Code", Kanton, "Länder/Region Code");
            end;

            trigger OnValidate()
            begin
                PostCode_g.ValidatePostCode(Ort, "Post Code", Kanton, "Länder/Region Code", (CurrFieldNo <> 0) and GuiAllowed);
            end;
        }
        field(10; Kanton; Text[30])
        {
            Access = Internal;
            CaptionClass = '5,1,' + "Länder/Region Code";
        }
        field(11; Ort; Text[30])
        {
            TableRelation = if ("Länder/Region Code" = const('')) "Post Code".City
            else
            if ("Länder/Region Code" = filter(<> '')) "Post Code".City where("Country/Region Code" = field("Länder/Region Code"));
            ValidateTableRelation = false;

            trigger OnLookup()
            begin
                PostCode_g.LookupPostCode(Ort, "Post Code", Kanton, "Länder/Region Code");
            end;

            trigger OnValidate()
            begin
                PostCode_g.ValidateCity(Ort, "Post Code", Kanton, "Länder/Region Code", (CurrFieldNo <> 0) and GuiAllowed);
            end;
        }
        field(12; Telefon; Text[250])
        {
            ExtendedDatatype = PhoneNo;
        }
        field(13; "E-Mail"; Text[250])
        {
            ExtendedDatatype = EMail;
        }
    }

    keys
    {
        key(PK; "Mannschafts-ID")
        {
            Clustered = true;
        }
    }

    var
        Postcode_g: Record "Post Code";

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}
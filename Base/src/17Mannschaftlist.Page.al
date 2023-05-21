page 60052 "17 Mannschaft List"
{
    ApplicationArea = All;
    UsageCategory = Lists;
    PageType = List;
    SourceTable = "17 Mannschaft";
    CardPageId = "17 Mannschaft";

    layout
    {
        area(Content)
        {
            repeater(list)
            {
                field("Mannschafts-ID"; "Mannschafts-ID")
                {
                    ApplicationArea = All;
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field(Ort; Ort)
                {
                    ApplicationArea = All;
                }
                field(Mitglieder; Mitglieder)
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
            action(MyAction)
            {
                ApplicationArea = All;
                Caption = 'Aktion 123';

                trigger OnAction()
                begin
                    Message('Hallo');
                end;
            }
        }

    }
}
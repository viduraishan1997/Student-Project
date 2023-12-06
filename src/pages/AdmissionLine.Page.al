page 51007 "Admission Sub Form"
{
    PageType = ListPart;
    ApplicationArea = All;
    SourceTable = "Admision Line";
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                // field("Admison ID"; Rec."Admison ID")
                // {
                //     ApplicationArea = All;
                // }
                // field("Line No."; Rec."Line No.")
                // {
                //     ApplicationArea = All;
                // }
                field("Subject ID"; Rec."Subject ID")
                {
                    ApplicationArea = All;
                }
                field("Subject Name"; Rec."Subject Name")
                {
                    ApplicationArea = All;
                }
                field("Start Date"; Rec."Start Date")
                {
                    ApplicationArea = All;
                }
                field("End Date"; Rec."End Date")
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
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}
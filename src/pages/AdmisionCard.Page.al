page 51006 "Admision Card"
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = Admision;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;

                }
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;

                }
                field("Student Name"; Rec."Student Name")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(Date; Rec.Date)
                {
                    ApplicationArea = All;
                }
            }
            group("Sub Form")
            {
                part("Admision Line"; "Admission Sub Form")
                {
                    SubPageLink = "Admison ID" = field(ID);
                    UpdatePropagation = Both;
                    ApplicationArea = all;
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

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}
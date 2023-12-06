page 51005 "Admision List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Admision;
    CardPageId = 51006;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
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
                    ApplicationArea = All;
                }
                field(Date; Rec.Date)
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

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
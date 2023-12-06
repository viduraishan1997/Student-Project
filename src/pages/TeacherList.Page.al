page 51003 "Teacher List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Teacher;

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
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field("Subject ID"; Rec."Subject ID")
                {
                    ApplicationArea = All;
                }
                field("Subject Name"; Rec."Subject Name")
                {
                    ApplicationArea = All;
                }
                field(Salary; Rec.Salary)
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
page 51004 "Schedule List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Schedule;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(SubjectID; Rec.SubjectID)
                {
                    Caption = 'Subject ID';
                    ApplicationArea = All;
                }
                field(SubjectName; Rec.SubjectName)
                {
                    Caption = 'Subject Name';
                    ApplicationArea = All;
                }
                field(TeacherID; Rec.TeacherID)
                {
                    Caption = 'Teacher ID';
                    ApplicationArea = All;
                }
                field(TeacherName; Rec.TeacherName)
                {
                    Caption = 'Teacher Name';
                    ApplicationArea = All;
                }
                field(StratingDate; Rec.StratingDate)
                {
                    Caption = 'Start Date';
                    ApplicationArea = All;
                }
                field(EndingDate; Rec.EndingDate)
                {
                    Caption = 'End Name';
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
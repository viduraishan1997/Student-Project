page 51001 "Student List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Student;
    CardPageId = 51000;
    Editable = false;
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(ID; Rec.ID)
                {
                    Caption = 'ID';
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    Caption = 'Name';
                    ApplicationArea = All;
                }
                field(NIC; Rec.NIC)
                {
                    Caption = 'NIC';
                    ApplicationArea = All;
                }
                field(BirthDate; Rec.BirthDate)
                {
                    Caption = 'Birth Date';
                    ApplicationArea = All;
                }
                field(Gender; Rec.Gender)
                {
                    Caption = 'Gender';
                    ApplicationArea = All;
                }
                field(Address; Rec.Address)
                {
                    Caption = 'Address';
                    ApplicationArea = All;
                }
                field(City; Rec.City)
                {
                    Caption = 'City';
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
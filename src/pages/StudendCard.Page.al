page 51000 StudentCard
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = Student;

    layout
    {
        area(Content)
        {
            group(Genral)
            {
                field(ID; Rec.ID)
                {
                    Editable = false;
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
            }
            group("Adress Group")
            {
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
    }

    actions
    {
        area(Processing)
        {
            action("Show Admission Form")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    Admission: Record Admision;
                begin
                    Admission.SetRange("Student ID", Rec.ID);
                    if Admission.FindFirst() then
                        Page.Run(Page::"Admision Card", Admission)
                end;
            }
        }
    }

    var
        myInt: Integer;
}
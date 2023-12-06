table 51004 Admision
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Student ID"; Code[20])
        {
            Caption = 'Student ID';
            DataClassification = ToBeClassified;
            TableRelation = Student;
            trigger OnValidate()
            var
                std: Record Student;
            begin
                if "Student ID" = '' then
                    "Student Name" := '';
                std.Get("Student ID");
                "Student Name" := std.Name;
            end;
        }
        field(3; "Student Name"; Text[80])
        {
            Caption = 'Student Name';
            DataClassification = ToBeClassified;
        }
        field(4; Date; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Number Serious"; Code[20])
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(Key1; ID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        noserious: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        if ID = '' then
            noserious.InitSeries('ADMISSION', xRec."Number Serious", 0D, ID, "Number Serious");
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
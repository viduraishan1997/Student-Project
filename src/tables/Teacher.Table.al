table 51002 Teacher
{
    DataClassification = ToBeClassified;
    LookupPageId = 51003;

    fields
    {
        field(1; ID; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; Name; Text[80])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Salary; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Subject ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Subject;
            trigger OnValidate()
            var
                Subjects: Record Subject;
            begin
                if "Subject ID" = '' then
                    "Subject Name" := '';
                Subjects.Get("Subject ID");
                "Subject Name" := Subjects.Name;
            end;
        }
        field(5; "Subject Name"; Text[80])
        {
            Editable = false;
            DataClassification = ToBeClassified;
        }
        field(6; "Number Serious"; Code[20])
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
            noserious.InitSeries('TEACHER', xRec."Number Serious", 0D, ID, "Number Serious");
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
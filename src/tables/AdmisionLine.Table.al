table 51005 "Admision Line"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Admison ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Admision;
        }
        field(2; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(3; "Subject ID"; Code[20])
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
        field(4; "Subject Name"; Text[80])
        {
            Editable = false;
            DataClassification = ToBeClassified;
        }
        field(5; "Start Date"; Date)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                if ("End Date" <> 0D) and ("End Date" < "Start Date") then
                    Error('End Date should be Grater than Start date');
            end;
        }
        field(6; "End Date"; Date)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if "End Date" < "Start Date" then
                    Error('End Date should be Grater than Start date');
            end;
        }

    }

    keys
    {
        key(Key1; "Admison ID", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

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
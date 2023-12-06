table 51001 Subject
{
    DataClassification = ToBeClassified;
    LookupPageId = 51002;
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
        field(4; Fee; Decimal)
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
        noseries: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        if ID = '' then
            noseries.InitSeries('SUBJECT', xRec."Number Serious", 0D, ID, "Number Serious");
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
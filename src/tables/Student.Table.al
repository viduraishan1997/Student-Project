table 51000 Student
{
    DataClassification = ToBeClassified;
    LookupPageId = 51001;
    fields
    {
        field(1; ID; Code[20])
        {
            Caption = 'ID';
            DataClassification = ToBeClassified;
        }
        field(2; Name; Text[80])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(3; NIC; Text[12])
        {
            Caption = 'NIC';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                ValidateNIC();
            end;
        }
        field(4;
        Address;
        Text[50])
        {
            Caption = 'Address';
            DataClassification = ToBeClassified;
        }
        field(5;
        City;
        Text[30])
        {
            Caption = 'City';
            DataClassification = ToBeClassified;
            TableRelation = "Post Code".City;
        }
        field(6;
        BirthDate;
        Date)
        {
            Caption = 'Birth Date';
            DataClassification = ToBeClassified;
        }
        field(7;
        Gender;
        Option)
        {
            OptionMembers = Male,Female;
            OptionCaption = 'Male, Female';
            DataClassification = ToBeClassified;
        }
        field(8;
        "Number Serious";
        Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1;
        ID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        noseries:
            Codeunit NoSeriesManagement;

    local procedure ValidateNIC()

    begin
        if (StrLen(NIC) = 10) or (StrLen(NIC) = 12) then begin
            if (StrLen(NIC) = 10) and (StrPos(NIC, 'v') <> 10) then
                Error('Invalid');
            if (StrLen(NIC) = 12) and NIC.Contains('a..') then
                Error('Invalid');
        end
        else
            Error('Invalid');
    end;

    trigger OnInsert()

    begin
        if ID = '' then
            noseries.InitSeries('STD', xRec."Number Serious", 0D, ID, "Number Serious");
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
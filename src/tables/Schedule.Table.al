table 51003 Schedule
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; SubjectID; Code[20])
        {
            Caption = 'Subject ID';
            DataClassification = ToBeClassified;
            TableRelation = Subject;
            trigger OnValidate()
            var
                Sub: Record Subject;
            begin
                if SubjectID = '' then begin
                    SubjectName := '';
                    exit;
                end;
                Sub.Get(SubjectID);
                SubjectName := Sub.Name;
            end;
        }
        field(2; SubjectName; Code[20])
        {
            Editable = false;
            Caption = 'Subject Name';
            DataClassification = ToBeClassified;
        }
        field(3; TeacherID; Code[20])
        {
            Caption = 'Teacher ID';
            DataClassification = ToBeClassified;
            TableRelation = Teacher;
            trigger OnValidate()
            var
                teacher: Record Teacher;
            begin
                if TeacherID = '' then begin
                    TeacherName := '';
                    exit;
                end;
                teacher.Get(TeacherID);
                TeacherName := teacher.Name;
            end;
        }
        field(4; TeacherName; Text[80])
        {
            Editable = false;
            Caption = 'Teacher Name';
            DataClassification = ToBeClassified;
        }
        field(5; StratingDate; Date)
        {
            Caption = 'Strating Date';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if (EndingDate <> 0D) and (StratingDate > EndingDate) then begin
                    Error('Ending Date should be gratter than Start Date');
                end;
            end;
        }
        field(6; EndingDate; Date)
        {
            Caption = 'Ending Date';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                if StratingDate > EndingDate then
                    Error('Ending Date should be gratter than Start Date');
            end;
        }

    }

    keys
    {
        key(Key1; SubjectID)
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
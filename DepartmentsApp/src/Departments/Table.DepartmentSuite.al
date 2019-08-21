table 89900 DepartmentSuite_DSK
{
    Caption = 'Deparment Suite';
    DataClassification = CustomerContent;
    LookupPageId = DepartmentSuites_DSK;
    DrillDownPageId = DepartmentSuites_DSK;

    fields
    {
        field(1; "Id"; Integer)
        {
            DataClassification = CustomerContent;
        }

        field(2; Name; Text[100])
        {
            DataClassification = CustomerContent;
        }

        field(3; "Version List"; Text[100])
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; Id)
        {
            Clustered = true;
        }
    }
}
table 89901 DepartmentItem_DSK
{
    Caption = 'Department Item';
    DataClassification = CustomerContent;
    LookupPageId = "DepartmentItems_ DSK";
    DrillDownPageId = "DepartmentItems_ DSK";

    fields
    {
        field(1; "GUID"; Guid)
        {
            DataClassification = SystemMetadata;
        }

        field(2; Name; Text[250])
        {
            DataClassification = CustomerContent;
        }

        field(3; "Parent GUID"; Guid)
        {
            DataClassification = SystemMetadata;
            TableRelation = DepartmentItem_DSK.GUID;
        }

        field(4; "Object Type"; enum ObjectTypes_DSK)
        {
            DataClassification = CustomerContent;
        }

        field(5; "Object ID"; Integer)
        {
            DataClassification = CustomerContent;
            TableRelation = AllObjWithCaption."Object ID" where ("Object Type" = field ("Object Type"));
        }

        field(6; "Object Caption"; Text[250])
        {
            FieldClass = FlowField;
            CalcFormula = lookup (AllObjWithCaption."Object Caption" where ("Object Type" = field ("Object Type"), "Object ID" = field ("Object ID")));
            Editable = false;
        }

        field(7; Indentation; Integer)
        {
            DataClassification = SystemMetadata;
        }

        field(8; "Calculated Position"; Integer)
        {
            DataClassification = CustomerContent;
        }

        field(9; "Menu Type"; Enum MenuType_DSK)
        {
            DataClassification = CustomerContent;
        }

        field(10; Visible; Boolean)
        {
            DataClassification = CustomerContent;
        }

        field(11; "Application Area"; Text[50])
        {
            DataClassification = CustomerContent;
        }

        field(12; "Department Category"; Enum DepartmentCategory_DSK)
        {
            DataClassification = CustomerContent;
        }

        field(14; "Member of Menu"; Guid)
        {
            DataClassification = CustomerContent;
        }

        field(15; "Parent Name"; Text[250])
        {
            DataClassification = CustomerContent;
        }

        field(17; "Main Menu"; Boolean)
        {
            DataClassification = CustomerContent;
        }

        field(18; "Position"; Integer)
        {
            DataClassification = SystemMetadata;
        }

        field(19; "First Child"; Guid)
        {
            DataClassification = SystemMetadata;
        }


        field(20; "Next Node"; Guid)
        {
            DataClassification = SystemMetadata;
        }

        field(50; "Suite Id"; Integer)
        {
            DataClassification = CustomerContent;
            TableRelation = DepartmentSuite_DSK.Id;
        }
    }

    keys
    {
        key(PK; "GUID")
        {
            Clustered = true;
        }

        key(Pos; "Calculated Position") { }

        key(ReqPos; Position) { }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Name, "Parent Name", "Object Type", "Object Caption")
        { }
    }
}
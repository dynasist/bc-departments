page 89902 DepartmentItemCard_DSK
{
    Caption = 'Department Menu Item';
    PageType = Card;
    SourceTable = "DepartmentItem_DSK";
    UsageCategory = Documents;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(General)
            {

                field("Name"; "Name")
                {
                    ApplicationArea = All;
                    //Caption = 'Name';
                }

                field("Suite Id"; "Suite Id")
                {
                    ApplicationArea = All;
                }

                field("Menu Type"; "Menu Type")
                {
                    ApplicationArea = All;
                }

                field("Parent GUID"; "Parent GUID")
                {
                    ApplicationArea = All;
                    //Caption = 'Parent GUID';
                }

                field("Department Category"; "Department Category")
                {
                    ApplicationArea = All;
                }

                field(Visible; Visible)
                {
                    ApplicationArea = All;
                }

                field("Object Type"; "Object Type")
                {
                    ApplicationArea = All;
                    //Caption = 'Object Type';
                }

                field("Object ID"; "Object ID")
                {
                    ApplicationArea = All;
                    //Caption = 'Object ID';
                }

                field("Object Caption"; "Object Caption")
                {
                    ApplicationArea = All;
                    //Caption = 'Object Caption';
                }

                field("Position"; "Position")
                {
                    ApplicationArea = All;
                    //Caption = 'Position';
                }

            }
        }
    }

}
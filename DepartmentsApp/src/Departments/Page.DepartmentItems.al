page 89901 "DepartmentItems_ DSK"
{
    Caption = 'Department Items';
    PageType = List;
    SourceTable = "DepartmentItem_DSK";
    UsageCategory = Lists;
    ApplicationArea = All;
    CardPageId = DepartmentItemCard_DSK;
    InsertAllowed = false;
    SourceTableView = sorting ("Calculated Position");

    layout
    {

        area(content)
        {
            repeater(Group)
            {
                IndentationColumn = Indentation;
                IndentationControls = Name;
                ShowAsTree = true;

                field("Name"; "Name")
                {
                    ApplicationArea = All;
                    //Caption = 'Name';
                }

                field("Menu Type"; "Menu Type")
                {
                    ApplicationArea = All;
                }

                field("Parent GUID"; "Parent GUID")
                {
                    ApplicationArea = All;
                }

                field(Position; Position)
                {
                    ApplicationArea = All;
                }

                field("Suite Id"; "Suite Id")
                {
                    ApplicationArea = All;
                }

                field(Indentation; Indentation)
                {
                    ApplicationArea = All;
                    Visible = true;
                }

                field("Calculated Position"; "Calculated Position")
                {
                    ApplicationArea = All;
                    Visible = true;
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

                field("Department Category"; "Department Category")
                {
                    ApplicationArea = All;
                }

                field("Main Menu"; "Main Menu")
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field(Visible; Visible)
                {
                    ApplicationArea = All;
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Update Hierarchy")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Hierarchy;

                trigger OnAction()
                var
                    DepartmentMgmt: Codeunit DepartmentsMgmt_DSK;
                begin
                    DepartmentMgmt.UpdateMainMenus();
                    CurrPage.Update(true);
                end;
            }
        }
    }
}
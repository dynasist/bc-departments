page 89903 "DepartmentSuites_DSK"
{
    Caption = 'Department Suites';
    PageType = List;
    SourceTable = "DepartmentSuite_DSK";
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {

        area(content)
        {
            repeater(Group)
            {

                field("Id"; "Id")
                {
                    ApplicationArea = All;
                    //Caption = 'Id';
                }

                field("Name"; "Name")
                {
                    ApplicationArea = All;
                    //Caption = 'Name';
                }

                field("Version List"; "Version List")
                {
                    ApplicationArea = All;
                    //Caption = 'Version List';
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Import)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Import;
                Caption = 'Import File';

                trigger OnAction()
                var
                    MenuSuiteMgmt: Codeunit MenuSuiteMgmt_DSK;
                begin
                    MenuSuiteMgmt.ImportMenuSuite();
                end;
            }

            action(MenuItems)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = "List";
                Caption = 'Menu Items';
                RunObject = page "DepartmentItems_ DSK";
                RunPageLink = "Suite Id" = field (Id);
            }
        }
    }
}
page 89900 DepartmentsHost_DSK
{
    PageType = NavigatePage;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Departments';
    Editable = false;

    layout
    {
        area(Content)
        {
            usercontrol(TreeView; DepartmentView_DSK)
            {
                ApplicationArea = All;

                trigger OnLoad()
                var
                    DepartmentMgmt: Codeunit DepartmentsMgmt_DSK;
                    Data: JsonArray;
                begin
                    Data := DepartmentMgmt.ToJson();
                    CurrPage.TreeView.LoadData(Data);
                end;

                trigger OnClick(menuId: Text)
                var
                    DepartmentMgmt: Codeunit DepartmentsMgmt_DSK;
                begin
                    DepartmentMgmt.RunMenu(menuId);
                end;
            }
        }
    }
}
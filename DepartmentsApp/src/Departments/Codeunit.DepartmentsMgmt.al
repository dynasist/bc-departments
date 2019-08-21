codeunit 89900 DepartmentsMgmt_DSK
{
    procedure UpdateMainMenus()
    var
        MenuItem: Record DepartmentItem_DSK;
        LastPosition: Integer;
    begin
        Clear(MenuItem);
        UpdateNodes(MenuItem, true);

        LastPosition := 0;
        MenuItem.SetCurrentKey(Position);
        MenuItem.SetRange("Main Menu", true);
        if MenuItem.FindSet(true, false) then
            repeat
                LastPosition += 1;
                UpdateMenuHierarchy(MenuItem, -1, LastPosition);
            until MenuItem.Next() = 0;
    end;

    procedure UpdateMenuHierarchy(var Rec: Record DepartmentItem_DSK; Level: Integer; var LastPosition: Integer)
    var
        MenuItem: Record DepartmentItem_DSK;
    begin
        Level += 1;
        Rec."Calculated Position" := LastPosition;
        Rec.Indentation := Level;
        Rec.Modify();

        MenuItem.SetCurrentKey(Position);
        MenuItem.SetRange("Parent GUID", Rec.GUID);
        if MenuItem.FindSet(true, false) then
            repeat
                LastPosition += 1;
                UpdateMenuHierarchy(MenuItem, Level, LastPosition);
            until MenuItem.Next() = 0;
    end;

    procedure UpdateNodes(ParentMenu: Record DepartmentItem_DSK; Root: Boolean)
    var
        MenuItem: Record DepartmentItem_DSK;
        LastPosition: Integer;
        NextNode: Guid;
        ExitLoop: Boolean;
    begin
        LastPosition := 0;
        MenuItem.SetFilter("Menu Type", '<>%1', MenuItem."Menu Type"::Root);
        MenuItem.SetRange("Parent GUID", ParentMenu.GUID);
        if not MenuItem.FindFirst() then
            exit;

        if Root then begin
            ParentMenu.SetRange("Menu Type", ParentMenu."Menu Type"::Root);
            if ParentMenu.FindFirst() then
                NextNode := ParentMenu."First Child";
        end else
            NextNode := ParentMenu."First Child";

        while not ExitLoop do begin
            MenuItem.SetRange("GUID", NextNode);
            if MenuItem.FindFirst() and not MenuItem.Mark() then begin
                LastPosition += 1;
                MenuItem.Position := LastPosition;
                MenuItem.Modify(true);
                MenuItem.Mark(true);
                NextNode := MenuItem."Next Node";

                UpdateNodes(MenuItem, false);
            end else
                ExitLoop := true;
        end;
    end;

    procedure ToJson(): JsonArray
    var
        MenuItem: Record DepartmentItem_DSK;
        MenuTree: JsonArray;
    begin
        MenuItem.SetCurrentKey("Calculated Position");
        MenuItem.SetRange(Visible, true);
        MenuItem.SetRange("Main Menu", true);
        if MenuItem.FindSet(true, false) then
            repeat
                GetJsonTree(MenuItem, MenuTree);
            until MenuItem.Next() = 0;

        exit(MenuTree);
    end;

    procedure GetJsonTree(var Rec: Record DepartmentItem_DSK; var MenuTree: JsonArray)
    var
        MenuItem: Record DepartmentItem_DSK;
        MenuObject: JsonObject;
        ChildArray: JsonArray;
    begin
        Clear(MenuObject);
        MenuObject.Add('id', Rec.GUID);
        MenuObject.Add('name', Rec.Name);
        Clear(ChildArray);

        MenuItem.SetCurrentKey("Calculated Position");
        MenuItem.SetRange("Parent GUID", Rec.GUID);
        MenuItem.SetRange(Visible, true);

        if MenuItem.FindSet() then
            repeat
                GetJsonTree(MenuItem, ChildArray);
            until MenuItem.Next() = 0;

        MenuObject.Add('children', ChildArray);
        MenuTree.Add(MenuObject);
    end;

    procedure RunMenu(menuId: Text)
    var
        MenuItem: Record DepartmentItem_DSK;
        MenuGuid: Guid;
        NoMenuMsg: Label 'Menu could not be found.';
    begin
        Evaluate(MenuGuid, menuId);

        if not MenuItem.Get(MenuGuid) then
            Error(NoMenuMsg);

        case MenuItem."Object Type" of
            MenuItem."Object Type"::Page:
                Page.Run(MenuItem."Object ID");
            MenuItem."Object Type"::Report:
                Report.Run(MenuItem."Object ID");
            MenuItem."Object Type"::XMLport:
                Xmlport.Run(MenuItem."Object ID");
            MenuItem."Object Type"::Codeunit:
                Codeunit.Run(MenuItem."Object ID");
        end;
    end;
}
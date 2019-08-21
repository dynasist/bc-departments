codeunit 89901 MenuSuiteMgmt_DSK
{
    procedure ImportMenuSuite()
    var
        DeptMgmt: Codeunit DepartmentsMgmt_DSK;
        MenuInStream: InStream;
        Filename: Text;
    begin
        if not UploadIntoStream('', '', '', Filename, MenuInStream) then
            exit;

        ProcessMenuSuite(MenuInStream);
        DeptMgmt.UpdateMainMenus();
    end;

    procedure ProcessMenuSuite(MenuInStream: InStream)
    var
        DepartmentSuite: Record DepartmentSuite_DSK;
        Contents: Text;
        NodeText: Text;
        VersionPos: Integer;
        NodePos: Integer;
        i: Integer;
        StartAt: Integer;
    begin
        while not MenuInStream.EOS() do begin
            MenuInStream.ReadText(Contents);
            Contents := DelChr(Contents, '<>', ' ');
            Contents := Contents.Replace('[{', '').Replace('}]', '');

            if i = 0 then
                InsertMenuSuite(Contents, DepartmentSuite);

            VersionPos := StrPos(Contents, 'Version List=');
            if VersionPos <> 0 then
                UpdateMenuSuite(Contents, DepartmentSuite);

            NodePos := StrPos(Contents, 'MENUNODES');
            if NodePos <> 0 then
                StartAt := i;

            if (StartAt > 0) and (i >= StartAt + 2) then begin
                if StrPos(Contents, '{') <> 0 then
                    NodeText := Contents
                else
                    NodeText += Contents;

                if StrPos(Contents, '}') <> 0 then
                    AddMenuSuiteItem(DepartmentSuite.Id, NodeText);
            end;

            i += 1;
        end;
    end;

    procedure InsertMenuSuite(Contents: Text; var DepartmentSuite: Record DepartmentSuite_DSK)
    var
        Line: Text;
        IdText: Text;
        SpacePos: Integer;
    begin
        Line := Contents.Replace('OBJECT MenuSuite ', '');
        SpacePos := StrPos(Line, ' ');
        IdText := CopyStr(Line, 1, SpacePos);

        DepartmentSuite.Init();
        Evaluate(DepartmentSuite.Id, IdText);
        DepartmentSuite.Name := CopyStr(Line, SpacePos + 1, MaxStrLen(DepartmentSuite.Name));
        if not DepartmentSuite.Insert() then
            DepartmentSuite.Modify();
    end;

    procedure UpdateMenuSuite(Contents: Text; var DepartmentSuite: Record DepartmentSuite_DSK)
    var
        Line: Text;
    begin
        Line := Contents.Replace('Version List=', '').Replace(';', '');
        DepartmentSuite."Version List" := CopyStr(Line, 1, MaxStrLen(DepartmentSuite."Version List"));
        DepartmentSuite.Modify();
    end;

    procedure AddMenuSuiteItem(SuiteId: Integer; NodeText: Text)
    var
        DepartmentItem: Record DepartmentItem_DSK;
        MenuProps: List of [Text];
        CaptionProps: List of [Text];
        CaptionValue: Text;
        MenuType: Text;
        MenuValue: Text;
        PropName: Text;
        PropValue: Text;
        MenuId: Guid;
        ParentMenuId: Guid;
        FirstChild: Guid;
        NextNode: Guid;
        i: Integer;
        EqPos: Integer;
        ObjectId: Integer;
    begin
        NodeText := NodeText.Trim();
        NodeText := DelChr(NodeText, '<>', '{}');
        MenuProps := NodeText.Split(';');
        MenuProps.Get(1, MenuType);
        MenuProps.Get(2, MenuValue);
        MenuType := MenuType.Trim();
        MenuValue := CleanGuid(MenuValue);
        Evaluate(MenuId, MenuValue);

        DepartmentItem.Init();
        DepartmentItem.GUID := MenuId;
        DepartmentItem."Suite Id" := SuiteId;
        if not Evaluate(DepartmentItem."Menu Type", MenuType) then
            exit;

        for i := 3 to MenuProps.Count() do begin
            MenuProps.Get(i, MenuValue);
            MenuValue := MenuValue.Trim();

            EqPos := StrPos(MenuValue, '=');
            if EqPos <> 0 then begin
                PropName := CopyStr(MenuValue, 1, EqPos - 1);
                PropValue := CopyStr(MenuValue, EqPos + 1, StrLen(MenuValue));

                case PropName.ToLower() of
                    'name':
                        DepartmentItem.Name := CopyStr(PropValue, 1, MaxStrLen(DepartmentItem.Name));
                    'parentnodeid':
                        begin
                            MenuValue := CleanGuid(PropValue);
                            Evaluate(ParentMenuId, MenuValue);
                            DepartmentItem."Parent GUID" := ParentMenuId;
                        end;
                    'firstchild':
                        begin
                            MenuValue := CleanGuid(PropValue);
                            Evaluate(FirstChild, MenuValue);
                            DepartmentItem."First Child" := FirstChild;
                        end;
                    'nextnodeid':
                        begin
                            MenuValue := CleanGuid(PropValue);
                            Evaluate(NextNode, MenuValue);
                            DepartmentItem."Next Node" := NextNode;
                        end;
                    'visible':
                        if PropValue.ToLower() = 'yes' then
                            DepartmentItem.Visible := true;
                    'runobjecttype':
                        case PropValue.ToLower() of
                            'page':
                                DepartmentItem."Object Type" := DepartmentItem."Object Type"::Page;
                            'report':
                                DepartmentItem."Object Type" := DepartmentItem."Object Type"::Report;
                            'xmlport':
                                DepartmentItem."Object Type" := DepartmentItem."Object Type"::XMLport;
                        end;
                    'runobjectid':
                        begin
                            Evaluate(ObjectId, PropValue);
                            DepartmentItem."Object ID" := ObjectId;
                        end;
                    'captionml':
                        begin
                            MenuValue := PropValue.Replace('CaptionML=', '');
                            CaptionProps := MenuValue.Split(';');
                            CaptionProps.Get(1, CaptionValue);
                            CaptionValue := CaptionValue.Replace(';', '');
                            DepartmentItem.Name := CopyStr(CaptionValue, 5, StrLen(CaptionValue));
                        end;
                end;

            end;
        end;

        if not DepartmentItem.Insert(true) then
            DepartmentItem.Modify(true);
    end;

    local procedure CleanGuid(InGuid: Text): Guid
    begin
        exit(DelChr(InGuid.Trim(), '=', '[{}]'));
    end;
}
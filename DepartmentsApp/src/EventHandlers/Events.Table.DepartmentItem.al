codeunit 89902 Events_TableDepartmentItem_DSK
{
    [EventSubscriber(ObjectType::Table, Database::DepartmentItem_DSK, 'OnBeforeInsertEvent', '', true, true)]
    local procedure "Table DepartmentItem - OnBeforeInsertEvent"(var Rec: Record DepartmentItem_DSK; RunTrigger: Boolean)
    begin
        if not RunTrigger then
            exit;

        if IsNullGuid(Rec.GUID) then
            Rec."GUID" := CreateGuid();
        Rec."Main Menu" := IsNullGuid(Rec."Parent GUID");
    end;

    [EventSubscriber(ObjectType::Table, Database::DepartmentItem_DSK, 'OnBeforeModifyEvent', '', true, true)]
    local procedure "Table DepartmentItem - OnBeforeModifyEvent"(var Rec: Record DepartmentItem_DSK; RunTrigger: Boolean)
    begin
        if not RunTrigger then
            exit;

        Rec."Main Menu" := IsNullGuid(Rec."Parent GUID");
    end;
}
codeunit 89903 Events_TableDeptSuite_DSK
{
    [EventSubscriber(ObjectType::Table, Database::DepartmentSuite_DSK, 'OnBeforeDeleteEvent', '', true, true)]
    local procedure "Table DepartmentSuite - OnBeforeDeleteEvent"(var Rec: Record DepartmentSuite_DSK; RunTrigger: Boolean)
    var
        MenuItem: Record DepartmentItem_DSK;
    begin
        if not RunTrigger then
            exit;

        MenuItem.SetRange("Suite Id", Rec.Id);
        if not MenuItem.IsEmpty() then
            MenuItem.DeleteAll();
    end;
}
codeunit 89912 "Dept_TableTests_DSK"
{
    // [FEATURE] Department Item Table
    // [FEATURE] Department Suite Table
    SubType = Test;

    [Test]
    procedure DepartmentItemCheckOnBeforeInsertEvent()
    // [FEATURE] Department Item Table
    begin
        // [SCENARIO #0001] Check OnBeforeInsert Event
        Initialize();

        // [GIVEN] A Menu Item
        CreateAMenuItem(GMenuItem);

        // [GIVEN] Parent Guid is empty
        CreateParentGuidIsEmpty(GMenuItem);

        // [WHEN] Insert new record
        InsertNewRecord(GMenuItem);

        // [THEN] Main Menu flag populated
        VerifyMainMenuFlagPopulated(GMenuItem);

    end;

    [Test]
    procedure DepartmentItemCheckOnBeforeModifyEvent()
    // [FEATURE] Department Item Table
    begin
        // [SCENARIO #0002] Check OnBeforeModify Event
        Initialize();

        // [GIVEN] A Menu Item
        CreateAMenuItem(GMenuItem);

        // [GIVEN] Parent Guid is empty
        CreateParentGuidIsEmpty(GMenuItem);

        // [WHEN] Existing record changed
        ExistingRecordChanged(GMenuItem);

        // [THEN] Main Menu flag populated
        VerifyMainMenuFlagPopulated(GMenuItem);

    end;

    [Test]
    procedure DepartmentSuiteCheckOnBeforeDeleteEvent()
    // [FEATURE] Department Suite Table
    var
        SuiteId: Integer;
    begin
        // [SCENARIO #0001] Check OnBeforeDelete Event
        Initialize();

        // [GIVEN] A Suite
        CreateASuite(GMenuSuite);

        // [GIVEN] Has Menu Items
        CreateHasMenuItems(GMenuSuite);
        SuiteId := GMenuSuite.Id;

        // [WHEN] Record is deleted
        RecordIsDeleted(GMenuSuite);

        // [THEN] Menu Items deleted
        VerifyMenuItemsDeleted(SuiteId);

    end;

    var
        GMenuItem: Record DepartmentItem_DSK;
        GMenuSuite: Record DepartmentSuite_DSK;
        Assert: Codeunit Assert;
        IsInitialized: Boolean;

    local procedure Initialize()
    var
        LibraryTestInitialize: Codeunit "Library - Test Initialize";
    begin
        LibraryTestInitialize.OnTestInitialize(Codeunit::"Dept_TableTests_DSK");

        if IsInitialized then
            exit;

        LibraryTestInitialize.OnBeforeTestSuiteInitialize(Codeunit::"Dept_TableTests_DSK");

        IsInitialized := true;
        Commit();

        LibraryTestInitialize.OnAfterTestSuiteInitialize(Codeunit::"Dept_TableTests_DSK");
    end;

    local procedure CreateAMenuItem(var MenuItem: Record DepartmentItem_DSK)
    begin
        MenuItem.Init();
        MenuItem.GUID := CreateGuid();
        MenuItem.Name := 'Test Item';
        MenuItem."Object Type" := MenuItem."Object Type"::Page;
        MenuItem."Object ID" := Page::"CAL Test Tool";
    end;

    local procedure CreateASuite(var MenuSuite: Record DepartmentSuite_DSK)
    begin
        MenuSuite.Init();
        MenuSuite.Id := 1011;
        MenuSuite.Name := 'Test Suite';
        MenuSuite."Version List" := 'NAVW1';
        MenuSuite.Insert();
    end;

    local procedure CreateHasMenuItems(var MenuSuite: Record DepartmentSuite_DSK)
    var
        MenuItem: Record DepartmentItem_DSK;
    begin
        CreateAMenuItem(MenuItem);
        MenuItem.Name := 'Child 1';
        MenuItem."Suite Id" := MenuSuite.Id;
        InsertNewRecord(MenuItem);

        CreateAMenuItem(MenuItem);
        MenuItem.Name := 'Child 2';
        MenuItem."Suite Id" := MenuSuite.Id;
        InsertNewRecord(MenuItem);
    end;

    local procedure CreateParentGuidIsEmpty(var MenuItem: Record DepartmentItem_DSK)
    var
        NullGuid: Guid;
    begin
        MenuItem."Parent GUID" := NullGuid;
    end;

    local procedure ExistingRecordChanged(var MenuItem: Record DepartmentItem_DSK)
    begin
        MenuItem."Parent GUID" := CreateGuid();
        MenuItem.Insert(true);
        CreateParentGuidIsEmpty(MenuItem);
        MenuItem.Modify(true);
    end;

    local procedure InsertNewRecord(var MenuItem: Record DepartmentItem_DSK)
    begin
        MenuItem.Insert(true);
    end;

    local procedure RecordIsDeleted(var MenuSuite: Record DepartmentSuite_DSK)
    begin
        MenuSuite.Delete(true);
    end;

    local procedure VerifyMainMenuFlagPopulated(var MenuItem: Record DepartmentItem_DSK)
    begin
        Assert.IsTrue(MenuItem."Main Menu", 'Not a main menu.');
    end;

    local procedure VerifyMenuItemsDeleted(SuiteId: Integer)
    var
        MenuItem: Record DepartmentItem_DSK;
    begin
        MenuItem.SetRange("Suite Id", SuiteId);
        Assert.IsTrue(MenuItem.IsEmpty(), 'Suite Menu Items still exist.');
    end;

}


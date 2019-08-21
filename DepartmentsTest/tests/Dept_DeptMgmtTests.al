codeunit 89913 "Dept_DeptMgmtTests_DSK"
{
    // [FEATURE] Department Functions
    SubType = Test;

    [Test]
    procedure UpdateCalculatedPositions()
    // [FEATURE] Department Functions
    begin
        // [SCENARIO #0001] Update Calculated Positions
        Initialize();

        // [GIVEN] A Menu Hierarchy
        CreateAMenuHierarchy();

        // [WHEN] UpdateMainMenus Runs
        UpdateMainMenusRuns();

        // [THEN] Calculated Position is set
        VerifyCalculatedPositionIsSet();

    end;

    [Test]
    procedure UpdateImportedMenuSuitePositions()
    // [FEATURE] Department Functions
    begin
        // [SCENARIO #0002] Update Imported MenuSuite Positions
        Initialize();

        // [GIVEN] An Imported Suite
        CreateAnImportedSuite();

        // [WHEN] UpdateNodes Runs
        UpdateNodesRuns();

        // [THEN] Position is set
        VerifyPositionIsSet();

    end;

    [Test]
    procedure GenerateJsonOutput()
    // [FEATURE] Department Functions
    begin
        // [SCENARIO #0003] Generate Json Output
        Initialize();

        // [GIVEN] A Menu Hierarchy
        CreateAMenuHierarchy();

        // [WHEN] ToJson Runs
        ActualValue := ToJsonRuns();

        // [THEN] Json Text is generated
        VerifyJsonTextIsGenerated(ActualValue);

    end;

    var
        MenuItem: Record DepartmentItem_DSK;
        DeptMgmt: Codeunit DepartmentsMgmt_DSK;
        Assert: Codeunit Assert;
        IsInitialized: Boolean;
        ActualValue: Variant;

    local procedure Initialize()
    var
        LibraryTestInitialize: Codeunit "Library - Test Initialize";
    begin
        LibraryTestInitialize.OnTestInitialize(Codeunit::"Dept_DeptMgmtTests_DSK");

        if IsInitialized then
            exit;

        LibraryTestInitialize.OnBeforeTestSuiteInitialize(Codeunit::"Dept_DeptMgmtTests_DSK");

        IsInitialized := true;
        Commit();

        LibraryTestInitialize.OnAfterTestSuiteInitialize(Codeunit::"Dept_DeptMgmtTests_DSK");

        MenuItem.DeleteAll();
    end;

    local procedure CreateAMenuHierarchy()
    begin
        Clear(MenuItem);
        CreateAMenu(MenuItem, 'Main Menu 1');
        CreateAMenu(MenuItem, 'SubGroup 1');
        CreateAMenu(MenuItem, 'Child 1');

        Clear(MenuItem);
        CreateAMenu(MenuItem, 'Main Menu 2');
        CreateAMenu(MenuItem, 'SubGroup 2');
        CreateAMenu(MenuItem, 'Child 2');
    end;

    local procedure CreateAMenu(var MenuItem: Record DepartmentItem_DSK; Name: Text[250])
    var
        ParentGuid: Guid;
    begin
        ParentGuid := MenuItem.GUID;
        MenuItem.Init();
        MenuItem.GUID := CreateGuid();
        MenuItem."Parent GUID" := ParentGuid;
        MenuItem.Name := Name;
        MenuItem."Object Type" := MenuItem."Object Type"::Page;
        MenuItem."Object ID" := Page::"CAL Test Tool";
        MenuItem.Visible := true;
        MenuItem.Insert(true);
    end;

    local procedure CreateAnImportedSuite()
    var
        TmpBlob: Record TempBlob temporary;
        SuiteMgmt: Codeunit MenuSuiteMgmt_DSK;
        FileContent: Codeunit MenuSuite_FileContent;
        InStr: InStream;
    begin
        FileContent.GetInStream(TmpBlob);
        TmpBlob.Blob.CreateInStream(InStr);
        SuiteMgmt.ProcessMenuSuite(InStr);
    end;

    local procedure ToJsonRuns(): JsonArray
    begin
        exit(DeptMgmt.ToJson());
    end;

    local procedure UpdateMainMenusRuns()
    begin
        DeptMgmt.UpdateMainMenus();
    end;

    local procedure UpdateNodesRuns()
    begin
        DeptMgmt.UpdateNodes(MenuItem, true);
    end;

    local procedure VerifyCalculatedPositionIsSet()
    begin
        Clear(MenuItem);
        MenuItem.SetRange("Calculated Position", 0);
        Assert.IsTrue(MenuItem.IsEmpty(), 'Calculated Positions are incorrect.');
    end;

    local procedure VerifyJsonTextIsGenerated(TestValue: Variant)
    var
        CheckValue: JsonArray;
    begin
        CheckValue := TestValue;
        Assert.IsTrue(CheckValue.Count() > 0, 'Json output is empty.');
    end;

    local procedure VerifyPositionIsSet()
    begin
        Clear(MenuItem);
        MenuItem.SetFilter("Position", '<>%1', 0);
        Assert.IsTrue(not MenuItem.IsEmpty(), 'Nodes remained unprocessed.');
    end;

}


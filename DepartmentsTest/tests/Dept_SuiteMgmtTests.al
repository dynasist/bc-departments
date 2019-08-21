codeunit 89914 "Dept_SuiteMgmtTests_DSK"
{
    // [FEATURE] MenuSuite Import
    SubType = Test;

    [Test]
    procedure ImportFromFile()
    // [FEATURE] MenuSuite Import
    begin
        // [SCENARIO #0001] Import from File
        Initialize();

        // [GIVEN] An InStream
        CreateAnInStream(TempBlob);

        // [WHEN] Content is parsed
        ContentIsParsed(TempBlob);

        // [THEN] Deparment Suite populated
        VerifyDeparmentSuitePopulated();

        // [THEN] Menu Items populated
        VerifyMenuItemsPopulated();
    end;

    var
        DeptSuite: Record DepartmentSuite_DSK;
        MenuItem: Record DepartmentItem_DSK;
        TempBlob: Record TempBlob temporary;
        SuiteMgmt: Codeunit MenuSuiteMgmt_DSK;
        Assert: Codeunit Assert;
        FileContent: Codeunit MenuSuite_FileContent;
        IsInitialized: Boolean;
        ActualValue: Boolean;

    local procedure Initialize()
    var
        LibraryTestInitialize: Codeunit "Library - Test Initialize";
    begin
        LibraryTestInitialize.OnTestInitialize(Codeunit::"Dept_SuiteMgmtTests_DSK");

        if IsInitialized then
            exit;

        LibraryTestInitialize.OnBeforeTestSuiteInitialize(Codeunit::"Dept_SuiteMgmtTests_DSK");

        IsInitialized := true;
        Commit();

        LibraryTestInitialize.OnAfterTestSuiteInitialize(Codeunit::"Dept_SuiteMgmtTests_DSK");
    end;

    local procedure ContentIsParsed(var TmpBlob: Record TempBlob temporary)
    var
        InStr: InStream;
    begin
        TmpBlob.Blob.CreateInStream(InStr);
        SuiteMgmt.ProcessMenuSuite(InStr);
    end;

    local procedure CreateAnInStream(var TmpBlob: Record TempBlob temporary)
    begin
        FileContent.GetInStream(TmpBlob);
    end;

    local procedure VerifyDeparmentSuitePopulated()
    begin
        ActualValue := DeptSuite.Get(1099);
        Assert.IsTrue(ActualValue, 'Department Suite does not exist.');
    end;

    local procedure VerifyMenuItemsPopulated()
    begin
        MenuItem.SetRange("Suite Id", 1099);
        ActualValue := not MenuItem.IsEmpty();
        Assert.IsTrue(ActualValue, 'Department Menu Items do not exist.');
    end;

}


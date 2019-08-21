$Features = @()

$Features +=
Feature 'Department Functions' {
    Scenario 1 'Update Calculated Positions' {
        Given	'A Menu Hierarchy'
        When	'UpdateMainMenus Runs'
        Then	'Calculated Position is set'
    }

    Scenario 2 'Update Imported MenuSuite Positions' {
        Given	'An Imported Suite'
        When	'UpdateNodes Runs'
        Then	'Position is set'
    }

    Scenario 3 'Generate Json Output' {
        Given	'A Menu Hierarchy'
        When	'ToJson Runs'
        Then	'Json Text is generated'
    }

}

$Features | `
    ConvertTo-ALTestCodeunit `
    -CodeunitID 89913 `
    -CodeunitName 'Dept_DeptMgmtTests_DSK' `
    -InitializeFunction `
    -GivenFunctionName "Create {0}" `
    -ThenFunctionName "Verify {0}" `
#    | Out-File -FilePath ..\tests\Dept_DeptMgmtTests.al
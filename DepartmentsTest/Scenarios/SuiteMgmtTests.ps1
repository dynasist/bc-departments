$Features = @()

$Features +=
Feature 'MenuSuite Import' {
    Scenario 1 'Import from File' {
        Given	'An InStream'
        When	'Content is parsed'
        Then	'Deparment Suite populated'
        Then	'Menu Items populated'
    }

}

$Features | `
    ConvertTo-ALTestCodeunit `
    -CodeunitID 89914 `
    -CodeunitName 'Dept_SuiteMgmtTests_DSK' `
    -InitializeFunction `
    -GivenFunctionName "Create {0}" `
    -ThenFunctionName "Verify {0}" `
#    | Out-File -FilePath ..\tests\Dept_SuiteMgmtTests.al
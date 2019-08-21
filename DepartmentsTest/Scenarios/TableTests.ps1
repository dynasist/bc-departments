$Features = @()

$Features +=
Feature 'Department Item Table' {
    Scenario 1 'Department Item Check OnBeforeInsert Event' {
        Given	'A Menu Item'
        Given   'Parent Guid is empty'
        When	'Insert new record'
        Then	'Main Menu flag populated'
    }

    Scenario 2 'Department Item Check OnBeforeModify Event' {
        Given	'A Menu Item'
        Given   'Parent Guid is empty'
        When	'Existing record changed'
        Then	'Main Menu flag populated'
    }

}

$Features +=
Feature 'Department Suite Table' {
    Scenario 1 'Department Suite Check OnBeforeDelete Event' {
        Given	'A Suite'
        Given   'Has Menu Items'
        When	'Record is deleted'
        Then	'Menu Items deleted'
    }
}

$Features | `
    ConvertTo-ALTestCodeunit `
    -CodeunitID 89912 `
    -CodeunitName 'Dept_TableTests_DSK' `
    -InitializeFunction `
    -GivenFunctionName "Create {0}" `
    -ThenFunctionName "Verify {0}" `
#    | Out-File -FilePath ..\tests\Dept_TableTests.al
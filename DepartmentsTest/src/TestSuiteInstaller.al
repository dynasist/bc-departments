codeunit 89910 "BCDepartmentsTestInstaller_DSK"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    var
        TestSuite: Codeunit "BCDepartmentsTestSuiteMgmt_DSK";
    begin
        TestSuite.Create('DYNASIST', '89910..89919', false);
    end;
}
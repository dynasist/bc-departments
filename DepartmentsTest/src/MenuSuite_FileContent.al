codeunit 89915 "MenuSuite_FileContent"
{
    procedure GetInStream(var TempBlob: Record TempBlob temporary)
    begin
        TempBlob.WriteAsText(GetContent(), TextEncoding::MSDos);
    end;

    procedure GetContent(): Text
    var
        Content: Text;
        CR: Char;
        LF: Char;
        CRLF: Text;
    begin
        CR := 13;
        LF := 10;
        CRLF := StrSubstNo('%1%2', CR, LF);
        Content :=
'OBJECT MenuSuite 1099 Dept - MBS%1' +
'{%1' +
'  OBJECT-PROPERTIES%1' +
'  {%1' +
'    Date=19.03.24;%1' +
'    Time=12:00:00;%1' +
'    Version List=NAVW114.00;%1' +
'  }%1' +
'  PROPERTIES%1' +
'  {%1' +
'  }%1' +
'  MENUNODES%1' +
'  {%1' +
'    { Root           ;[{00000000-0000-0000-0000-000000000000}] ;FirstChild=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}] }%1' +
'    { Menu           ;[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}] ;Name=Finance;%1' +
'                                                                CaptionML=ENU=Financial Management;%1' +
'                                                                ParentNodeID=[{00000000-0000-0000-0000-000000000000}];%1' +
'                                                                Image=1;%1' +
'                                                                IsShortcut=No;%1' +
'                                                                Visible=Yes;%1' +
'                                                                Enabled=Yes;%1' +
'                                                                NextNodeID=[{2DC8C4FE-7346-4124-8C20-383346384C03}];%1' +
'                                                                FirstChild=[{B12180CF-0EFB-43AD-9118-7765E953AAFD}] }%1' +
'    { MenuGroup      ;[{B12180CF-0EFB-43AD-9118-7765E953AAFD}] ;Name=General Ledger;%1' +
'                                                                CaptionML=ENU=General Ledger;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{F5437B9C-0D44-4614-AB7D-87F12D50220E}];%1' +
'                                                                FirstChild=[{8AC7917D-2C91-457D-80D6-A24B42F71AE7}] }%1' +
'    { MenuItem       ;[{8AC7917D-2C91-457D-80D6-A24B42F71AE7}] ;Name=Chart of Accounts;%1' +
'                                                                CaptionML=ENU=Chart of Accounts;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=16;%1' +
'                                                                ParentNodeID=[{B12180CF-0EFB-43AD-9118-7765E953AAFD}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{92F88635-40B9-47EA-90CF-7D2E6A9447BE}];%1' +
'                                                                DepartmentCategory=Lists }%1' +
'    { MenuItem       ;[{92F88635-40B9-47EA-90CF-7D2E6A9447BE}] ;Name=Budgets;%1' +
'                                                                CaptionML=ENU=G/L Budgets;%1' +
'                                                                ApplicationArea=#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=121;%1' +
'                                                                ParentNodeID=[{B12180CF-0EFB-43AD-9118-7765E953AAFD}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{A0228F75-6AE8-409F-A9AF-E0F544B72976}];%1' +
'                                                                DepartmentCategory=Lists }%1' +
'    { MenuItem       ;[{A0228F75-6AE8-409F-A9AF-E0F544B72976}] ;Name=General Journals;%1' +
'                                                                CaptionML=ENU=General Journals;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=39;%1' +
'                                                                ParentNodeID=[{B12180CF-0EFB-43AD-9118-7765E953AAFD}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{4AAB72DF-FD5F-4DC1-8670-53C43FA9C66E}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuGroup      ;[{4AAB72DF-FD5F-4DC1-8670-53C43FA9C66E}] ;Name=Analysis & Reporting;%1' +
'                                                                CaptionML=ENU=Analysis & Reporting;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{B12180CF-0EFB-43AD-9118-7765E953AAFD}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{C0AEBBA8-9655-430D-8199-3A982BDE6248}];%1' +
'                                                                FirstChild=[{B49D01D8-31F5-41A2-99CB-6F39DB605898}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuItem       ;[{B49D01D8-31F5-41A2-99CB-6F39DB605898}] ;Name=Account Schedules;%1' +
'                                                                CaptionML=ENU=Account Schedules;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=103;%1' +
'                                                                ParentNodeID=[{4AAB72DF-FD5F-4DC1-8670-53C43FA9C66E}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{96DEF80A-EA8B-4A87-9761-458944783EA9}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{96DEF80A-EA8B-4A87-9761-458944783EA9}] ;Name=Analyses by Dimensions;%1' +
'                                                                CaptionML=ENU=Analysis by Dimensions;%1' +
'                                                                ApplicationArea=#Dimensions;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=556;%1' +
'                                                                ParentNodeID=[{4AAB72DF-FD5F-4DC1-8670-53C43FA9C66E}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{D0095950-80E7-41D1-9F4F-FB1DA2C482FA}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuGroup      ;[{C0AEBBA8-9655-430D-8199-3A982BDE6248}] ;Name=Intercompany Postings;%1' +
'                                                                CaptionML=ENU=Intercompany Postings;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{B12180CF-0EFB-43AD-9118-7765E953AAFD}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{57F57D7A-80E8-4206-8A0D-B199EEED7214}];%1' +
'                                                                FirstChild=[{023633F2-142A-41F1-84F2-E99CAC1CD11E}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuItem       ;[{023633F2-142A-41F1-84F2-E99CAC1CD11E}] ;Name=General Journals;%1' +
'                                                                CaptionML=ENU=Intercompany General Journal;%1' +
'                                                                ApplicationArea=#Intercompany;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=610;%1' +
'                                                                ParentNodeID=[{C0AEBBA8-9655-430D-8199-3A982BDE6248}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{CC960D06-3C57-4433-AD43-707B4AD5EF68}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuItem       ;[{CC960D06-3C57-4433-AD43-707B4AD5EF68}] ;Name=Inbox Transactions;%1' +
'                                                                CaptionML=ENU=Intercompany Inbox Transactions;%1' +
'                                                                ApplicationArea=#Intercompany;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=615;%1' +
'                                                                ParentNodeID=[{C0AEBBA8-9655-430D-8199-3A982BDE6248}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{E618D9F8-570C-4B90-9E1D-F4F65ED2115F}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuItem       ;[{E618D9F8-570C-4B90-9E1D-F4F65ED2115F}] ;Name=Outbox Transactions;%1' +
'                                                                CaptionML=ENU=Intercompany Outbox Transactions;%1' +
'                                                                ApplicationArea=#Intercompany;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=611;%1' +
'                                                                ParentNodeID=[{C0AEBBA8-9655-430D-8199-3A982BDE6248}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{32E92976-D10A-4E11-AD42-1448BA178A73}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuItem       ;[{32E92976-D10A-4E11-AD42-1448BA178A73}] ;Name=Handled Inbox Transactions;%1' +
'                                                                CaptionML=ENU=Handled Intercompany Inbox Transactions;%1' +
'                                                                ApplicationArea=#Intercompany;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=617;%1' +
'                                                                ParentNodeID=[{C0AEBBA8-9655-430D-8199-3A982BDE6248}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{59055819-B424-4F47-B825-BD708976BEB3}];%1' +
'                                                                DepartmentCategory=Lists }%1' +
'    { MenuItem       ;[{59055819-B424-4F47-B825-BD708976BEB3}] ;Name=Handled Outbox Transactions;%1' +
'                                                                CaptionML=ENU=Handled Intercompany Outbox Transactions;%1' +
'                                                                ApplicationArea=#Intercompany;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=613;%1' +
'                                                                ParentNodeID=[{C0AEBBA8-9655-430D-8199-3A982BDE6248}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{00000000-0000-0000-0000-000000000000}];%1' +
'                                                                DepartmentCategory=Lists }%1' +
'    { MenuGroup      ;[{57F57D7A-80E8-4206-8A0D-B199EEED7214}] ;Name=Reports;%1' +
'                                                                CaptionML=ENU=Reports;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{B12180CF-0EFB-43AD-9118-7765E953AAFD}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{EEF400CC-844A-456A-A6E9-51EC284270A0}];%1' +
'                                                                FirstChild=[{D56F8CDF-9578-465F-B257-E7FB962DDC95}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuGroup      ;[{D56F8CDF-9578-465F-B257-E7FB962DDC95}] ;Name=Entries;%1' +
'                                                                CaptionML=ENU=Entries;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{57F57D7A-80E8-4206-8A0D-B199EEED7214}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{4D1A3284-B7E4-4977-B65B-2F362B8C8F47}];%1' +
'                                                                FirstChild=[{AD6CADB2-C95D-45A4-A74E-02720E59D13E}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuItem       ;[{AD6CADB2-C95D-45A4-A74E-02720E59D13E}] ;Name=G/L Register;%1' +
'                                                                CaptionML=ENU=G/L Register;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=3;%1' +
'                                                                ParentNodeID=[{D56F8CDF-9578-465F-B257-E7FB962DDC95}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{63C87C0F-80F4-4285-AABF-29E78A087F33}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{63C87C0F-80F4-4285-AABF-29E78A087F33}] ;Name=Detail Trial Balance;%1' +
'                                                                CaptionML=ENU=Detail Trial Balance;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=4;%1' +
'                                                                ParentNodeID=[{D56F8CDF-9578-465F-B257-E7FB962DDC95}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{CB8E73CA-C801-4F9C-A657-EACDC6A3988B}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{CB8E73CA-C801-4F9C-A657-EACDC6A3988B}] ;Name=Dimensions - Detail;%1' +
'                                                                CaptionML=ENU=Dimensions - Detail;%1' +
'                                                                ApplicationArea=#Dimensions;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=28;%1' +
'                                                                ParentNodeID=[{D56F8CDF-9578-465F-B257-E7FB962DDC95}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{2E78541A-26F3-46A6-A444-44FB61CE3B68}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{2E78541A-26F3-46A6-A444-44FB61CE3B68}] ;Name=Dimensions - Total;%1' +
'                                                                CaptionML=ENU=Dimensions - Total;%1' +
'                                                                ApplicationArea=#Dimensions;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=27;%1' +
'                                                                ParentNodeID=[{D56F8CDF-9578-465F-B257-E7FB962DDC95}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{B4FDC8AF-A6DE-4583-9D3E-0235C636EAFB}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{B4FDC8AF-A6DE-4583-9D3E-0235C636EAFB}] ;Name=Check Value Posting;%1' +
'                                                                CaptionML=ENU=Dimension Check Value Posting;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=30;%1' +
'                                                                ParentNodeID=[{D56F8CDF-9578-465F-B257-E7FB962DDC95}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{00000000-0000-0000-0000-000000000000}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuGroup      ;[{4D1A3284-B7E4-4977-B65B-2F362B8C8F47}] ;Name=Financial Statement;%1' +
'                                                                CaptionML=ENU=Financial Statement;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{57F57D7A-80E8-4206-8A0D-B199EEED7214}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{80285CCE-C8DC-4CE0-B66D-6626ED39544E}];%1' +
'                                                                FirstChild=[{B691EBD1-48A9-4592-BD88-30F323CDEC8C}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuItem       ;[{AEE3BC6F-2F33-4B08-91FE-733C4C8BB52F}] ;Name=Account Schedule;%1' +
'                                                                CaptionML=ENU=Account Schedule;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=25;%1' +
'                                                                ParentNodeID=[{4D1A3284-B7E4-4977-B65B-2F362B8C8F47}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{DB303B10-7112-41D6-B29D-DB7D85D5CDFF}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{29B6FF0D-FD97-48CC-AD2F-4AE21F23A151}] ;Name=Trial Balance;%1' +
'                                                                CaptionML=ENU=Trial Balance;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=6;%1' +
'                                                                ParentNodeID=[{4D1A3284-B7E4-4977-B65B-2F362B8C8F47}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{A62D4761-7D63-466A-8704-3F9332F28900}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{A62D4761-7D63-466A-8704-3F9332F28900}] ;Name=Trial Balance/Budget;%1' +
'                                                                CaptionML=ENU=Trial Balance/Budget;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=9;%1' +
'                                                                ParentNodeID=[{4D1A3284-B7E4-4977-B65B-2F362B8C8F47}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{F3455F88-4EB2-49C9-B54F-32FEF2CFC08A}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{F3455F88-4EB2-49C9-B54F-32FEF2CFC08A}] ;Name=Trial Balance/Previous Year;%1' +
'                                                                CaptionML=ENU=Trial Balance/Previous Year;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=7;%1' +
'                                                                ParentNodeID=[{4D1A3284-B7E4-4977-B65B-2F362B8C8F47}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{C3604E77-CDDF-4E2E-81FD-27256E11C283}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{5F3C05DF-EACD-4D75-BF74-FBAB0F8CFD37}] ;Name=Closing Trial Balance;%1' +
'                                                                CaptionML=ENU=Closing Trial Balance;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=10;%1' +
'                                                                ParentNodeID=[{4D1A3284-B7E4-4977-B65B-2F362B8C8F47}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{F444943D-67F3-458A-AF75-2049B9590801}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{F444943D-67F3-458A-AF75-2049B9590801}] ;Name=Consolidated Trial Balance;%1' +
'                                                                CaptionML=ENU=Consolidated Trial Balance;%1' +
'                                                                ApplicationArea=#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=17;%1' +
'                                                                ParentNodeID=[{4D1A3284-B7E4-4977-B65B-2F362B8C8F47}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{4458848A-1E78-4B9A-8CD0-9980D3193C73}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{4458848A-1E78-4B9A-8CD0-9980D3193C73}] ;Name=Consolidated Trial Balance (4);%1' +
'                                                                CaptionML=ENU=Consolidated Trial Balance (4);%1' +
'                                                                ApplicationArea=#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=18;%1' +
'                                                                ParentNodeID=[{4D1A3284-B7E4-4977-B65B-2F362B8C8F47}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{00000000-0000-0000-0000-000000000000}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuGroup      ;[{816DEE3F-9922-409E-B3A5-37FDCBBFE1B5}] ;Name=VAT Reporting;%1' +
'                                                                CaptionML=ENU=VAT Reporting;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{57F57D7A-80E8-4206-8A0D-B199EEED7214}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{D2CB8EAF-AAAE-4FA9-8677-770762661DE5}];%1' +
'                                                                FirstChild=[{0820CA7D-9D4B-44A5-920D-F4611C8D6DF6}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuItem       ;[{0820CA7D-9D4B-44A5-920D-F4611C8D6DF6}] ;Name=VAT Exceptions;%1' +
'                                                                CaptionML=ENU=VAT Exceptions;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=31;%1' +
'                                                                ParentNodeID=[{816DEE3F-9922-409E-B3A5-37FDCBBFE1B5}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{3A798BBB-74E4-4A0F-90D4-31D355D6B8D0}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{3A798BBB-74E4-4A0F-90D4-31D355D6B8D0}] ;Name=VAT Register;%1' +
'                                                                CaptionML=ENU=VAT Register;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=13;%1' +
'                                                                ParentNodeID=[{816DEE3F-9922-409E-B3A5-37FDCBBFE1B5}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{96072247-E88A-4867-B88C-3E603F9E5DB9}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{96072247-E88A-4867-B88C-3E603F9E5DB9}] ;Name=VAT Registration No. Check;%1' +
'                                                                CaptionML=ENU=Batch VAT Registration No. Check;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=32;%1' +
'                                                                ParentNodeID=[{816DEE3F-9922-409E-B3A5-37FDCBBFE1B5}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{D9EA6198-93A2-44FD-91E1-5713CBAAA81B}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{D9EA6198-93A2-44FD-91E1-5713CBAAA81B}] ;Name=VAT Statement;%1' +
'                                                                CaptionML=ENU=VAT Statement;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=12;%1' +
'                                                                ParentNodeID=[{816DEE3F-9922-409E-B3A5-37FDCBBFE1B5}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{D7D691B0-E62F-490A-ADBE-1BADCB88D441}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{D7D691B0-E62F-490A-ADBE-1BADCB88D441}] ;Name=VAT- VIES Declaration Tax Auth;%1' +
'                                                                CaptionML=ENU=VAT- VIES Declaration Tax Auth;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=19;%1' +
'                                                                ParentNodeID=[{816DEE3F-9922-409E-B3A5-37FDCBBFE1B5}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{00000000-0000-0000-0000-000000000000}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuGroup      ;[{D2CB8EAF-AAAE-4FA9-8677-770762661DE5}] ;Name=Consolidation;%1' +
'                                                                CaptionML=ENU=Consolidation;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{57F57D7A-80E8-4206-8A0D-B199EEED7214}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{881997E2-34F4-4523-AEEE-DA87419DF9F6}];%1' +
'                                                                FirstChild=[{AC79C922-7831-4B80-9F9F-A54FE69D51F8}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuItem       ;[{AC79C922-7831-4B80-9F9F-A54FE69D51F8}] ;Name=G/L Consolidation Eliminations;%1' +
'                                                                CaptionML=ENU=G/L Consolidation Eliminations;%1' +
'                                                                ApplicationArea=#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=16;%1' +
'                                                                ParentNodeID=[{D2CB8EAF-AAAE-4FA9-8677-770762661DE5}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{00000000-0000-0000-0000-000000000000}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuGroup      ;[{881997E2-34F4-4523-AEEE-DA87419DF9F6}] ;Name=Miscellaneous;%1' +
'                                                                CaptionML=ENU=Miscellaneous;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{57F57D7A-80E8-4206-8A0D-B199EEED7214}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{BE55AC55-529B-4D2C-9B9C-8CEF2EE313F4}];%1' +
'                                                                FirstChild=[{08C8A480-9A90-4517-8FAB-E8435D1A7C7D}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuItem       ;[{08C8A480-9A90-4517-8FAB-E8435D1A7C7D}] ;Name=Intrastat - Checklist;%1' +
'                                                                CaptionML=ENU=Intrastat - Checklist;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=502;%1' +
'                                                                ParentNodeID=[{881997E2-34F4-4523-AEEE-DA87419DF9F6}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{2D2855D7-7960-4B98-824B-5530D7A651A8}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{2D2855D7-7960-4B98-824B-5530D7A651A8}] ;Name=Intrastat - Form;%1' +
'                                                                CaptionML=ENU=Intrastat - Form;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=501;%1' +
'                                                                ParentNodeID=[{881997E2-34F4-4523-AEEE-DA87419DF9F6}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{25410294-6D51-4AC3-9CAA-F363CF271C57}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{25410294-6D51-4AC3-9CAA-F363CF271C57}] ;Name=Foreign Currency Balance;%1' +
'                                                                CaptionML=ENU=Foreign Currency Balance;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=503;%1' +
'                                                                ParentNodeID=[{881997E2-34F4-4523-AEEE-DA87419DF9F6}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{20A38B36-AB86-4907-AA48-902D2D0D3E06}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{20A38B36-AB86-4907-AA48-902D2D0D3E06}] ;Name=XBRL Mapping of G/L Accounts;%1' +
'                                                                CaptionML=ENU=XBRL Mapping of G/L Accounts;%1' +
'                                                                ApplicationArea=#XBRL;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=506;%1' +
'                                                                ParentNodeID=[{881997E2-34F4-4523-AEEE-DA87419DF9F6}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{DA9B295F-F6F4-49E7-A5D0-71F018087112}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{DA9B295F-F6F4-49E7-A5D0-71F018087112}] ;Name=Reconcile Cust. and Vend. Accs;%1' +
'                                                                CaptionML=ENU=Reconcile Customer and Vendor Accounts;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=33;%1' +
'                                                                ParentNodeID=[{881997E2-34F4-4523-AEEE-DA87419DF9F6}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{AB0FB54B-2B20-4200-95F2-C63AA7B4DDE3}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuGroup      ;[{BE55AC55-529B-4D2C-9B9C-8CEF2EE313F4}] ;Name=Setup Information;%1' +
'                                                                CaptionML=ENU=Setup List;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{57F57D7A-80E8-4206-8A0D-B199EEED7214}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{00000000-0000-0000-0000-000000000000}];%1' +
'                                                                FirstChild=[{EAD66322-4550-499B-9A8D-17F879A763F9}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuItem       ;[{EAD66322-4550-499B-9A8D-17F879A763F9}] ;Name=Chart of Accounts;%1' +
'                                                                CaptionML=ENU=Chart of Accounts;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=1;%1' +
'                                                                ParentNodeID=[{BE55AC55-529B-4D2C-9B9C-8CEF2EE313F4}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{9DC48740-37AC-4E23-968F-9B865AF7FFAB}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{9DC48740-37AC-4E23-968F-9B865AF7FFAB}] ;Name=Change Log Setup List;%1' +
'                                                                CaptionML=ENU=Change Log Setup List;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=508;%1' +
'                                                                ParentNodeID=[{BE55AC55-529B-4D2C-9B9C-8CEF2EE313F4}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{00000000-0000-0000-0000-000000000000}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{E4C6E23D-677C-4652-9DE9-AAFC8A51A286}] ;Name=Recurring Journals;%1' +
'                                                                CaptionML=ENU=Recurring General Journals;%1' +
'                                                                ApplicationArea=#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=283;%1' +
'                                                                ParentNodeID=[{3FAA73AE-D95A-4055-8331-F6407CEA8034}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{C6F15C0B-67FB-45A8-AD5C-54D733A6BA72}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuItem       ;[{C6F15C0B-67FB-45A8-AD5C-54D733A6BA72}] ;Name=Update Analysis Views...;%1' +
'                                                                CaptionML=ENU=Update Analysis Views...;%1' +
'                                                                ApplicationArea=#Dimensions;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=84;%1' +
'                                                                ParentNodeID=[{3FAA73AE-D95A-4055-8331-F6407CEA8034}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{D9FC4F42-7C16-42E9-9B2B-C54560F35B05}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuItem       ;[{8DFC1044-47E9-4B4C-A64E-31D312DE9D2A}] ;Name=Calc. and Post VAT Settlement;%1' +
'                                                                CaptionML=ENU=Calculate and Post VAT Settlement;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=20;%1' +
'                                                                ParentNodeID=[{65FA8D2E-BC92-41D1-AEDD-8AAA46384FC5}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{65798D3F-30DD-4711-8393-BD0F8217CCD4}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{65798D3F-30DD-4711-8393-BD0F8217CCD4}] ;Name=VAT Statements;%1' +
'                                                                CaptionML=ENU=VAT Statements;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=317;%1' +
'                                                                ParentNodeID=[{65FA8D2E-BC92-41D1-AEDD-8AAA46384FC5}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{07AF0A3E-D192-4C90-9A1A-A5CB9026E2D5}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuItem       ;[{D9FC4F42-7C16-42E9-9B2B-C54560F35B05}] ;Name=Intrastat Journals;%1' +
'                                                                CaptionML=ENU=Intrastat Journals;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=311;%1' +
'                                                                ParentNodeID=[{3FAA73AE-D95A-4055-8331-F6407CEA8034}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{00000000-0000-0000-0000-000000000000}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuItem       ;[{C03C30B8-08CE-4A39-BBD4-B36361277516}] ;Name=Currencies;%1' +
'                                                                CaptionML=ENU=Currencies;%1' +
'                                                                ApplicationArea=#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=5;%1' +
'                                                                ParentNodeID=[{5858D635-8860-415E-8A06-3136300DC59B}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{30E881BD-AE85-4661-A8A6-1FB53D7A0E81}];%1' +
'                                                                DepartmentCategory=Lists }%1' +
'    { MenuItem       ;[{57E4EA5A-B0CF-4DCB-A890-DA7D3CAAB61C}] ;Name=Exchange Rate Adjmt. Registers;%1' +
'                                                                CaptionML=ENU=Exchange Rate Adjmt. Registers;%1' +
'                                                                ApplicationArea=#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=106;%1' +
'                                                                ParentNodeID=[{5858D635-8860-415E-8A06-3136300DC59B}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{00000000-0000-0000-0000-000000000000}];%1' +
'                                                                DepartmentCategory=Lists }%1' +
'    { MenuItem       ;[{7883B634-491C-45E5-BDC6-00E8092CE4B2}] ;Name=Accounting Periods;%1' +
'                                                                CaptionML=ENU=Accounting Periods;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=100;%1' +
'                                                                ParentNodeID=[{2ACDDD7C-B22F-484A-99B0-ECBC5F17B328}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{09CBB782-CDA6-40B8-BB85-7AE24C86F067}];%1' +
'                                                                DepartmentCategory=Lists }%1' +
'    { MenuItem       ;[{09CBB782-CDA6-40B8-BB85-7AE24C86F067}] ;Name=Close Income Statement;%1' +
'                                                                CaptionML=ENU=Close Income Statement...;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=94;%1' +
'                                                                ParentNodeID=[{2ACDDD7C-B22F-484A-99B0-ECBC5F17B328}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{00000000-0000-0000-0000-000000000000}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuItem       ;[{53679505-B0C4-4105-8E7C-C1B4F8B3A741}] ;Name=Export Consolidation;%1' +
'                                                                CaptionML=ENU=Export Consolidation...;%1' +
'                                                                ApplicationArea=#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=91;%1' +
'                                                                ParentNodeID=[{877F71B2-4501-46DD-8FC2-7F8BAEC11932}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{BC932458-EE7A-4E4E-B8EA-AF1A2560E6DA}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuItem       ;[{BC932458-EE7A-4E4E-B8EA-AF1A2560E6DA}] ;Name=Business Units;%1' +
'                                                                CaptionML=ENU=Business Units;%1' +
'                                                                ApplicationArea=#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=240;%1' +
'                                                                ParentNodeID=[{877F71B2-4501-46DD-8FC2-7F8BAEC11932}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{00000000-0000-0000-0000-000000000000}];%1' +
'                                                                DepartmentCategory=Lists }%1' +
'    { MenuItem       ;[{D0095950-80E7-41D1-9F4F-FB1DA2C482FA}] ;Name=XBRL Taxonomies;%1' +
'                                                                CaptionML=ENU=XBRL Taxonomies;%1' +
'                                                                ApplicationArea=#XBRL;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=582;%1' +
'                                                                ParentNodeID=[{4AAB72DF-FD5F-4DC1-8670-53C43FA9C66E}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{290BDDBE-3EAA-482B-8353-37E6618476A5}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuGroup      ;[{290BDDBE-3EAA-482B-8353-37E6618476A5}] ;Name=XBRL Reporting;%1' +
'                                                                CaptionML=ENU=XBRL Reporting;%1' +
'                                                                ApplicationArea=#XBRL;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{4AAB72DF-FD5F-4DC1-8670-53C43FA9C66E}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{2FDC1820-9659-4729-B00C-E67C8EDDAD5F}];%1' +
'                                                                FirstChild=[{A1278121-5A0F-4493-AE21-9822FFA14D2D}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuItem       ;[{A1278121-5A0F-4493-AE21-9822FFA14D2D}] ;Name=XBRL Spec. 2 Instance Document;%1' +
'                                                                CaptionML=ENU=XBRL Spec. 2 Instance Document;%1' +
'                                                                ApplicationArea=#XBRL;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=505;%1' +
'                                                                ParentNodeID=[{290BDDBE-3EAA-482B-8353-37E6618476A5}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{00000000-0000-0000-0000-000000000000}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuGroup      ;[{C87075E0-8655-4172-A582-517A26D81202}] ;Name=Receivables;%1' +
'                                                                CaptionML=ENU=Receivables;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{5D5A3EDE-B00E-4220-9494-0E8829F8E741}];%1' +
'                                                                FirstChild=[{0B115F61-67D2-48A5-BD5A-3E7D95369AE9}] }%1' +
'    { MenuItem       ;[{0B115F61-67D2-48A5-BD5A-3E7D95369AE9}] ;Name=Customers;%1' +
'                                                                CaptionML=ENU=Customers;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=22;%1' +
'                                                                ParentNodeID=[{C87075E0-8655-4172-A582-517A26D81202}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{A8BFFDDB-8C38-4828-A294-CD560FB7AFD1}];%1' +
'                                                                DepartmentCategory=Lists }%1' +
'    { MenuItem       ;[{A8BFFDDB-8C38-4828-A294-CD560FB7AFD1}] ;Name=Journals;%1' +
'                                                                CaptionML=ENU=Sales Journals;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=253;%1' +
'                                                                ParentNodeID=[{C87075E0-8655-4172-A582-517A26D81202}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{193FC894-8AB5-4ABC-9B1D-86EE7FDE4599}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuItem       ;[{41624E79-A68C-402B-ABEA-385315CC87CE}] ;Name=Invoices;%1' +
'                                                                CaptionML=ENU=Sales Invoices;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=9301;%1' +
'                                                                ParentNodeID=[{C87075E0-8655-4172-A582-517A26D81202}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{577ECB93-B7CB-4C3E-B53A-1A14D99F359E}];%1' +
'                                                                DepartmentCategory=Lists }%1' +
'    { MenuItem       ;[{577ECB93-B7CB-4C3E-B53A-1A14D99F359E}] ;Name=Credit Memos;%1' +
'                                                                CaptionML=ENU=Sales Credit Memos;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=9302;%1' +
'                                                                ParentNodeID=[{C87075E0-8655-4172-A582-517A26D81202}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{C0C64A67-50E5-45F0-AAC6-4C01D083C46E}];%1' +
'                                                                DepartmentCategory=Lists }%1' +
'    { MenuItem       ;[{193FC894-8AB5-4ABC-9B1D-86EE7FDE4599}] ;Name=Cash Receipt Journal;%1' +
'                                                                CaptionML=ENU=Cash Receipt Journals;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=255;%1' +
'                                                                ParentNodeID=[{C87075E0-8655-4172-A582-517A26D81202}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{41624E79-A68C-402B-ABEA-385315CC87CE}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuItem       ;[{FB11285D-A438-47B9-B2EC-097994AD1E4B}] ;Name=Combined Shipments;%1' +
'                                                                CaptionML=ENU=Combine Shipments...;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=295;%1' +
'                                                                ParentNodeID=[{C87075E0-8655-4172-A582-517A26D81202}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{19E24728-F24C-492E-B52F-BA07CCD52896}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuItem       ;[{19E24728-F24C-492E-B52F-BA07CCD52896}] ;Name=Combined Return Receipts;%1' +
'                                                                CaptionML=ENU=Combine Return Receipts...;%1' +
'                                                                ApplicationArea=#SalesReturnOrder,#PurchReturnOrder;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=6653;%1' +
'                                                                ParentNodeID=[{C87075E0-8655-4172-A582-517A26D81202}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{AD237163-4425-48C1-8D7E-EBE26883E8C6}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuItem       ;[{931749E6-5392-435B-8D7C-42E6B06CDCAB}] ;Name=Recurring Journals;%1' +
'                                                                CaptionML=ENU=Recurring General Journals;%1' +
'                                                                ApplicationArea=#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=283;%1' +
'                                                                ParentNodeID=[{AAC6EA53-DA53-4571-AE2A-455DFA65F7B9}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{EBB08356-7E15-4287-996C-AC3A98B25902}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuItem       ;[{EBB08356-7E15-4287-996C-AC3A98B25902}] ;Name=Reminders;%1' +
'                                                                CaptionML=ENU=Reminders;%1' +
'                                                                ApplicationArea=#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=436;%1' +
'                                                                ParentNodeID=[{AAC6EA53-DA53-4571-AE2A-455DFA65F7B9}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{3C971994-5745-4A4D-84CA-194CB47F06AE}];%1' +
'                                                                DepartmentCategory=Lists }%1' +
'    { MenuItem       ;[{3C971994-5745-4A4D-84CA-194CB47F06AE}] ;Name=Issued Reminders;%1' +
'                                                                CaptionML=ENU=Issued Reminders;%1' +
'                                                                ApplicationArea=#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=440;%1' +
'                                                                ParentNodeID=[{AAC6EA53-DA53-4571-AE2A-455DFA65F7B9}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{9A9874EC-70D9-4AD2-9187-D14B00271BFA}];%1' +
'                                                                DepartmentCategory=Lists }%1' +
'    { MenuItem       ;[{9A9874EC-70D9-4AD2-9187-D14B00271BFA}] ;Name=Finance Charge Memos;%1' +
'                                                                CaptionML=ENU=Finance Charge Memos;%1' +
'                                                                ApplicationArea=#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=448;%1' +
'                                                                ParentNodeID=[{AAC6EA53-DA53-4571-AE2A-455DFA65F7B9}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{5F852A6F-94B5-4866-9CA1-495A4A873A94}];%1' +
'                                                                DepartmentCategory=Lists }%1' +
'    { MenuItem       ;[{5F852A6F-94B5-4866-9CA1-495A4A873A94}] ;Name=Issued Finance Charge Memos;%1' +
'                                                                CaptionML=ENU=Issued Finance Charge Memos;%1' +
'                                                                ApplicationArea=#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=452;%1' +
'                                                                ParentNodeID=[{AAC6EA53-DA53-4571-AE2A-455DFA65F7B9}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{00000000-0000-0000-0000-000000000000}];%1' +
'                                                                DepartmentCategory=Lists }%1' +
'    { MenuGroup      ;[{6938AB07-2029-49F6-8871-C152729F1F0C}] ;Name=Reports;%1' +
'                                                                CaptionML=ENU=Reports;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{C87075E0-8655-4172-A582-517A26D81202}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{A4CE3FA9-D036-46EE-9C67-EAED7B525716}];%1' +
'                                                                FirstChild=[{2A773400-5B7E-4CCF-A23B-A13E2CEECCF6}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuItem       ;[{C87D13F9-FA59-4079-814A-E8B93BC8BA77}] ;Name=Customer Detailed Aging;%1' +
'                                                                CaptionML=ENU=Customer Detailed Aging;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=106;%1' +
'                                                                ParentNodeID=[{6938AB07-2029-49F6-8871-C152729F1F0C}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{B6AE34D2-AD92-4A13-9DB4-ECA015B016DB}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{C0ABA03D-19BF-4D36-9466-7866401C8571}] ;Name=Customer Register;%1' +
'                                                                CaptionML=ENU=Customer Register;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=103;%1' +
'                                                                ParentNodeID=[{6938AB07-2029-49F6-8871-C152729F1F0C}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{841D7652-CBCB-4C41-9132-413A48DB6011}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{92DD236B-4169-4629-BA0E-D5419D4C5D56}] ;Name=Customer - Balance to Date;%1' +
'                                                                CaptionML=ENU=Customer - Balance to Date;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=121;%1' +
'                                                                ParentNodeID=[{6938AB07-2029-49F6-8871-C152729F1F0C}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{9E7F3F3E-4A53-4F8E-8215-4DA279E1D14F}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{11724FF4-8569-4D68-ACB4-4352370E1A6F}] ;Name=Customer - Detail Trial Bal.;%1' +
'                                                                CaptionML=ENU=Customer - Detail Trial Bal.;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=104;%1' +
'                                                                ParentNodeID=[{6938AB07-2029-49F6-8871-C152729F1F0C}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{6102F544-63A7-46FE-8671-3AAA0998A17E}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{6102F544-63A7-46FE-8671-3AAA0998A17E}] ;Name=Customer - List;%1' +
'                                                                CaptionML=ENU=Customer - List;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=101;%1' +
'                                                                ParentNodeID=[{6938AB07-2029-49F6-8871-C152729F1F0C}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{C0ABA03D-19BF-4D36-9466-7866401C8571}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{2A773400-5B7E-4CCF-A23B-A13E2CEECCF6}] ;Name=Customer - Summary Aging;%1' +
'                                                                CaptionML=ENU=Customer - Summary Aging;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=105;%1' +
'                                                                ParentNodeID=[{6938AB07-2029-49F6-8871-C152729F1F0C}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{A1B659AC-20CE-4605-A413-F989EA34AFD8}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{A1B659AC-20CE-4605-A413-F989EA34AFD8}] ;Name=Customer - Summary Aging Simp.;%1' +
'                                                                CaptionML=ENU=Customer - Summary Aging Simp.;%1' +
'                                                                ApplicationArea=#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=109;%1' +
'                                                                ParentNodeID=[{6938AB07-2029-49F6-8871-C152729F1F0C}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{C87D13F9-FA59-4079-814A-E8B93BC8BA77}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuGroup      ;[{FFA5A70C-3D43-45D8-8349-1D1E7337840D}] ;Name=Setup;%1' +
'                                                                CaptionML=ENU=Setup;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{C87075E0-8655-4172-A582-517A26D81202}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{1609175E-A52D-49BA-9001-2F3167107117}];%1' +
'                                                                FirstChild=[{9B07D75D-1017-407E-B433-38458A0E485A}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuGroup      ;[{5D5A3EDE-B00E-4220-9494-0E8829F8E741}] ;Name=Payables;%1' +
'                                                                CaptionML=ENU=Payables;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{43DB87D5-0C48-4028-9751-F98FA53E70FF}];%1' +
'                                                                FirstChild=[{3E668AEF-551C-4A0F-8A45-370E4851815B}] }%1' +
'    { MenuItem       ;[{3E668AEF-551C-4A0F-8A45-370E4851815B}] ;Name=Vendors;%1' +
'                                                                CaptionML=ENU=Vendors;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=27;%1' +
'                                                                ParentNodeID=[{5D5A3EDE-B00E-4220-9494-0E8829F8E741}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{D821E283-6DE3-4F7E-9252-58A842CBEC4D}];%1' +
'                                                                DepartmentCategory=Lists }%1' +
'    { MenuItem       ;[{D821E283-6DE3-4F7E-9252-58A842CBEC4D}] ;Name=Purchase Journals;%1' +
'                                                                CaptionML=ENU=Purchase Journals;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=254;%1' +
'                                                                ParentNodeID=[{5D5A3EDE-B00E-4220-9494-0E8829F8E741}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{24EDF8E3-2B92-4F03-8E16-27AE548E7AAA}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuItem       ;[{24EDF8E3-2B92-4F03-8E16-27AE548E7AAA}] ;Name=Payment Journals;%1' +
'                                                                CaptionML=ENU=Payment Journals;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=256;%1' +
'                                                                ParentNodeID=[{5D5A3EDE-B00E-4220-9494-0E8829F8E741}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{C1EFB6B8-F488-4762-BB5A-3AA96BCCAF34}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuItem       ;[{C1EFB6B8-F488-4762-BB5A-3AA96BCCAF34}] ;Name=Invoices;%1' +
'                                                                CaptionML=ENU=Purchase Invoices;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=9308;%1' +
'                                                                ParentNodeID=[{5D5A3EDE-B00E-4220-9494-0E8829F8E741}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{14CEEEBE-A851-4C42-B772-B9957A655AB0}];%1' +
'                                                                DepartmentCategory=Lists }%1' +
'    { MenuItem       ;[{14CEEEBE-A851-4C42-B772-B9957A655AB0}] ;Name=Credit Memos;%1' +
'                                                                CaptionML=ENU=Purchase Credit Memos;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=9309;%1' +
'                                                                ParentNodeID=[{5D5A3EDE-B00E-4220-9494-0E8829F8E741}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{04B6AE2F-7C4F-420D-B81C-933029F70D1B}];%1' +
'                                                                DepartmentCategory=Lists }%1' +
'    { MenuItem       ;[{19B2C8C3-B752-4809-8625-527B7F59D8B2}] ;Name=Recurring Journals;%1' +
'                                                                CaptionML=ENU=Recurring General Journals;%1' +
'                                                                ApplicationArea=#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=283;%1' +
'                                                                ParentNodeID=[{831F6BAC-BC3F-4C93-B9A1-0C2E45ABEFC4}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{00000000-0000-0000-0000-000000000000}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuGroup      ;[{51060E6F-D188-4B08-B76E-B3F17B5E8BE2}] ;Name=Reports;%1' +
'                                                                CaptionML=ENU=Reports;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{5D5A3EDE-B00E-4220-9494-0E8829F8E741}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{82509CA3-7511-49B2-9355-561F04AA0C4D}];%1' +
'                                                                FirstChild=[{262A8446-6352-4863-9464-2DBC97DFC95A}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuItem       ;[{9061CEBF-839F-4E94-9D12-E64B16EF80CA}] ;Name=Aged Accounts Payable;%1' +
'                                                                CaptionML=ENU=Aged Accounts Payable;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=322;%1' +
'                                                                ParentNodeID=[{51060E6F-D188-4B08-B76E-B3F17B5E8BE2}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{BD788D4B-38C4-4B6F-A28E-857D7386EF77}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{B44C173B-3D6F-47E0-A9C8-26CA047570F0}] ;Name=Payments on Hold;%1' +
'                                                                CaptionML=ENU=Payments on Hold;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=319;%1' +
'                                                                ParentNodeID=[{51060E6F-D188-4B08-B76E-B3F17B5E8BE2}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{55BECDEA-47C1-45A4-A446-B3476D73A65F}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{55BECDEA-47C1-45A4-A446-B3476D73A65F}] ;Name=Purchase Statistics;%1' +
'                                                                CaptionML=ENU=Purchase Statistics;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=312;%1' +
'                                                                ParentNodeID=[{51060E6F-D188-4B08-B76E-B3F17B5E8BE2}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{1C759FED-A746-42DA-8AC3-38CE6B251E10}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{40B91345-3EDA-486C-8D5D-84BE161E0642}] ;Name=Vendor Item Catalog;%1' +
'                                                                CaptionML=ENU=Vendor Item Catalog;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=320;%1' +
'                                                                ParentNodeID=[{51060E6F-D188-4B08-B76E-B3F17B5E8BE2}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{00000000-0000-0000-0000-000000000000}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{FDD7DB98-647C-4CBD-AA83-2AD62F7206FF}] ;Name=Vendor Register;%1' +
'                                                                CaptionML=ENU=Vendor Register;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=303;%1' +
'                                                                ParentNodeID=[{51060E6F-D188-4B08-B76E-B3F17B5E8BE2}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{4E854707-41F4-4F5C-950D-E775EA2EC9CB}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{BD788D4B-38C4-4B6F-A28E-857D7386EF77}] ;Name=Vendor - Balance to Date;%1' +
'                                                                CaptionML=ENU=Vendor - Balance to Date;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=321;%1' +
'                                                                ParentNodeID=[{51060E6F-D188-4B08-B76E-B3F17B5E8BE2}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{4044BAFF-74A8-4A3F-BA42-E67A31D4A00F}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{1B9CF16D-6590-4379-8113-46E102204104}] ;Name=Vendor - Detail Trial Balance;%1' +
'                                                                CaptionML=ENU=Vendor - Detail Trial Balance;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=304;%1' +
'                                                                ParentNodeID=[{51060E6F-D188-4B08-B76E-B3F17B5E8BE2}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{9B983E95-542A-4650-A030-50A450A37781}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{4EEBE5A0-E47B-4848-B9B8-354FC6098180}] ;Name=Vendor - Labels;%1' +
'                                                                CaptionML=ENU=Vendor - Labels;%1' +
'                                                                ApplicationArea=#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=310;%1' +
'                                                                ParentNodeID=[{51060E6F-D188-4B08-B76E-B3F17B5E8BE2}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{B44C173B-3D6F-47E0-A9C8-26CA047570F0}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{9B983E95-542A-4650-A030-50A450A37781}] ;Name=Vendor - List;%1' +
'                                                                CaptionML=ENU=Vendor - List;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=301;%1' +
'                                                                ParentNodeID=[{51060E6F-D188-4B08-B76E-B3F17B5E8BE2}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{FDD7DB98-647C-4CBD-AA83-2AD62F7206FF}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{CFAF4892-5E14-4132-9033-58D68AEA890D}] ;Name=Vendor - Order Detail;%1' +
'                                                                CaptionML=ENU=Vendor - Order Detail;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=308;%1' +
'                                                                ParentNodeID=[{51060E6F-D188-4B08-B76E-B3F17B5E8BE2}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{8B146B1F-CAE4-44A2-B490-FFAA81EA8C96}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{4E854707-41F4-4F5C-950D-E775EA2EC9CB}] ;Name=Vendor - Order Summary;%1' +
'                                                                CaptionML=ENU=Vendor - Order Summary;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=307;%1' +
'                                                                ParentNodeID=[{51060E6F-D188-4B08-B76E-B3F17B5E8BE2}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{CFAF4892-5E14-4132-9033-58D68AEA890D}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{872E91B1-9892-4ADD-8D77-4324D9F598B0}] ;Name=Vendor - Purchase List;%1' +
'                                                                CaptionML=ENU=Vendor - Purchase List;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=309;%1' +
'                                                                ParentNodeID=[{51060E6F-D188-4B08-B76E-B3F17B5E8BE2}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{4EEBE5A0-E47B-4848-B9B8-354FC6098180}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{262A8446-6352-4863-9464-2DBC97DFC95A}] ;Name=Vendor - Summary Aging;%1' +
'                                                                CaptionML=ENU=Vendor - Summary Aging;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=305;%1' +
'                                                                ParentNodeID=[{51060E6F-D188-4B08-B76E-B3F17B5E8BE2}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{9061CEBF-839F-4E94-9D12-E64B16EF80CA}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{8B146B1F-CAE4-44A2-B490-FFAA81EA8C96}] ;Name=Vendor - Top 10 List;%1' +
'                                                                CaptionML=ENU=Vendor - Top 10 List;%1' +
'                                                                ApplicationArea=#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=311;%1' +
'                                                                ParentNodeID=[{51060E6F-D188-4B08-B76E-B3F17B5E8BE2}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{872E91B1-9892-4ADD-8D77-4324D9F598B0}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{4044BAFF-74A8-4A3F-BA42-E67A31D4A00F}] ;Name=Vendor - Trial Balance;%1' +
'                                                                CaptionML=ENU=Vendor - Trial Balance;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=329;%1' +
'                                                                ParentNodeID=[{51060E6F-D188-4B08-B76E-B3F17B5E8BE2}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{1B9CF16D-6590-4379-8113-46E102204104}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{1C759FED-A746-42DA-8AC3-38CE6B251E10}] ;Name=Vendor/Item Purchases;%1' +
'                                                                CaptionML=ENU=Vendor/Item Purchases;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=313;%1' +
'                                                                ParentNodeID=[{51060E6F-D188-4B08-B76E-B3F17B5E8BE2}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{40B91345-3EDA-486C-8D5D-84BE161E0642}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuGroup      ;[{7BB9FB2F-E3C6-474E-95C6-0405A58586D7}] ;Name=Setup;%1' +
'                                                                CaptionML=ENU=Setup;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{5D5A3EDE-B00E-4220-9494-0E8829F8E741}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{8B799188-B879-45B7-93FD-33101FE35C0D}];%1' +
'                                                                FirstChild=[{6587954F-15E9-462C-BF64-02302395A24E}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuGroup      ;[{43DB87D5-0C48-4028-9751-F98FA53E70FF}] ;Name=Fixed Assets;%1' +
'                                                                CaptionML=ENU=Fixed Assets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{244857E6-56D1-4815-827A-C26C77208A74}];%1' +
'                                                                FirstChild=[{CCE56A3B-BBEF-4EF3-A57F-4B79BD1D3607}] }%1' +
'    { MenuItem       ;[{CCE56A3B-BBEF-4EF3-A57F-4B79BD1D3607}] ;Name=Fixed Assets;%1' +
'                                                                CaptionML=ENU=Fixed Assets;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=5601;%1' +
'                                                                ParentNodeID=[{43DB87D5-0C48-4028-9751-F98FA53E70FF}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{5F25A57A-9568-4EB8-96D4-D773A798A076}];%1' +
'                                                                DepartmentCategory=Lists }%1' +
'    { MenuItem       ;[{5F25A57A-9568-4EB8-96D4-D773A798A076}] ;Name=Insurance;%1' +
'                                                                CaptionML=ENU=Insurance;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=5645;%1' +
'                                                                ParentNodeID=[{43DB87D5-0C48-4028-9751-F98FA53E70FF}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{169549B7-43C3-4E66-88C4-D331C148C3BA}];%1' +
'                                                                DepartmentCategory=Lists }%1' +
'    { MenuItem       ;[{169549B7-43C3-4E66-88C4-D331C148C3BA}] ;Name=G/L Journals;%1' +
'                                                                CaptionML=ENU=FA G/L Journals;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=5628;%1' +
'                                                                ParentNodeID=[{43DB87D5-0C48-4028-9751-F98FA53E70FF}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{73582F1C-296D-49BE-B072-70FA6488FE6E}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuItem       ;[{73582F1C-296D-49BE-B072-70FA6488FE6E}] ;Name=FA Journals;%1' +
'                                                                CaptionML=ENU=FA Journals;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=5629;%1' +
'                                                                ParentNodeID=[{43DB87D5-0C48-4028-9751-F98FA53E70FF}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{96BEE2FC-398F-4643-80F3-FA304A8E2C35}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuItem       ;[{96BEE2FC-398F-4643-80F3-FA304A8E2C35}] ;Name=FA Reclass. Journal;%1' +
'                                                                CaptionML=ENU=FA Reclassification Journals;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=5636;%1' +
'                                                                ParentNodeID=[{43DB87D5-0C48-4028-9751-F98FA53E70FF}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{8B3EA73F-7E7A-473A-840F-3AABB0AA17EB}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuItem       ;[{8B3EA73F-7E7A-473A-840F-3AABB0AA17EB}] ;Name=Insurance Journals;%1' +
'                                                                CaptionML=ENU=Insurance Journals;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=5651;%1' +
'                                                                ParentNodeID=[{43DB87D5-0C48-4028-9751-F98FA53E70FF}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{14700123-73B0-4426-8F33-3201D62A92D8}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuGroup      ;[{0EC1BB36-ED05-4801-9DF2-22AF9CD50976}] ;Name=Periodic Activities;%1' +
'                                                                CaptionML=ENU=Periodic Activities;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{43DB87D5-0C48-4028-9751-F98FA53E70FF}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{4CCE63CA-CAE2-4121-A67D-65D0C653F809}];%1' +
'                                                                FirstChild=[{B26F13F1-DA53-4243-8D7E-7E183AB53C03}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuItem       ;[{B26F13F1-DA53-4243-8D7E-7E183AB53C03}] ;Name=Recurring General Journals;%1' +
'                                                                CaptionML=ENU=Recurring General Journals;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=283;%1' +
'                                                                ParentNodeID=[{0EC1BB36-ED05-4801-9DF2-22AF9CD50976}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{D71EA078-379E-407C-8A1E-A035BDFAA612}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuItem       ;[{D71EA078-379E-407C-8A1E-A035BDFAA612}] ;Name=Recurring Fixed Asset Journals;%1' +
'                                                                CaptionML=ENU=Recurring Fixed Asset Journals;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=5634;%1' +
'                                                                ParentNodeID=[{0EC1BB36-ED05-4801-9DF2-22AF9CD50976}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{21DD74DD-0CCA-457C-8781-8B7D187C5FE8}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuItem       ;[{21DD74DD-0CCA-457C-8781-8B7D187C5FE8}] ;Name=Calculate Depreciation...;%1' +
'                                                                CaptionML=ENU=Calculate Depreciation...;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=5692;%1' +
'                                                                ParentNodeID=[{0EC1BB36-ED05-4801-9DF2-22AF9CD50976}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{FE925BEA-86CF-40D6-9A0A-5B8278C925CB}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuGroup      ;[{FE925BEA-86CF-40D6-9A0A-5B8278C925CB}] ;Name=Index;%1' +
'                                                                CaptionML=ENU=Index;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{0EC1BB36-ED05-4801-9DF2-22AF9CD50976}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{00000000-0000-0000-0000-000000000000}];%1' +
'                                                                FirstChild=[{3454FE69-B63E-4608-B43B-11E6BAB34FBE}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuItem       ;[{3454FE69-B63E-4608-B43B-11E6BAB34FBE}] ;Name=Fixed Assets...;%1' +
'                                                                CaptionML=ENU=Index Fixed Assets...;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=5690;%1' +
'                                                                ParentNodeID=[{FE925BEA-86CF-40D6-9A0A-5B8278C925CB}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{6B6A888E-B2AC-4A6A-B5A1-8FA35D147FF7}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuItem       ;[{6B6A888E-B2AC-4A6A-B5A1-8FA35D147FF7}] ;Name=Insurance...;%1' +
'                                                                CaptionML=ENU=Index Insurance...;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=5691;%1' +
'                                                                ParentNodeID=[{FE925BEA-86CF-40D6-9A0A-5B8278C925CB}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{00000000-0000-0000-0000-000000000000}];%1' +
'                                                                DepartmentCategory=Tasks }%1' +
'    { MenuGroup      ;[{14700123-73B0-4426-8F33-3201D62A92D8}] ;Name=Reports;%1' +
'                                                                CaptionML=ENU=Reports;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{43DB87D5-0C48-4028-9751-F98FA53E70FF}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{F26C6543-089D-4C9C-97AA-72FFD914BB5E}];%1' +
'                                                                FirstChild=[{CCE353D2-F1CE-445D-9A57-D54F71F0FC57}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuGroup      ;[{CCE353D2-F1CE-445D-9A57-D54F71F0FC57}] ;Name=Fixed Assets;%1' +
'                                                                CaptionML=ENU=Fixed Assets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{14700123-73B0-4426-8F33-3201D62A92D8}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{0F5588BC-0266-43DB-BCF4-5CA848BD22C5}];%1' +
'                                                                FirstChild=[{3F0086CD-9756-452B-826E-8DADE73C6287}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuItem       ;[{3F0086CD-9756-452B-826E-8DADE73C6287}] ;Name=Posting Group - Net Change;%1' +
'                                                                CaptionML=ENU=FA Posting Group - Net Change;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=5611;%1' +
'                                                                ParentNodeID=[{CCE353D2-F1CE-445D-9A57-D54F71F0FC57}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{7A83BEA9-EA1A-465B-A8B2-4091C37E4F65}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{7A83BEA9-EA1A-465B-A8B2-4091C37E4F65}] ;Name=Register;%1' +
'                                                                CaptionML=ENU=FA Register;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=5603;%1' +
'                                                                ParentNodeID=[{CCE353D2-F1CE-445D-9A57-D54F71F0FC57}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{17EF4284-B0AC-4F51-AF10-A1B8F564DBF1}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{17EF4284-B0AC-4F51-AF10-A1B8F564DBF1}] ;Name=Acquisition List;%1' +
'                                                                CaptionML=ENU=FA Acquisition List;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=5608;%1' +
'                                                                ParentNodeID=[{CCE353D2-F1CE-445D-9A57-D54F71F0FC57}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{36BBB91C-9971-4BE5-B7A2-BDCBDA0C2371}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{36BBB91C-9971-4BE5-B7A2-BDCBDA0C2371}] ;Name=Analysis;%1' +
'                                                                CaptionML=ENU=FA Analysis;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=5600;%1' +
'                                                                ParentNodeID=[{CCE353D2-F1CE-445D-9A57-D54F71F0FC57}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{7A5D7F1E-99D2-415C-964E-5DF4A2FFA84F}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{7A5D7F1E-99D2-415C-964E-5DF4A2FFA84F}] ;Name=Book Value 01;%1' +
'                                                                CaptionML=ENU=FA Book Value 01;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=5605;%1' +
'                                                                ParentNodeID=[{CCE353D2-F1CE-445D-9A57-D54F71F0FC57}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{2AE27377-AB66-471F-8A76-73781D461FF9}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{2AE27377-AB66-471F-8A76-73781D461FF9}] ;Name=Book Value 02;%1' +
'                                                                CaptionML=ENU=FA Book Value 02;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=5606;%1' +
'                                                                ParentNodeID=[{CCE353D2-F1CE-445D-9A57-D54F71F0FC57}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{9958A52F-0E8C-483D-8361-F504CB3FB4D3}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{9958A52F-0E8C-483D-8361-F504CB3FB4D3}] ;Name=Details;%1' +
'                                                                CaptionML=ENU=FA Details;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=5604;%1' +
'                                                                ParentNodeID=[{CCE353D2-F1CE-445D-9A57-D54F71F0FC57}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{D3E334A9-0885-4B3F-9A8D-C1A3FF4A8BAD}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{D3E334A9-0885-4B3F-9A8D-C1A3FF4A8BAD}] ;Name=G/L Analysis;%1' +
'                                                                CaptionML=ENU=FA G/L Analysis;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=5610;%1' +
'                                                                ParentNodeID=[{CCE353D2-F1CE-445D-9A57-D54F71F0FC57}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{1D305E4E-51BF-4EB7-B4F1-1C5BF9F6BBEB}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{1D305E4E-51BF-4EB7-B4F1-1C5BF9F6BBEB}] ;Name=List;%1' +
'                                                                CaptionML=ENU=FA List;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=5601;%1' +
'                                                                ParentNodeID=[{CCE353D2-F1CE-445D-9A57-D54F71F0FC57}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{79B67BCD-B44D-4364-A441-099CFEBC274B}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{79B67BCD-B44D-4364-A441-099CFEBC274B}] ;Name=Projected Value;%1' +
'                                                                CaptionML=ENU=FA Projected Value;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=5607;%1' +
'                                                                ParentNodeID=[{CCE353D2-F1CE-445D-9A57-D54F71F0FC57}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{00000000-0000-0000-0000-000000000000}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuGroup      ;[{0F5588BC-0266-43DB-BCF4-5CA848BD22C5}] ;Name=Insurance;%1' +
'                                                                CaptionML=ENU=Insurance;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{14700123-73B0-4426-8F33-3201D62A92D8}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{D4628435-A4F0-42B6-B410-2397E41C1FC6}];%1' +
'                                                                FirstChild=[{55FF8CC5-02C7-4389-84E2-885A55853E1D}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuItem       ;[{55FF8CC5-02C7-4389-84E2-885A55853E1D}] ;Name=Uninsured FAs;%1' +
'                                                                CaptionML=ENU=Uninsured FAs;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=5626;%1' +
'                                                                ParentNodeID=[{0F5588BC-0266-43DB-BCF4-5CA848BD22C5}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{1EDEF3C6-A4D8-4397-94C1-D0FD1032A2FD}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{1EDEF3C6-A4D8-4397-94C1-D0FD1032A2FD}] ;Name=Register;%1' +
'                                                                CaptionML=ENU=Insurance Register;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=5623;%1' +
'                                                                ParentNodeID=[{0F5588BC-0266-43DB-BCF4-5CA848BD22C5}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{1361B346-457E-49CF-A53B-4391EACF50FE}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{1361B346-457E-49CF-A53B-4391EACF50FE}] ;Name=Analysis;%1' +
'                                                                CaptionML=ENU=Insurance Analysis;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=5620;%1' +
'                                                                ParentNodeID=[{0F5588BC-0266-43DB-BCF4-5CA848BD22C5}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{127B03E3-7842-4CE0-A299-CD4BC73B6922}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{127B03E3-7842-4CE0-A299-CD4BC73B6922}] ;Name=Coverage Details;%1' +
'                                                                CaptionML=ENU=Insurance Coverage Details;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=5624;%1' +
'                                                                ParentNodeID=[{0F5588BC-0266-43DB-BCF4-5CA848BD22C5}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{BB8DF68C-31B0-4FC5-9B08-0E5833648CE6}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{BB8DF68C-31B0-4FC5-9B08-0E5833648CE6}] ;Name=List;%1' +
'                                                                CaptionML=ENU=Insurance List;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=5621;%1' +
'                                                                ParentNodeID=[{0F5588BC-0266-43DB-BCF4-5CA848BD22C5}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{AAD92B93-8CAE-454E-9EBA-CDA1BB51D057}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{AAD92B93-8CAE-454E-9EBA-CDA1BB51D057}] ;Name=Tot. Value Insured;%1' +
'                                                                CaptionML=ENU=FA Total Value Insured;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=5625;%1' +
'                                                                ParentNodeID=[{0F5588BC-0266-43DB-BCF4-5CA848BD22C5}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{00000000-0000-0000-0000-000000000000}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuGroup      ;[{D4628435-A4F0-42B6-B410-2397E41C1FC6}] ;Name=Maintenance;%1' +
'                                                                CaptionML=ENU=Maintenance;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{14700123-73B0-4426-8F33-3201D62A92D8}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{00000000-0000-0000-0000-000000000000}];%1' +
'                                                                FirstChild=[{C27F2860-C95E-445A-B712-930810E25618}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuItem       ;[{C27F2860-C95E-445A-B712-930810E25618}] ;Name=Register;%1' +
'                                                                CaptionML=ENU=Maintenance Register;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=5633;%1' +
'                                                                ParentNodeID=[{D4628435-A4F0-42B6-B410-2397E41C1FC6}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{A139B486-36E9-48B9-AFC7-516CA0EAFFF5}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{A139B486-36E9-48B9-AFC7-516CA0EAFFF5}] ;Name=Analysis;%1' +
'                                                                CaptionML=ENU=Maintenance Analysis;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=5630;%1' +
'                                                                ParentNodeID=[{D4628435-A4F0-42B6-B410-2397E41C1FC6}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{A7120D79-B506-42F3-9CDB-AEA3A73CB4EB}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{A7120D79-B506-42F3-9CDB-AEA3A73CB4EB}] ;Name=Details;%1' +
'                                                                CaptionML=ENU=Maintenance Details;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=5634;%1' +
'                                                                ParentNodeID=[{D4628435-A4F0-42B6-B410-2397E41C1FC6}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{7A5A1E4B-C407-4D7C-8ABB-519D2CB93641}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuItem       ;[{7A5A1E4B-C407-4D7C-8ABB-519D2CB93641}] ;Name=Next Service;%1' +
'                                                                CaptionML=ENU=Maintenance Next Service;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Report;%1' +
'                                                                RunObjectID=5635;%1' +
'                                                                ParentNodeID=[{D4628435-A4F0-42B6-B410-2397E41C1FC6}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{00000000-0000-0000-0000-000000000000}];%1' +
'                                                                DepartmentCategory=Reports and Analysis }%1' +
'    { MenuGroup      ;[{4CCE63CA-CAE2-4121-A67D-65D0C653F809}] ;Name=Setup;%1' +
'                                                                CaptionML=ENU=Setup;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{43DB87D5-0C48-4028-9751-F98FA53E70FF}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{0EC1BB36-ED05-4801-9DF2-22AF9CD50976}];%1' +
'                                                                FirstChild=[{5A4FA9A7-5572-47E4-B32C-652A22DEC3DC}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuItem       ;[{5A4FA9A7-5572-47E4-B32C-652A22DEC3DC}] ;Name=FA Setup;%1' +
'                                                                CaptionML=ENU=FA Setup;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=5607;%1' +
'                                                                ParentNodeID=[{4CCE63CA-CAE2-4121-A67D-65D0C653F809}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{6E9EA8E4-D6AC-43A8-8404-7C775765B508}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{6E9EA8E4-D6AC-43A8-8404-7C775765B508}] ;Name=FA Classes;%1' +
'                                                                CaptionML=ENU=FA Classes;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=5615;%1' +
'                                                                ParentNodeID=[{4CCE63CA-CAE2-4121-A67D-65D0C653F809}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{8A0ACD32-79AC-47D5-9625-7BB0FF7A731E}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{8A0ACD32-79AC-47D5-9625-7BB0FF7A731E}] ;Name=FA Subclasses;%1' +
'                                                                CaptionML=ENU=FA Subclasses;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=5616;%1' +
'                                                                ParentNodeID=[{4CCE63CA-CAE2-4121-A67D-65D0C653F809}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{9A0F8D34-C5B5-4DB1-BBA1-A63A89F2CCDC}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{9A0F8D34-C5B5-4DB1-BBA1-A63A89F2CCDC}] ;Name=FA Locations;%1' +
'                                                                CaptionML=ENU=FA Locations;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=5617;%1' +
'                                                                ParentNodeID=[{4CCE63CA-CAE2-4121-A67D-65D0C653F809}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{A85C4199-F2ED-43E7-B6D0-58ECFEED643D}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{A85C4199-F2ED-43E7-B6D0-58ECFEED643D}] ;Name=Insurance Types;%1' +
'                                                                CaptionML=ENU=Insurance Types;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=5648;%1' +
'                                                                ParentNodeID=[{4CCE63CA-CAE2-4121-A67D-65D0C653F809}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{EEFB29FE-50E5-431E-B647-2D69976F846D}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{EEFB29FE-50E5-431E-B647-2D69976F846D}] ;Name=Maintenance;%1' +
'                                                                CaptionML=ENU=Maintenance;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=5642;%1' +
'                                                                ParentNodeID=[{4CCE63CA-CAE2-4121-A67D-65D0C653F809}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{76DD2E8F-1642-4999-BA43-B9AEEDDF7DBD}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{76DD2E8F-1642-4999-BA43-B9AEEDDF7DBD}] ;Name=Depreciation Books;%1' +
'                                                                CaptionML=ENU=Depreciation Books;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=5611;%1' +
'                                                                ParentNodeID=[{4CCE63CA-CAE2-4121-A67D-65D0C653F809}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{35F3F853-B45D-42DC-90D7-494E11CFC420}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{35F3F853-B45D-42DC-90D7-494E11CFC420}] ;Name=Depreciation Tables;%1' +
'                                                                CaptionML=ENU=Depreciation Tables;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=5663;%1' +
'                                                                ParentNodeID=[{4CCE63CA-CAE2-4121-A67D-65D0C653F809}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{91C85ED0-4BB1-4EFD-868A-C8D1E05377B9}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{91C85ED0-4BB1-4EFD-868A-C8D1E05377B9}] ;Name=FA Journal Templates;%1' +
'                                                                CaptionML=ENU=FA Journal Templates;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=5630;%1' +
'                                                                ParentNodeID=[{4CCE63CA-CAE2-4121-A67D-65D0C653F809}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{5EDBAE22-D083-4187-89BE-F8828BCFFBB3}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{5EDBAE22-D083-4187-89BE-F8828BCFFBB3}] ;Name=FA Reclass. Journal Templates;%1' +
'                                                                CaptionML=ENU=FA Reclassification Journal Template;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=5637;%1' +
'                                                                ParentNodeID=[{4CCE63CA-CAE2-4121-A67D-65D0C653F809}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{5E0E6A08-8628-48B3-BA43-442DC11AE6D2}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{5E0E6A08-8628-48B3-BA43-442DC11AE6D2}] ;Name=Insurance Journal Templates;%1' +
'                                                                CaptionML=ENU=Insurance Journal Templates;%1' +
'                                                                ApplicationArea=#FixedAssets;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=5652;%1' +
'                                                                ParentNodeID=[{4CCE63CA-CAE2-4121-A67D-65D0C653F809}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{5A4FA9A7-5572-47E4-B32C-652A22DEC3DC}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuGroup      ;[{DF601C8A-07F7-4841-8929-9F2065BCB302}] ;Name=Setup;%1' +
'                                                                CaptionML=ENU=Setup;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{DFDD9BC0-18E3-45F5-85A3-182B08708B0C}];%1' +
'                                                                FirstChild=[{96B865A0-18AC-4B77-90D2-6F2884C94A84}];%1' +
'                                                                IsDepartmentPage=Yes }%1' +
'    { MenuItem       ;[{1BB06483-AFFD-4750-BF62-3ABA035E11B7}] ;Name=Accounting Periods;%1' +
'                                                                CaptionML=ENU=Accounting Periods;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=100;%1' +
'                                                                ParentNodeID=[{DF601C8A-07F7-4841-8929-9F2065BCB302}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{0A16E319-106A-4A00-91AA-17C79A077A98}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{96B865A0-18AC-4B77-90D2-6F2884C94A84}] ;Name=General Ledger Setup;%1' +
'                                                                CaptionML=ENU=General Ledger Setup;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=118;%1' +
'                                                                ParentNodeID=[{DF601C8A-07F7-4841-8929-9F2065BCB302}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{1BB06483-AFFD-4750-BF62-3ABA035E11B7}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{0A16E319-106A-4A00-91AA-17C79A077A98}] ;Name=No. Series;%1' +
'                                                                CaptionML=ENU=No. Series;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=456;%1' +
'                                                                ParentNodeID=[{DF601C8A-07F7-4841-8929-9F2065BCB302}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{2D044F78-7FD3-480F-A8E9-432CC8C395C7}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{2D044F78-7FD3-480F-A8E9-432CC8C395C7}] ;Name=API Setup;%1' +
'                                                                CaptionML=ENU=API Setup;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=5469;%1' +
'                                                                ParentNodeID=[{DF601C8A-07F7-4841-8929-9F2065BCB302}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{3ECD4538-CF57-4152-ADF1-DF836B2F8DA8}];%1' +
'                                                                DepartmentCategory=Lists }%1' +
'    { MenuGroup      ;[{3ECD4538-CF57-4152-ADF1-DF836B2F8DA8}] ;Name=General Posting Groups;%1' +
'                                                                CaptionML=ENU=Posting Groups;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{DF601C8A-07F7-4841-8929-9F2065BCB302}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{241E33ED-C5BC-45F3-AB11-782C1D2DDC72}];%1' +
'                                                                FirstChild=[{CE0533A6-142B-45BA-9C99-31D61F70A153}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuItem       ;[{2A05325A-2419-4F12-A5B3-0662C3A3B93E}] ;Name=Customer Posting Groups;%1' +
'                                                                CaptionML=ENU=Customer Posting Groups;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=110;%1' +
'                                                                ParentNodeID=[{3ECD4538-CF57-4152-ADF1-DF836B2F8DA8}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{C6B3F79F-C6EE-4FC9-BCB5-4D41807858F0}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{C6B3F79F-C6EE-4FC9-BCB5-4D41807858F0}] ;Name=Vendor Posting Groups;%1' +
'                                                                CaptionML=ENU=Vendor Posting Groups;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=111;%1' +
'                                                                ParentNodeID=[{3ECD4538-CF57-4152-ADF1-DF836B2F8DA8}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{29D169F9-7556-45AA-9BA5-3B5F2EB10A6A}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuGroup      ;[{241E33ED-C5BC-45F3-AB11-782C1D2DDC72}] ;Name=VAT Posting Group;%1' +
'                                                                CaptionML=ENU=VAT Posting Group;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{DF601C8A-07F7-4841-8929-9F2065BCB302}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{EB365C88-ED84-434F-B8D4-BD4FC1A2F60C}];%1' +
'                                                                FirstChild=[{F69A5D62-A1A7-4D11-82AE-8D4DD8CCC9E7}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuItem       ;[{F69A5D62-A1A7-4D11-82AE-8D4DD8CCC9E7}] ;Name=Business Posting Groups;%1' +
'                                                                CaptionML=ENU=VAT Business Posting Groups;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=470;%1' +
'                                                                ParentNodeID=[{241E33ED-C5BC-45F3-AB11-782C1D2DDC72}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{08B750E2-E7F0-4DA2-95B8-6922CF9B96B7}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{08B750E2-E7F0-4DA2-95B8-6922CF9B96B7}] ;Name=Product Posting Groups;%1' +
'                                                                CaptionML=ENU=VAT Product Posting Groups;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=471;%1' +
'                                                                ParentNodeID=[{241E33ED-C5BC-45F3-AB11-782C1D2DDC72}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{2FE815F9-39F5-4175-81AD-635A5313FF6E}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{2FE815F9-39F5-4175-81AD-635A5313FF6E}] ;Name=Posting Setup;%1' +
'                                                                CaptionML=ENU=VAT Posting Setup;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=472;%1' +
'                                                                ParentNodeID=[{241E33ED-C5BC-45F3-AB11-782C1D2DDC72}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{A2E2F2F9-5AB0-4C65-9A60-F9BAE2B24023}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuGroup      ;[{99C6E9F9-FB1A-4196-8E31-8E3FA215BC4A}] ;Name=Trail Codes;%1' +
'                                                                CaptionML=ENU=Trail Codes;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{DF601C8A-07F7-4841-8929-9F2065BCB302}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{6B5CC60D-6E5B-4389-BF5A-AA3E774A24E1}];%1' +
'                                                                FirstChild=[{47B0BEF8-0BA2-44E3-9767-B4325D2C7B49}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuItem       ;[{47B0BEF8-0BA2-44E3-9767-B4325D2C7B49}] ;Name=Source Codes;%1' +
'                                                                CaptionML=ENU=Source Codes;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=257;%1' +
'                                                                ParentNodeID=[{99C6E9F9-FB1A-4196-8E31-8E3FA215BC4A}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{A0B4D5CB-6397-482D-A864-0258FED0198B}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{A0B4D5CB-6397-482D-A864-0258FED0198B}] ;Name=Source Code Setup;%1' +
'                                                                CaptionML=ENU=Source Code Setup;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=279;%1' +
'                                                                ParentNodeID=[{99C6E9F9-FB1A-4196-8E31-8E3FA215BC4A}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{CAE53416-53A5-49D4-95AE-4EE75DAC06E1}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{CAE53416-53A5-49D4-95AE-4EE75DAC06E1}] ;Name=Reason Codes;%1' +
'                                                                CaptionML=ENU=Reason Codes;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=259;%1' +
'                                                                ParentNodeID=[{99C6E9F9-FB1A-4196-8E31-8E3FA215BC4A}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{00000000-0000-0000-0000-000000000000}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuGroup      ;[{6B5CC60D-6E5B-4389-BF5A-AA3E774A24E1}] ;Name=Dimensions;%1' +
'                                                                CaptionML=ENU=Dimensions;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{DF601C8A-07F7-4841-8929-9F2065BCB302}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{57220344-FCD8-4AF1-95DE-E323CBEB0BE1}];%1' +
'                                                                FirstChild=[{35196F3B-D041-459E-B918-D6DFE63A9A5A}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuItem       ;[{35196F3B-D041-459E-B918-D6DFE63A9A5A}] ;Name=Dimensions;%1' +
'                                                                CaptionML=ENU=Dimensions;%1' +
'                                                                ApplicationArea=#Dimensions;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=536;%1' +
'                                                                ParentNodeID=[{6B5CC60D-6E5B-4389-BF5A-AA3E774A24E1}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{C05E6737-020A-46D6-92D5-6321851AEC9B}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{C05E6737-020A-46D6-92D5-6321851AEC9B}] ;Name=Dimension Combinations;%1' +
'                                                                CaptionML=ENU=Dimension Combinations;%1' +
'                                                                ApplicationArea=#Dimensions;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=538;%1' +
'                                                                ParentNodeID=[{6B5CC60D-6E5B-4389-BF5A-AA3E774A24E1}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{52315B18-ADD3-44F8-9EF7-86BE15A08A0F}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{52315B18-ADD3-44F8-9EF7-86BE15A08A0F}] ;Name=Default Dimension Priorities;%1' +
'                                                                CaptionML=ENU=Default Dimension Priorities;%1' +
'                                                                ApplicationArea=#Dimensions;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=543;%1' +
'                                                                ParentNodeID=[{6B5CC60D-6E5B-4389-BF5A-AA3E774A24E1}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{0386DC0F-FA00-4AB5-819C-57F8AEEEC798}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{0386DC0F-FA00-4AB5-819C-57F8AEEEC798}] ;Name=Analysis Views;%1' +
'                                                                CaptionML=ENU=Analysis by Dimensions;%1' +
'                                                                ApplicationArea=#Dimensions;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=556;%1' +
'                                                                ParentNodeID=[{6B5CC60D-6E5B-4389-BF5A-AA3E774A24E1}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{00000000-0000-0000-0000-000000000000}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuGroup      ;[{57220344-FCD8-4AF1-95DE-E323CBEB0BE1}] ;Name=Intercompany;%1' +
'                                                                CaptionML=ENU=Intercompany Postings;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{DF601C8A-07F7-4841-8929-9F2065BCB302}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{FAC2D0C4-099F-4B15-A473-5DBCB2491CB1}];%1' +
'                                                                FirstChild=[{9EC5535A-B0B2-4EE7-9819-53F93FE3A5F4}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuItem       ;[{9EC5535A-B0B2-4EE7-9819-53F93FE3A5F4}] ;Name=Partner Code;%1' +
'                                                                CaptionML=ENU=Intercompany Partners;%1' +
'                                                                ApplicationArea=#Intercompany;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=608;%1' +
'                                                                ParentNodeID=[{57220344-FCD8-4AF1-95DE-E323CBEB0BE1}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{2A840F08-387B-45A6-85FE-8E3A6D352133}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{2A840F08-387B-45A6-85FE-8E3A6D352133}] ;Name=Chart of Accounts;%1' +
'                                                                CaptionML=ENU=Intercompany Chart of Accounts;%1' +
'                                                                ApplicationArea=#Intercompany;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=605;%1' +
'                                                                ParentNodeID=[{57220344-FCD8-4AF1-95DE-E323CBEB0BE1}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{8014D03B-B9CB-4CF6-976B-FFFD4BCAE64C}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuGroup      ;[{FAC2D0C4-099F-4B15-A473-5DBCB2491CB1}] ;Name=Intrastat;%1' +
'                                                                CaptionML=ENU=Intrastat;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{DF601C8A-07F7-4841-8929-9F2065BCB302}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{054DB4DA-3681-4DAA-9F4B-9F470C5F862B}];%1' +
'                                                                FirstChild=[{81019076-E7EE-4F67-A88D-86E4992CE32B}];%1' +
'                                                                IsDepartmentPage=No }%1' +
'    { MenuItem       ;[{81019076-E7EE-4F67-A88D-86E4992CE32B}] ;Name=Tariff Numbers;%1' +
'                                                                CaptionML=ENU=Tariff Numbers;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=310;%1' +
'                                                                ParentNodeID=[{FAC2D0C4-099F-4B15-A473-5DBCB2491CB1}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{F0952F88-9893-47BF-9A4D-D3D12BCEC5E6}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{F0952F88-9893-47BF-9A4D-D3D12BCEC5E6}] ;Name=Transaction Types;%1' +
'                                                                CaptionML=ENU=Transaction Types;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=308;%1' +
'                                                                ParentNodeID=[{FAC2D0C4-099F-4B15-A473-5DBCB2491CB1}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{11A4A720-58D4-439A-AE11-6B35241A3097}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{11A4A720-58D4-439A-AE11-6B35241A3097}] ;Name=Transaction Specifications;%1' +
'                                                                CaptionML=ENU=Transaction Specifications;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=406;%1' +
'                                                                ParentNodeID=[{FAC2D0C4-099F-4B15-A473-5DBCB2491CB1}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{095E15EB-2711-4CA0-8A92-87DC0548C134}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{095E15EB-2711-4CA0-8A92-87DC0548C134}] ;Name=Transport Methods;%1' +
'                                                                CaptionML=ENU=Transport Methods;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=309;%1' +
'                                                                ParentNodeID=[{FAC2D0C4-099F-4B15-A473-5DBCB2491CB1}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{50FBBFD5-EBB9-4E30-B727-F4837B6BF077}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{50FBBFD5-EBB9-4E30-B727-F4837B6BF077}] ;Name=Entry/Exit Points;%1' +
'                                                                CaptionML=ENU=Entry/Exit Points;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=394;%1' +
'                                                                ParentNodeID=[{FAC2D0C4-099F-4B15-A473-5DBCB2491CB1}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{10976FE9-9946-41F7-8004-863534FDA18C}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{10976FE9-9946-41F7-8004-863534FDA18C}] ;Name=Areas;%1' +
'                                                                CaptionML=ENU=Areas;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=405;%1' +
'                                                                ParentNodeID=[{FAC2D0C4-099F-4B15-A473-5DBCB2491CB1}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{C4C18CD4-86BE-4F1C-9C74-251776C94296}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{C4C18CD4-86BE-4F1C-9C74-251776C94296}] ;Name=Intrastat Journal Templates;%1' +
'                                                                CaptionML=ENU=Intrastat Journal Templates;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=325;%1' +
'                                                                ParentNodeID=[{FAC2D0C4-099F-4B15-A473-5DBCB2491CB1}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{5878B73C-53A5-405A-824D-B9283EE6A4B7}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuGroup      ;[{054DB4DA-3681-4DAA-9F4B-9F470C5F862B}] ;Name=General;%1' +
'                                                                CaptionML=ENU=General;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                ParentNodeID=[{DF601C8A-07F7-4841-8929-9F2065BCB302}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{AA7F4475-2640-4AB0-BA61-43E2E46864F8}];%1' +
'                                                                FirstChild=[{E161C386-9104-4563-AAE4-551F3ECCA614}];%1' +
'                                                                IsDepartmentPage=Yes }%1' +
'    { MenuItem       ;[{E161C386-9104-4563-AAE4-551F3ECCA614}] ;Name=Standard Text Codes;%1' +
'                                                                CaptionML=ENU=Standard Text Codes;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=8;%1' +
'                                                                ParentNodeID=[{054DB4DA-3681-4DAA-9F4B-9F470C5F862B}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{66A2F4BA-4533-42EE-85F7-C4E824F064E6}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{66A2F4BA-4533-42EE-85F7-C4E824F064E6}] ;Name=Journal Templates;%1' +
'                                                                CaptionML=ENU=General Journal Templates;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=101;%1' +
'                                                                ParentNodeID=[{054DB4DA-3681-4DAA-9F4B-9F470C5F862B}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{AEEAC300-74ED-404B-AE38-0747908DBE51}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{AEEAC300-74ED-404B-AE38-0747908DBE51}] ;Name=VAT Statement Templates;%1' +
'                                                                CaptionML=ENU=VAT Statement Templates;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=318;%1' +
'                                                                ParentNodeID=[{054DB4DA-3681-4DAA-9F4B-9F470C5F862B}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{788D9877-1CEC-4469-B900-061B0B2B62BC}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{788D9877-1CEC-4469-B900-061B0B2B62BC}] ;Name=Column Layouts;%1' +
'                                                                CaptionML=ENU=Column Layouts;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=489;%1' +
'                                                                ParentNodeID=[{054DB4DA-3681-4DAA-9F4B-9F470C5F862B}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{8FC2B853-B4B4-4AAA-BE9D-025F0F658A5B}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{8FC2B853-B4B4-4AAA-BE9D-025F0F658A5B}] ;Name=Currencies;%1' +
'                                                                CaptionML=ENU=Currencies;%1' +
'                                                                ApplicationArea=#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=5;%1' +
'                                                                ParentNodeID=[{054DB4DA-3681-4DAA-9F4B-9F470C5F862B}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{22092D04-C871-4F89-9A91-28A7B1DC4641}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{9B07D75D-1017-407E-B433-38458A0E485A}] ;Name=Sales & Receivables Setup;%1' +
'                                                                CaptionML=ENU=Sales & Receivables Setup;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=459;%1' +
'                                                                ParentNodeID=[{FFA5A70C-3D43-45D8-8349-1D1E7337840D}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{87F2A1F8-0ADE-4A8E-B4BE-6E2E22B3B644}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{87F2A1F8-0ADE-4A8E-B4BE-6E2E22B3B644}] ;Name=Payment Terms;%1' +
'                                                                CaptionML=ENU=Payment Terms;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=4;%1' +
'                                                                ParentNodeID=[{FFA5A70C-3D43-45D8-8349-1D1E7337840D}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{A18FA13E-24D2-4F78-8AE8-CE944E4F5188}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{A18FA13E-24D2-4F78-8AE8-CE944E4F5188}] ;Name=Payment Methods;%1' +
'                                                                CaptionML=ENU=Payment Methods;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=427;%1' +
'                                                                ParentNodeID=[{FFA5A70C-3D43-45D8-8349-1D1E7337840D}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{85EE984F-7BEC-4136-9577-EC4783764A9C}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{85EE984F-7BEC-4136-9577-EC4783764A9C}] ;Name=Reminder Terms;%1' +
'                                                                CaptionML=ENU=Reminder Terms;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=431;%1' +
'                                                                ParentNodeID=[{FFA5A70C-3D43-45D8-8349-1D1E7337840D}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{27093CDC-D9EA-49ED-A50D-A102791F6A68}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{27093CDC-D9EA-49ED-A50D-A102791F6A68}] ;Name=Finance Charge Terms;%1' +
'                                                                CaptionML=ENU=Finance Charge Terms;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=6;%1' +
'                                                                ParentNodeID=[{FFA5A70C-3D43-45D8-8349-1D1E7337840D}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{F21E428F-48CA-4ED2-8D29-897BFFABFB25}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{6587954F-15E9-462C-BF64-02302395A24E}] ;Name=Purchases & Payables Setup;%1' +
'                                                                CaptionML=ENU=Purchases & Payables Setup;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=460;%1' +
'                                                                ParentNodeID=[{7BB9FB2F-E3C6-474E-95C6-0405A58586D7}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{4171CE7D-A4A8-44AD-9606-F6614B5FFB20}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{4171CE7D-A4A8-44AD-9606-F6614B5FFB20}] ;Name=Payment Terms;%1' +
'                                                                CaptionML=ENU=Payment Terms;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=4;%1' +
'                                                                ParentNodeID=[{7BB9FB2F-E3C6-474E-95C6-0405A58586D7}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{570897AD-CEA8-44ED-877E-ED54A5D39ADE}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{570897AD-CEA8-44ED-877E-ED54A5D39ADE}] ;Name=Payment Methods;%1' +
'                                                                CaptionML=ENU=Payment Methods;%1' +
'                                                                ApplicationArea=#Basic,#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=427;%1' +
'                                                                ParentNodeID=[{7BB9FB2F-E3C6-474E-95C6-0405A58586D7}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{391252A2-FEAE-4E27-A8DC-110873D5C948}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'    { MenuItem       ;[{391252A2-FEAE-4E27-A8DC-110873D5C948}] ;Name=Standard Purchase Codes;%1' +
'                                                                CaptionML=ENU=Standard Purchase Codes;%1' +
'                                                                ApplicationArea=#Suite;%1' +
'                                                                MemberOfMenu=[{F8D2429D-034B-4C58-9B5E-81BE962DB1BC}];%1' +
'                                                                RunObjectType=Page;%1' +
'                                                                RunObjectID=177;%1' +
'                                                                ParentNodeID=[{7BB9FB2F-E3C6-474E-95C6-0405A58586D7}];%1' +
'                                                                Visible=Yes;%1' +
'                                                                NextNodeID=[{6587954F-15E9-462C-BF64-02302395A24E}];%1' +
'                                                                DepartmentCategory=Administration }%1' +
'  }%1' +
'}';

        Content := StrSubstNo(Content, CRLF);
        exit(Content);
    end;
}
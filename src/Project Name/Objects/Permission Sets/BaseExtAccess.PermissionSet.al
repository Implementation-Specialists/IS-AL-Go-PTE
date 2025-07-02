namespace ISZ.ProjectName;

permissionset 50100 "Base Ext. Access"
{
    Assignable = true;
    Caption = 'Base Extension Access', Locked = true;
    Permissions = table "Sample" = X,
        tabledata "Sample" = RMID,
        codeunit "Sample" = X,
        codeunit "Sample Test" = X,
        page "Sample Card" = X,
        xmlport "Sample" = X,
        query "Sample" = X,
        report "Sample" = X,
        query "Sample Report" = X;
}

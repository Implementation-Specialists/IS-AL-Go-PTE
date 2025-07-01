namespace ISZ.ProjectNameUnitTest;

permissionset 50101 TestExtAccess
{
    Assignable = true;
    Caption = 'Test Extension Access', MaxLength = 30;
    Permissions =
        codeunit "Sample Unit Test" = X;
}
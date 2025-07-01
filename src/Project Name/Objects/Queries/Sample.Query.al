namespace ISZ.ProjectName;

query 50100 "Sample"
{
    Caption = 'Sample';
    Permissions = tabledata Sample = r;
    QueryType = Normal;

    elements
    {
        dataitem(SampleItem; "Sample")
        {
            column(Id; Id)
            {
            }
            column(Sample; Sample)
            {
            }
            column(Title; Title)
            {
            }
        }
    }

    trigger OnBeforeOpen()
    begin
        IsOpen := true;

        if IsOpen then
            Message('Open');
    end;

    var
        IsOpen: Boolean;
}
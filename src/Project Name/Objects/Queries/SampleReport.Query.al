namespace ISZ.ProjectName;

query 50101 "Sample Report"
{
    Caption = 'Sample Report';
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

    end;
}
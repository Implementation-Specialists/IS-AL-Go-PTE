namespace ISZ.ProjectName;

xmlport 50100 "Sample"
{
    Caption = 'Sample';
    Permissions = tabledata Sample = rim;

    schema
    {
        textelement(RootNodeName)
        {
            tableelement(Sample; "Sample")
            {
                fieldelement(CustomerNo; Sample.Id)
                {
                }
                fieldelement(Sample; Sample.Sample)
                {
                }
                fieldelement(Title; Sample.Title)
                {
                }
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    Caption = 'Group Name';
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}
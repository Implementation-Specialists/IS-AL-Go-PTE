namespace ISZ.ProjectName;

using Microsoft.Sales.Reports;

reportextension 50100 "Customer - Top 10 List" extends "Customer - Top 10 List"
{
    dataset
    {
        add(Customer)
        {
            column(Sample_Id; "ISZ Sample Id")
            {
            }
        }
    }
    rendering
    {
        layout("Sample")
        {
            Type = RDLC;
            LayoutFile = '.\Objects\Report Extensions\Layouts\Customer - Top 10 List.rdlc';
            Caption = 'Base Extension Name';
        }
    }
}
namespace ISZ.ProjectName;

using Microsoft.Sales.Customer;

pageextension 50100 "Customer Card" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("ISZ Sample Id"; Rec."ISZ Sample Id")
            {
                ApplicationArea = All;
            }
            field("ISZ Title"; Rec."ISZ Title")
            {
                ApplicationArea = All;
            }
        }
    }
}
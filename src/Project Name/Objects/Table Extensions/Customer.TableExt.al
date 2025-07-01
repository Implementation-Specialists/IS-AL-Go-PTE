namespace ISZ.ProjectName;

using Microsoft.Sales.Customer;

tableextension 50100 "Customer" extends Customer
{
    fields
    {
        field(50100; "ISZ Sample Id"; Code[20])
        {
            Caption = 'Sample Id';
            DataClassification = CustomerContent;
            TableRelation = "Sample".Id where(Id = field("ISZ Sample Id"));
        }
        field(50101; "ISZ Title"; Text[250])
        {
            CalcFormula = lookup("Sample".Title where(Id = field("ISZ Sample Id")));
            Caption = 'Title';
            Editable = false;
            FieldClass = FlowField;
        }

    }
}
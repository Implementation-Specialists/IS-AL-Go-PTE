namespace ISZ.ProjectName;

table 50100 "Sample"
{
    Caption = 'Sample';
    DataClassification = CustomerContent;
    Extensible = false;

    fields
    {
        field(1; Id; Code[20])
        {
            Caption = 'Id';
            NotBlank = true;
        }
        field(2; Title; Text[250])
        {
            Caption = 'Title';
        }
        field(3; Sample; Enum "Sample")
        {
            Caption = 'Sample';
        }
    }
    keys
    {
        key(PK; "Id")
        {
            Clustered = true;
        }
    }
}
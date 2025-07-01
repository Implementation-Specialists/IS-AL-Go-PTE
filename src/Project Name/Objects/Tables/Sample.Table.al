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
            ToolTip = 'Specifies the value of the Id field.';
        }
        field(2; Title; Text[250])
        {
            Caption = 'Title';
            ToolTip = 'Specifies the value of the Title field.';
        }
        field(3; Sample; Enum "Sample")
        {
            Caption = 'Sample';
            ToolTip = 'Specifies the value of the Sample field.';
        }
    }
    keys
    {
        key(PK; "Id")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(Dropdown; Title, Sample)
        {
        }
        fieldgroup(Brick; Title, Sample)
        {
        }
    }
}
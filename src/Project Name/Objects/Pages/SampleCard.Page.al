namespace ISZ.ProjectName;

page 50100 "Sample Card"
{
    ApplicationArea = All;
    Caption = 'Sample Card';
    Extensible = false;
    PageType = Card;
    SourceTable = "Sample";
    UsageCategory = Tasks;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field(Id; Rec.Id)
                {
                    ToolTip = 'Specifies the value of the Id field.';
                }
                field(Title; Rec.Title)
                {
                    ToolTip = 'Specifies the value of the Title field.';
                }
                field(Sample; Rec.Sample)
                {
                    ToolTip = 'Specifies the value of the Sample field.';
                }
            }
            grid(MyGrid)
            {
                Caption = 'My Grid';

                fixed(MyFixed)
                {
                    Caption = 'My Fixed';

                    field(SomeField; SomeField)
                    {
                        Caption = 'Some Field';
                        ToolTip = 'Specifies some field value.';
                    }
                }
            }
        }
    }

    var
        SomeField: Boolean;
}
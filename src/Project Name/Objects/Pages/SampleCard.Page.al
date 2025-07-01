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
                }
                field(Title; Rec.Title)
                {
                }
                field(Sample; Rec.Sample)
                {
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
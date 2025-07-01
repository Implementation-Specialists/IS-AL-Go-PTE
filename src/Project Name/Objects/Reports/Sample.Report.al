namespace ISZ.ProjectName;

report 50100 "Sample"
{
    ApplicationArea = All;
    Caption = 'Sample';
    DefaultRenderingLayout = "Base Extension Name";
    Extensible = false;
    Permissions = tabledata Sample = r;
    UsageCategory = History;

    dataset
    {
        dataitem(SampleItem; "Sample")
        {
            column(Title; Title)
            {
            }
            column(Sample; Sample)
            {
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
                    Description = 'Test Description';
                    Editable = false;
                    Enabled = true;

                    field(TestCtrl; Test)
                    {
                        Caption = 'Do a Test';
                        ToolTip = 'Specifies the value of the Do a Test field.';
                    }
                }
            }
        }
        actions
        {
            area(Processing)
            {
                action(Thing)
                {
                    Caption = 'Do the thing.';
                    ToolTip = 'Does the thing.';

                    trigger OnAction()
                    begin
                        Message('Did the thing');
                    end;
                }
            }
        }
    }
    rendering
    {
        layout("Base Extension Name")
        {
            Caption = 'Base Extension Name';
            LayoutFile = '.\Objects\Reports\Layouts\Sample.rdlc';
            Type = RDLC;
            Summary = 'My Summary';
        }
    }
    labels
    {
        MyLabel = 'My label', Comment = 'My Label', MaxLength = 25, Locked = true;
    }

    var
        Test: Boolean;
}
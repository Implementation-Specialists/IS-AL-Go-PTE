namespace ISZ.ProjectNameUnitTest;

using ISZ.ProjectName;
using Microsoft.Sales.Customer;

codeunit 50103 "Sample Unit Test"
{
    // [FEATURE] [Customer Modifications]
    Subtype = Test;
    Permissions = tabledata Sample = rim,
                tabledata Customer = im;
    TestPermissions = Disabled;

    /// <summary>
    /// Tests the Customer Card Sample Extension
    /// </summary>
    [Test]
    procedure Customer_Sample()
    var
        Customer: Record Customer;
        SampleRecord: Record "Sample";
        Assert: Codeunit Assert;
        LibrarySales: Codeunit "Library - Sales";
        LibraryUtility: Codeunit "Library - Utility";
        CustomerCard: TestPage "Customer Card";
        Sample: Enum "Sample";
        RandomId: Code[20];
        RandomTitle: Text;
    begin
        // 123456 - Represents the Azure Devops ID
        // [SCENARIO 123456] Test Customer is blocked

        RandomId := LibraryUtility.GenerateRandomCode20(SampleRecord.FieldNo(Id), Database::"Sample");
        RandomTitle := LibraryUtility.GenerateRandomText(25);

        // [GIVEN] A Sample Record
        SampleRecord.Init();
        SampleRecord.Id := RandomId;
        SampleRecord.Title := RandomTitle.Substring(1, Text.StrLen(RandomTitle));
        SampleRecord.Sample := SampleRecord.Sample::Sample2;
        SampleRecord.Insert(false);

        // [GIVEN] A Customer with a Sample Id
        LibrarySales.CreateCustomer(Customer);
        Customer."ISZ Sample Id" := RandomId;
        Customer.Modify(false);

        // [WHEN] Customer is opened
        CustomerCard.OpenEdit();
        CustomerCard.GoToRecord(Customer);

        // [THEN] Customer ISZ Sample Id set
        Assert.AreEqual(RandomId, CustomerCard."ISZ Sample Id".Value(), 'Customer ISZ Sample Id is incorrect');

        // [THEN] Customer ISZ Title is correct
        Assert.AreEqual(RandomTitle, CustomerCard."ISZ Title".Value(), 'Customer ISZ Title is incorrect');

        // [THEN] ISZ Sample Sample value is correct 
        SampleRecord.Get(RandomId);
        Assert.AreEqual(Sample::Sample2, SampleRecord.Sample, 'Sample Sample value is incorrect');
    end;
}

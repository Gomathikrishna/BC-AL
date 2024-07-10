table 50121 "Book Title"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Title"; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Book Genre"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = " ",Fiction,Technology,Science,History;
        }
    }

    keys
    {
        key(PK; "Title", "Book Genre")
        {
            Clustered = true;
        }

    }



}
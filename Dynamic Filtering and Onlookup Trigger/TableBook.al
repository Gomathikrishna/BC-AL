table 50120 "Book"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Book ID"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Book Publisher"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Book Title"; Text[100])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Book Title".Title where("Book Genre" = field("Book Genre"));
        }
        field(4; "Book Genre"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = " ",Fiction,Technology,Science,History;
        }

    }

    keys
    {
        key(PK; "Book ID")
        {
            Clustered = true;
        }
    }


}
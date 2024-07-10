page 50121 "Book Title List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Book Title";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Title; Rec.Title)
                {
                    ApplicationArea = All;

                }
                field("Book Genre"; Rec."Book Genre")
                {
                    ApplicationArea = All;

                }

            }
        }

    }
}
page 50120 "Book Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Book;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Book ID"; Rec."Book ID")
                {
                    ApplicationArea = All;

                }
                field("Book Publisher"; Rec."Book Publisher")
                {
                    ApplicationArea = All;

                }
                field("Book Genre"; Rec."Book Genre")
                {
                    ApplicationArea = All;

                }
                field("Book Title"; Rec."Book Title")
                {
                    ApplicationArea = All;
                    trigger OnLookup(var Text: Text): Boolean
                    var
                        BookTitle: Record "Book Title";
                    begin
                        BookTitle.SetRange("Book Genre", Rec."Book Genre");
                        if Page.RunModal(Page::"Book Title List", BookTitle) = Action::LookupOK then begin
                            Text := BookTitle.Title;
                            exit(true);

                        end;
                        exit(false);
                    end;
                }
            }
        }
    }


}
package JB_03_Extend;

public class BookInfo extends Product {
	// 작가, 페이지
	private String book_Writer, book_Page;
	
	public BookInfo() {
		
	}

	public String getBook_Writer() {
		return book_Writer;
	}

	public void setBook_Writer(String book_Writer) {
		this.book_Writer = book_Writer;
	}

	public String getBook_Page() {
		return book_Page;
	}

	public void setBook_Page(String book_Page) {
		this.book_Page = book_Page;
	}
}

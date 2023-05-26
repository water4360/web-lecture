package kr.ac.kopo.book;

/*
 * 자바빈즈 클래스 만드는 중
 * 1. 패키지를 포함할 것
 * 2. 클래스의 접근제한자는 public
 * 3. 매개변수 없는 default 생성자 포함할 것
 * 4. 모든 멤버변수의 접근제한자는 private
 * 5. getter & setter 메소드를 포함할 것!
 */

public class BookVO {
	
	//4번
	private String isbn;
	private String title;
	private String writer;
	
	//3번
	public BookVO() {
	}

	//5번
	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	//0526 츄거
	public BookVO(String isbn, String title, String writer) {
		super();
		this.isbn = isbn;
		this.title = title;
		this.writer = writer;
	}
	
	
	
	
	
	

}

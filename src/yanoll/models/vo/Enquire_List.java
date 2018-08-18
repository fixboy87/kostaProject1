package yanoll.models.vo;

import java.util.List;

public class Enquire_List{
	private List<Enquire_Board> list;
	private int requestPage; //요청한 페이지 정보
	private int totalPageCount; //총페이지
	private int startPage; //시작페이지
	private int endPage; //끝 페이지
	public Enquire_List() {
		super();
		
	}
	public Enquire_List(List<Enquire_Board> list, int requestPage, int totalPageCount, int startPage, int endPage) {
		super();
		this.list = list;
		this.requestPage = requestPage;
		this.totalPageCount = totalPageCount;
		this.startPage = startPage;
		this.endPage = endPage;
	}
	public List<Enquire_Board> getList() {
		return list;
	}
	public void setList(List<Enquire_Board> list) {
		this.list = list;
	}
	public int getRequestPage() {
		return requestPage;
	}
	public void setRequestPage(int requestPage) {
		this.requestPage = requestPage;
	}
	public int getTotalPageCount() {
		return totalPageCount;
	}
	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	
	
	

}

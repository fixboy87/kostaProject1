package yanoll.models.vo;

import java.util.List;

public class Review_listModel {
	private List<Review_Board> list;
	private int reqestPage;
	private int totalPageCount;
	private int startPage;
	private int endPage;
	public Review_listModel() {
		super();
	}
	public Review_listModel(List<Review_Board> list, int reqestPage, int totalPageCount, int startPage, int endPage) {
		super();
		this.list = list;
		this.reqestPage = reqestPage;
		this.totalPageCount = totalPageCount;
		this.startPage = startPage;
		this.endPage = endPage;
	}
	public List<Review_Board> getList() {
		return list;
	}
	public void setList(List<Review_Board> list) {
		this.list = list;
	}
	public int getReqestPage() {
		return reqestPage;
	}
	public void setReqestPage(int reqestPage) {
		this.reqestPage = reqestPage;
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

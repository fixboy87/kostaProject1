package yanoll.models.vo;

import java.util.List;

public class ManagementPaging {
	private List<ReservationSearch> list;
	private int requestPage;
	private int totalPageCount;
	private int startPage;
	private int endPage;

	public ManagementPaging() {
		super();
	}

	public ManagementPaging(List<ReservationSearch> list, int requestPage, int totalPageCount, int startPage,
			int endPage) {
		super();
		this.list = list;
		this.requestPage = requestPage;
		this.totalPageCount = totalPageCount;
		this.startPage = startPage;
		this.endPage = endPage;
	}

	public List<ReservationSearch> getList() {
		return list;
	}

	public void setList(List<ReservationSearch> list) {
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

	@Override
	public String toString() {
		return "ManagementPaging [list=" + list + ", requestPage=" + requestPage + ", totalPageCount=" + totalPageCount
				+ ", startPage=" + startPage + ", endPage=" + endPage + "]";
	}
}

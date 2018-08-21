package yanoll.models.vo;

import java.io.Serializable;

public class Enquire_Search implements Serializable{
	private String area;
	private String searchKey;
	
	public Enquire_Search() {
		super();
		
	}

	public Enquire_Search(String area, String searchKey) {
		super();
		this.area = area;
		this.searchKey = searchKey;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getSearchKey() {
		return searchKey;
	}

	public void setSearchKey(String searchKey) {
		this.searchKey = searchKey;
	}

	
	
	
	
	

}

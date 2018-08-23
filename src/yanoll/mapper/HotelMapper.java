package yanoll.mapper;

import java.util.List;

import yanoll.models.vo.Hotel;
import yanoll.models.vo.Hotel_room;
import yanoll.models.vo.SearchCondition;

public interface HotelMapper {
	List<Hotel> hotelList();
	List<Hotel> hotelSortLocation(String h_location);
	List<Hotel> hotelPriceSelector(SearchCondition condition);
	List<Hotel_room> hotelDetailList(int h_no);
}

package yanoll.models.service;

import yanoll.models.dao.ManagementDao;

public class ManagerService {
	private static ManagerService service = new ManagerService();
	private static ManagementDao dao;
	
	public static ManagerService getInstance(){
		dao = ManagementDao.getInstance();
		return service;
	}
}

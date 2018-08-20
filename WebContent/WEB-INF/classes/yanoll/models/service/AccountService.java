package yanoll.models.service;

import yanoll.models.dao.AccountDao;

public class AccountService {
	private static AccountService service = new AccountService();
	private static AccountDao dao;
	
	public static AccountService getInstance() {
		dao = AccountDao.getInstance();
		return service;
	}
}

package yanoll.models.dao;

public class AccountDao {
	private static AccountDao dao = new AccountDao();
	
	public static AccountDao getInstance() {
		return dao;
	}
}

package Health;

import java.sql.SQLException;

public interface DiagnosticDAO {
	public void create(String answers, int user_id) throws SQLException;
	public DiagnosticBean latest(int user_id) throws SQLException;
}

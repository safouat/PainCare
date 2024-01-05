package Health;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Database.DAOFactory;

public class DiagnosticDaoImpl implements DiagnosticDAO {
	private DAOFactory daoFactory;

    public DiagnosticDaoImpl( DAOFactory daoFactory ) {
        this.daoFactory = daoFactory;
    }
    
    private static DiagnosticBean getBean(ResultSet res) throws SQLException {
    	DiagnosticBean bean = new DiagnosticBean();
    	
    	bean.setID(res.getInt("id"));
    	bean.setUserID(res.getInt("user_id"));
    	bean.setAnswers(res.getString("answers"));
    	
    	return bean;
    }
    
	@Override
	public void create(String answers, int user_id) throws SQLException {
		Connection conn = daoFactory.getConnection();
		String SQL = "INSERT INTO diagnostics (answers, user_id) VALUES(?, ?);";
		PreparedStatement statement = conn.prepareStatement(SQL);
		
		statement.setString(1, answers);
		statement.setInt(2, user_id);
		
		statement.execute();
		
		statement.close();
		conn.close();
	}
	
	@Override
	public DiagnosticBean latest(int user_id) throws SQLException {
		Connection conn = daoFactory.getConnection();
		String SQL = "SELECT * FROM diagnostics WHERE user_id = ? ORDER BY id DESC LIMIT 1;";
		PreparedStatement statement = conn.prepareStatement(SQL);
		
		statement.setInt(1, user_id);
		
		ResultSet res = statement.executeQuery();
		DiagnosticBean bean = res.next() ? getBean(res) : null;
		
		statement.close();
		conn.close();
		
		return bean;
	}
}

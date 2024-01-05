package Health;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Database.DAOFactory;

public class PainTrackDaoImpl implements PainTrackDAO {
	private DAOFactory daoFactory;

    public PainTrackDaoImpl( DAOFactory daoFactory ) {
        this.daoFactory = daoFactory;
    }
    
    private static PainTrackBean getBean(ResultSet res) throws SQLException {
    	PainTrackBean bean = new PainTrackBean();
    	
    	bean.setID(res.getInt("id"));
    	bean.setUserID(res.getInt("user_id"));
    	bean.setLevel(res.getInt("level"));
    	
    	return bean;
    }
    
    @Override
    public int create(int level, int user_id) throws SQLException {
    	Connection conn = daoFactory.getConnection();
    	String SQL = "INSERT INTO paintracks (level, user_id) VALUES(?, ?);";
    	PreparedStatement statement = conn.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
    	
    	statement.setInt(1, level);
    	statement.setInt(2, user_id);
    	
    	statement.executeUpdate();
    	ResultSet generatedRow = statement.getGeneratedKeys();
    	int id = generatedRow.next() ? generatedRow.getInt(1) : null;
    	
    	statement.close();
    	conn.close();
    	
    	return id;
    }
    
    @Override
    public ArrayList<Integer> painLevelStats(int user_id) throws SQLException {
    	Connection conn = daoFactory.getConnection();
    	String SQL = "SELECT level FROM paintracks WHERE user_id = ? ORDER BY id DESC LIMIT 14;";
    	PreparedStatement statement = conn.prepareStatement(SQL);
    	
    	statement.setInt(1, user_id);
    	
    	ResultSet res = statement.executeQuery();
    	ArrayList<Integer> list = new ArrayList<Integer>();
    	
    	while(res.next()) list.add(res.getInt("level"));
    	
    	res.close();
    	statement.close();
    	conn.close();
    	
    	return list;
    }
}

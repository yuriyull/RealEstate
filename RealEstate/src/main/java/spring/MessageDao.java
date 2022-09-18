package spring;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;

public class MessageDao {

	private JdbcTemplate jdbcTemplate;
	private RowMapper<Property> memRowMapper = new RowMapper<Property>() {

		@Override
		public Property mapRow(ResultSet rs, int rowNum) throws SQLException {
			Property property = new Property();
			property.setProperty_types(rs.getString("category"));
			property.setAddress(rs.getString("address"));
			property.setLocation(rs.getString("location"));
			property.setMessage(rs.getString("message"));
			property.setPhoto(rs.getString("photo"));
			property.setPrice(rs.getString("price"));
			property.setSize(rs.getString("size"));
			property.setTrading_types(rs.getString("trading_type"));
			property.setHost_id(rs.getString("host_id"));
			return property;
		}
		
	};
	
	private RowMapper<Message> messageRowMapper = new RowMapper<Message>() {

		@Override
		public Message mapRow(ResultSet rs, int rowNum) throws SQLException {
			Message message = new Message();
			message.setAddress(rs.getString("address"));
			message.setHost_id(rs.getString("host_id"));
			message.setM_name(rs.getString("m_name"));
			message.setM_phone(rs.getInt("m_phone"));
			message.setMessage(rs.getString("m_message"));
			message.setPhoto(rs.getString("photo"));
			return message;
		}
		
	};
	
	public MessageDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	//메시지 db 저장
	public void insert(Message message) {

		jdbcTemplate.update(new PreparedStatementCreator() {
			@Override
			public PreparedStatement createPreparedStatement(Connection con)
					throws SQLException {
				// 파라미터로 전달받은 Connection을 이용해서 PreparedStatement 생성
				PreparedStatement pstmt = con.prepareStatement(
						"insert into messages (host_id, address, m_name, m_phone, m_message, photo) " +
						"values (?, ?, ?, ?, ?,?)");
				// 인덱스 파라미터 값 설정
				pstmt.setString(1,message.getHost_id());
				pstmt.setString(2, message.getAddress());
				pstmt.setString(3, message.getM_name());
				pstmt.setInt(4, message.getM_phone());
				pstmt.setString(5, message.getMessage());
				pstmt.setString(6, message.getPhoto());
				// 생성한 PreparedStatement 객체 리턴
				return pstmt;
			}
		});
	}
	
	//메시지 불러오기
	public List<Message> getMyMessages(String id){
		List<Message> messages = jdbcTemplate.query("select * from messages where host_id=?",
				messageRowMapper, id);
		return messages;
	}
	
	//메시지 삭제
	public void DeleteMessage(String id, String address) {
		jdbcTemplate.update(new PreparedStatementCreator() {
			
			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				PreparedStatement pstmt = con.prepareStatement("delete from messages where host_id=? and address=?");
				pstmt.setString(1, id);
				pstmt.setString(2, address);
				return pstmt;
			}
		});
	}
}

package spring;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

public class PropertyDao {
	
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
			System.out.println("PropertyList insert");
			return property;
		}
		
	};
	
	
	
	public PropertyDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	//내 매물 등록
	public void insert(Property property, String id) {

		jdbcTemplate.update(new PreparedStatementCreator() {
			@Override
			public PreparedStatement createPreparedStatement(Connection con)
					throws SQLException {
				// 파라미터로 전달받은 Connection을 이용해서 PreparedStatement 생성
				PreparedStatement pstmt = con.prepareStatement(
						"insert into property (host_id, category, location, address, trading_type, size, price, photo, message) " +
						"values (?, ?, ?, ?, ?, ?, ?, ?, ?)");
				// 인덱스 파라미터 값 설정
				pstmt.setString(1, id);
				pstmt.setString(2, property.getProperty_types());
				pstmt.setString(3, property.getLocation());
				pstmt.setString(4, property.getAddress());
				pstmt.setString(5, property.getTrading_types());
				pstmt.setString(6, property.getSize());
				pstmt.setString(7, property.getPrice());
				pstmt.setString(8, property.getPhoto());
				pstmt.setString(9, property.getMessage());
				// 생성한 PreparedStatement 객체 리턴
				return pstmt;
			}
		});
	}
	
	//매물 전체 불러오기
	public List<Property> getPropertyList() {
		List<Property> propertyList = jdbcTemplate.query("select * from property", memRowMapper);

		return propertyList;
	}
	
	//주소로 매물정보 가져오기
	public Property getByAddress(String address){
		Property property = jdbcTemplate.query("select * from property where address=?", memRowMapper, address).get(0);
		return property;
	}
	
	//등록 매물 갯수
	public int getListCount(String trading_type, String category, String location) throws SQLException{

		if(trading_type.equals("전체")&&category.equals("전체")&&location.equals("전체")) {	
			List<Integer> results = jdbcTemplate.query("SELECT COUNT(*) FROM property", 
				new RowMapper<Integer>() {

					@Override
					public Integer mapRow(ResultSet rs, int rowNum) throws SQLException {
						return rs.getInt(1);
					}
			});
			return results.get(0);
			
		}else {
			List<Integer> results = jdbcTemplate.query("SELECT COUNT(*) FROM property where trading_type=? or category=? or location=?", 
				new RowMapper<Integer>() {

					@Override
					public Integer mapRow(ResultSet rs, int rowNum) throws SQLException {
						return rs.getInt(1);
					}
				}, trading_type, category, location);
			return results.get(0);
		}
	}
	
	//전체 매물 리스트 페이징처리
   public List<Property> getSearchResult(int page, int limit, String trading_type, String category, String location) throws SQLException {
	  int total_record = getListCount(trading_type, category, location);
	  int start = (page - 1) * limit; 
	  int index = start + 1; 
	  
      if (trading_type.equals("전체")&&category.equals("전체")&&location.equals("전체")) {
    	  List<Property> propertyList= new ArrayList<Property>();
         List<Property> tmpList = jdbcTemplate.query("select * from property ORDER BY num asc", memRowMapper);
         
         for(int i = (index-1); index<=(start+limit)&&index<=total_record; index++) {
				propertyList.add(tmpList.get(index-1));
         	}
         
         return propertyList;
      }
      
      else {
    	  List<Property> propertyList= new ArrayList<Property>();
	      List<Property> tmpList = jdbcTemplate.query("select * from property where trading_type='"+ trading_type + "' or category='" + category + "' or location='" + location + "' ORDER BY num asc"
	    		  ,memRowMapper);
	       
			for(int i = (index-1); index<=(start+limit)&&index<=total_record; index++) {
				propertyList.add(tmpList.get(index-1));
			}

	      	return propertyList;
	   }
   }

	//내 매물 정보 가져오기
   public List<Property> getMyProperties(String host_id) {
		List<Property> propertyList = jdbcTemplate.query("select * from property where host_id=?", memRowMapper, host_id);

		return propertyList;
	}
	
   //내 매물 삭제하기
	public void DeleteMyProperty(String host_id, String address) {
		jdbcTemplate.update(new PreparedStatementCreator() {
			
			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				PreparedStatement pstmt = con.prepareStatement("delete from property where host_id=? and address=?");
				pstmt.setString(1, host_id);
				pstmt.setString(2, address);
				return pstmt;
			}
		});
	}
	
	//매물 찜 추가하기
	public void AddLike(String id, String address) {
		jdbcTemplate.update(new PreparedStatementCreator() {
			
			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				PreparedStatement pstmt = con.prepareStatement("insert into likes (id, address) values (?,?);");
				pstmt.setString(1, id);
				pstmt.setString(2, address);
				return pstmt;
			}
		});
	}
	
	//찜한 매물리스트 가져오기
	public List<Property> getMyLikes(String id){
		List<Property> propertyList = new ArrayList<Property>();
		List<LikeDto> results = jdbcTemplate.query(
				"select * from likes where id=?",
				new RowMapper<LikeDto>() {
					@Override
					public LikeDto mapRow(ResultSet rs, int rowNum) throws SQLException {
						LikeDto like = new LikeDto();
						like.setAddress(rs.getString("address"));
						like.setId(id);
						return like;
					}
				}, id);
		for(int i=0; i<results.size();i++) {
			Property property = new Property();
			String address = results.get(i).getAddress();
			property = jdbcTemplate.query("select * from property where address=?", memRowMapper, address).get(0);
			
			propertyList.add(property);
		}
		
		return propertyList;
	}
	
	   //내 찜 매물 삭제하기
		public void DeleteLike(String id, String address) {
			jdbcTemplate.update(new PreparedStatementCreator() {
				
				@Override
				public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
					PreparedStatement pstmt = con.prepareStatement("delete from likes where id=? and address=?");
					pstmt.setString(1, id);
					pstmt.setString(2, address);
					return pstmt;
				}
			});
		}
}

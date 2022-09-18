package spring;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;

import com.google.code.geocoder.Geocoder;
import com.google.code.geocoder.GeocoderRequestBuilder;
import com.google.code.geocoder.model.GeocodeResponse;
import com.google.code.geocoder.model.GeocoderRequest;
import com.google.code.geocoder.model.GeocoderResult;
import com.google.code.geocoder.model.GeocoderStatus;
import com.google.code.geocoder.model.LatLng;


public class MapDao {
	
	//주소로 Map에 좌표정보 저장&리턴하는 함수
	public  Map<String, String> getGeoDataByAddress (String Address) 
	{
		try {
	        String API_KEY = "AIzaSyAZM2Js2QjrUohoRus94m13MvyIloNZQ0I";
	        String surl = "https://maps.googleapis.com/maps/api/geocode/json?address="+URLEncoder.encode(Address, "UTF-8")+"&key="+API_KEY;
	        URL url = new URL(surl); 
	        InputStream is = url.openConnection().getInputStream(); 
	        //openConnection : 지정된 url에 대한 소켓을 열고 urlConnection 객체 반환
	        //getInputStream : 응답 데이터를 읽을 수 있는 inputStream 객체 반환
	 
	        BufferedReader streamReader = new BufferedReader(new InputStreamReader(is, "UTF-8")); 
	        //InputStreamReader 객체인 is를 BufferedReader로 읽은 후 streamReader 변수에 객체 저장
	        
	        StringBuilder responseStrBuilder = new StringBuilder(); //StringBuilder 가변길이 문자열 객체 생성
	        String inputStr; 
	        System.out.println(">>>>>>>>>> >>>>>>>>>> InputStream Start <<<<<<<<<< <<<<<<<<<<");
	        while ((inputStr = streamReader.readLine()) != null) {  //streamReader 스트림에서 문자를 읽고 데이터를 문자열로 반환
	            System.out.println(">>>>>>>>>>     "+inputStr); //문자열 출력
	            responseStrBuilder.append(inputStr); //문자열 결합
	        }
	        System.out.println(">>>>>>>>>> >>>>>>>>>> InputStream End <<<<<<<<<< <<<<<<<<<<");
	 
	        JSONObject jo = new JSONObject(responseStrBuilder.toString()); //StringBuilder의 값을 String으로 변환해서 JSONObject 객체에 저장
	        JSONArray results = jo.getJSONArray("results"); //JSONObject 객체에서 "results"라는 이름의 값을 JSONArray에 저장
	        String region = null;
	        String province = null;
	        String zip = null;
	        Map<String, String> ret = new HashMap<String, String>(); //Map 객체생성
	        if(results.length() > 0) { //JSONArray에 object가 들어있으면 실행
	            JSONObject jsonObject;
	            jsonObject = results.getJSONObject(0); // 0번째 인덱스의 object를 변수에 저장
	            Double lat = jsonObject.getJSONObject("geometry").getJSONObject("location").getDouble("lat"); //json에서 key로 가져온 value를 변수에 담음
	            Double lng = jsonObject.getJSONObject("geometry").getJSONObject("location").getDouble("lng");
	            ret.put("lat", lat.toString()); // 위경도를 String으로 변환하여 Map에 저장
	            ret.put("lng", lng.toString());
	            System.out.println("위도 :\t"+lat);
	            System.out.println("경도 :\t"+lng);
	            JSONArray ja = jsonObject.getJSONArray("address_components"); //jsonObject에 "address_components" 이름의 변수의 값들을 JSONArray에 저장
	            for(int i=0; i<ja.length(); i++) { //배열에 담긴 값을 반복문을 통해 모두 가져옴
	                JSONObject curjo = ja.getJSONObject(i);
	                String type = curjo.getJSONArray("types").getString(0);//jsonObject에 "types" 이름의 배열안에 0번째 문자를 가져와 저장
	                String short_name = curjo.getString("short_name"); //jsonObject에 "short_name" 이름의 값을 저장
	                
	                if(type.equals("postal_code")) { // Map에 우편번호, 위도/경도, 지역 등을 저장
	                    System.out.println("우편번호 : "+short_name);
	                    ret.put("zip", short_name);
	                }
	                else if(type.equals("administrative_area_level_1")) {
	                    System.out.println("지역 : "+short_name);
	                    ret.put("region", short_name);
	                }                    
	            }
	            return ret; //장소 정보가 저장된 Map을 리턴
	        }
	    } catch (Exception e) {
	        e.printStackTrace(); //에러발생의 근원지를 찾아 단계별로 출력
	    }
	    return null;
	}
}
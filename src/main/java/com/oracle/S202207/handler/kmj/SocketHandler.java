package com.oracle.S202207.handler.kmj;

import java.util.HashMap;
import java.util.Iterator;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.oracle.S202207.service.kmj.MessageService;
import com.oracle.S202207.service.kmj.ReadCheckService;


@Component
public class SocketHandler extends TextWebSocketHandler {

	@Autowired
	private MessageService ms;
	@Autowired
	private ReadCheckService rs;
	
	private String FILE_UPLOAD_PATH = "";
	
	//      세션 id    세션 객체
	HashMap<String, WebSocketSession> sessionMap = new HashMap<>();
	// 웹소켓 세션을 담아둘 맵
	//  세션 ID --> 3fcfc012-70b3-a341-beaf-e7a9812da53e , 김준수   session1
	//  세션 ID --> 1fcdd90b-8fa9-b754-0c0f-634a09741211 , 조정은   session2
	//  세션 ID --> a70f41f9-a473-5c4a-09c2-bd844a045dfa , 반헬싱   session3

	//      세션 id   Member
	HashMap<String, String> sessionUserMap = new HashMap<>();
	// 웹소켓 세션 ID과 Member을 담아둘 JSONObject
	JSONObject jsonUser = null;
	
	//메시지 발송
	public void handleTextMessage(WebSocketSession session, TextMessage message) {
		
		String msg = message.getPayload();
		System.out.println("9. SocketHandler handleTextMessage msg : " + msg);
		JSONObject jsonObj = jsonToObjectParser(msg);
		System.out.println("jsonObj : " + jsonObj);
		
		// type을 Get하여 분기
		String msgType = (String) jsonObj.get("type");
		System.out.println("SocketHandler handleTextMessage  msgType : "+ msgType);

		switch(msgType) {
			case "message":
			jsonUser = new JSONObject(sessionUserMap);
			System.out.printf("JSONUser : %s\n", jsonUser);
			 
			//전송 대상을 기준으로 분기
			String yourName = (String) jsonObj.get("yourName");
			System.out.println("SocketHandler handleTextMessage  yourName : "+yourName);
			
			if(yourName.equals("ALL")) {
				for(String key : sessionMap.keySet()) {
					WebSocketSession wss = sessionMap.get(key);
					try {
						System.out.println("message key : "+key);
						System.out.println("message wss : "+wss);
						wss.sendMessage(new TextMessage(jsonObj.toJSONString()));
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}else {//개인 전송 대상자(yourName은 개인 sessionID)
				//상대방
				System.out.println("개인 전송 대상자 상대방 sessionID : "+yourName);
				WebSocketSession wss1 = sessionMap.get(yourName);
				try {
					wss1.sendMessage(new TextMessage(jsonObj.toJSONString()));
				}catch(Exception e) {
					e.printStackTrace();
				}
				//나에게도 보내줘
				String meName = (String) jsonObj.get("sessionId");
				WebSocketSession wss2 = sessionMap.get(meName);
				System.out.println("개인 전송 대상자 나 : " + meName);
				try {
					wss2.sendMessage(new TextMessage(jsonObj.toJSONString()));
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			break;
			//sessionUserMap에 User 등록
			case "userSave":
				// sessionUserMap에 sessionId와  userName 등록  
	     	    String sessionId = (String) jsonObj.get("sessionId");
	     	    String userName  = (String) jsonObj.get("userName");
	     	    sessionUserMap.put(sessionId, userName);
	     	    System.out.println("==================================================");
	     	    System.out.println("== sessionUserMap 저장내용 조회하여 arrayJsonUser에        ==");
	     	    System.out.println("==  각각의 JSONObject jsonUser로  변환                                  ==");
	     	    System.out.println("== 1. type : userSave                           ==");
	     	    System.out.println("== 2. sessionId : sessionUserMap.sessionId      ==");
	     	    System.out.println("== 3. userName  : sessionUserMap.userName       ==");
	     	    System.out.println("==================================================");
	     	    JSONArray arrayJsonUser = new JSONArray();
	     	    System.out.println("== 1. type : userSave                         ==");
	     	    Iterator<String> mapIter = sessionUserMap.keySet().iterator();
	     	    System.out.println("== 2. sessionId : sessionUserMap.sessionId    ==");
	     	    System.out.println("== 3. userName  : sessionUserMap.userName     ==");
	     	    while(mapIter.hasNext()) {
	     	    	String key = mapIter.next();
	     	    	String value = sessionUserMap.get(key);
	     	    	System.out.println("Key : Value --> " + key + " : " + value);
	     	    	jsonUser = new JSONObject();
	     	    	jsonUser.put("type", "userSave");
			     	jsonUser.put("sessionId",key);
			     	jsonUser.put("userName",value);
			     	arrayJsonUser.add(jsonUser);
	     	    }
	     	    System.out.println("====== session을 Get하여 User 내용 전송 ========");
	            System.out.printf( "arrayJsonUser: %s\n", arrayJsonUser);
	            
	            //전체에 User 등록하게 함
	            for(String key : sessionMap.keySet()) {
	            	WebSocketSession wss = sessionMap.get(key);
	            	try {
						wss.sendMessage(new TextMessage(arrayJsonUser.toJSONString()));
					} catch (Exception e) {
						e.printStackTrace();
					}
	            }
	            break;
		}
 
	}
	
	//웹 소켓 연결 
	@SuppressWarnings("unchecked")
	   public void afterConnectionEstablished(WebSocketSession session) throws Exception{
	      System.out.println("2. SocketHandler afterCOnnectionEstablished start...");
	      // 웹소켓에 연결이 되면 동작
	      super.afterConnectionEstablished(session);  
	      //아버지한테 연결해달라하고 -- 여기가 바인딩에 해당 진짜 연결은 여기서 된다. 세션이 열린것
	      //이걸 선언하기 전에는 getId가 없다. 연결이 안됬으니까.
	      //연결 소켓을 mAP에 등록 여기서 진짜로 연결하고 연결한 정보를 아래 세션맵에다 저장을하고
	      //연결이 되어야만 세션에 아이디가 생긴다. 
	      
	      sessionMap.put(session.getId(), session); // 그걸 맵에다 저장해두겟다 
	      // 세션맵은 위에 선언한 세션맵이고 해쉬맵은 메모링에 달고다니려고 쓰는거고 
	      JSONObject jsonObj = new JSONObject();
	
	      jsonObj.put("type", "getId"); //이것들을  json으로 말아서 샌드메시지로 클라이언트로 보냄

	      jsonObj.put("sessionId", session.getId()); 
	      // SocketServer 가 Client에게 전송
	      session.sendMessage(new TextMessage(jsonObj.toJSONString()));
	   }
 
	//웹 소켓 종료
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		System.out.println("socketHandler afterConnectionClosed(웹소켓 종료)");
//		sessionMap.remove(session.getId());
//		super.afterConnectionClosed(session, status);
	}
	
	// handleTextMessage 메소드에 JSON 파일이 들어오면 파싱해주는 함수를 추가
	private static JSONObject jsonToObjectParser(String jsonStr) {
		JSONParser parser = new JSONParser();
		JSONObject jsonObj = null;
		try {
			jsonObj = (JSONObject) parser.parse(jsonStr);
		} catch (Exception e) {
			System.out.println("jsonToObjectParser Exception : "+e.getMessage());
		}
		return jsonObj;
	}
}

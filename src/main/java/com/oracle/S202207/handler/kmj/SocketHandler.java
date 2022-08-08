package com.oracle.S202207.handler.kmj;

import java.util.HashMap;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.oracle.S202207.service.kmj.MessageService;


@Component
public class SocketHandler extends TextWebSocketHandler {

	@Autowired
	private MessageService ms;
	
	private String FILE_UPLOAD_PATH = "";
	
	//      세션 id    세션 객체
	HashMap<String, WebSocketSession> sessionMap = new HashMap<>();
	
	//      세션 id   Member
	HashMap<String, String> sessionUserMap = new HashMap<>();
	
	JSONObject jsonUser = null;
	
	//메시지 발송
	public void handleTextMessage(WebSocketSession session, TextMessage message ) {
		
		String msg = message.getPayload();
		for(String key : sessionMap.keySet()) {
			WebSocketSession wss = sessionMap.get(key);
			try {
			wss.sendMessage(new TextMessage(msg));
			} catch (Exception e) {
				e.printStackTrace();
			}	
		}
		System.out.println("9. SocketHandler handleTextMessage msg : " + msg);
		
		JSONObject jsonObj = jsonToObjectParser(msg);
	 
	}
	
	//웹 소켓 연결 
	public void afterConnectionEstablished(WebSocketSession session, TextMessage message) throws Exception {
		System.out.println("2. SocketHandler afterCOnnectionEstablished start(웹소켓 연결)");
		super.afterConnectionEstablished(session);
		sessionMap.put(session.getId(), session);
	}
	


	// handleTextMessage 메소드에 JSON 파일이 들어오면 파싱
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
	
	
	
	//웹 소켓 종료
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		System.out.println("socketHandler afterConnectionClosed(웹소켓 종료)");
		sessionMap.remove(session.getId());
		super.afterConnectionClosed(session, status);
	}
	
}

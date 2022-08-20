package com.oracle.S202207.service.kmj;

import java.util.List;

import com.oracle.S202207.model.kmj.Chat;

public interface ChatService {

	List<Chat> keywordList(Chat chat);

	List<Chat> allChatList(Chat chat);
 
}

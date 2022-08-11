package com.oracle.S202207.controller.kjh;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.oracle.S202207.domain.kjh.Host;
import com.oracle.S202207.service.kjh.HostViewService;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class HostViewApiController {
	private final HostViewService js;
	
	@Data
	@AllArgsConstructor
	class Result<T>{
		private T maps;
	}
	
	@Data
	@AllArgsConstructor
	class HostMap{
		private String lat;
		private String lng;
	}
	
	
	// 전체 리스트 클러스터용
	@SuppressWarnings("unchecked")
	@GetMapping("/restApi/hostList")
	public Result hostList() {
		System.out.println("HostViewApiController hostList Starts...");
		List<Host> hostList=js.hostList();
		
		List<HostMap> hostListMap=hostList.stream()
									.map(m-> new HostMap(m.getLat(), m.getLng()))
									.collect(Collectors.toList());
		
		return new Result(hostListMap);
	}
	
	// 특정 농장 번호 

	
}

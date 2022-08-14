package com.oracle.S202207.controller.kjh;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
		private String shortintro;
		private int farmno;
	}
	
	@Data
	@AllArgsConstructor
	class HosetDetail{
		private String lat;
		private String lng;
		private int farmno;
	}
	
	// 전체 리스트 클러스터용
	@SuppressWarnings("unchecked")
	@GetMapping("/restApi/hostList")
	public Result hostList(Model model) {
		System.out.println("HostViewApiController hostList Starts...");
		List<Host> hostList=js.hostList();
		
		List<HostMap> hostListMap=hostList.stream()
									.map(m-> new HostMap(m.getLat(), m.getLng(), m.getShortintro(), m.getFarmno()))
									.collect(Collectors.toList());
		
		Result result=new Result(hostListMap);
		
		return result;
	}
	
	// 특정 농장 번호 
	@GetMapping("/restApi/hostDetail/{farmno}")
	public HosetDetail hostDetail(@PathVariable("farmno") int farmno, Model model) {
		System.out.println("HostViewApiController hostDetail Starts...");
		Host hostDetail=js.hostDetail(farmno);
		
		return new HosetDetail(hostDetail.getLat(), hostDetail.getLng(), farmno);
	}
	
}

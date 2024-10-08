package controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import dto.Receiving;
import dto.Warehouse;
import lombok.RequiredArgsConstructor;
import service.ReceivingService;

@Controller
@RequestMapping("/purchase/receiving")
@RequiredArgsConstructor
public class ReceivingController {
    private final ReceivingService receivingService;

    // 입고 등록 페이지 - 구매팀 ROLE만 접근 가능
    @PreAuthorize("hasRole('ROLE_PURCHASING_TEAM')")
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(Model model, Principal principal) {
    	// 창고 목록 조회
    	List<Warehouse> warehouseList = receivingService.getWarehouseList();
    	model.addAttribute("warehouseList", warehouseList);
       
        Map<String, Object> ordersMap = new HashMap<>();
        ordersMap.put("pageNum", "1");
        ordersMap.put("pageSize", "10");

        Map<String, Object> ordersResult = receivingService.getOrdersList(ordersMap);
        model.addAttribute("ordersResult", ordersResult.get("ordersList"));


        // 로그인한 사용자의 아이디 추가
        String userId = principal.getName();
        model.addAttribute("userId", userId);

        return "purchase/receiving/receiving_register"; // 입고 등록 페이지로 이동
    }

    // 입고 등록 처리 - 구매팀 ROLE만 접근 가능
    @PreAuthorize("hasRole('ROLE_PURCHASING_TEAM')")
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@ModelAttribute Receiving receiving, Principal principal, Model model) {
        // 로그인한 사용자의 아이디를 입고 정보에 추가
        String userId = principal.getName();
        receiving.setUserid(userId);

        // 입고 등록 서비스 호출
        receivingService.addReceiving(receiving);

        // 등록된 입고 정보 다시 조회하여 모델에 추가
        Receiving newReceiving = receivingService.getReceivingById(receiving.getReceivingId());
        model.addAttribute("newReceiving", newReceiving);
        // 창고 목록도 다시 조회
        List<Warehouse> warehouseList = receivingService.getWarehouseList();
        model.addAttribute("warehouseList", warehouseList);

        Map<String, Object> ordersMap = new HashMap<>();
        ordersMap.put("pageNum", "1");
        ordersMap.put("pageSize", "10");
        
        Map<String, Object> ordersResult = receivingService.getOrdersList(ordersMap);
        model.addAttribute("ordersResult", ordersResult.get("ordersList"));

        return "purchase/receiving/receiving_register"; // 입고 등록 페이지로 다시 이동
    }

    // 발주 목록 조회 (페이징 및 검색 처리)
    @RequestMapping(value = "/ordersList", method = RequestMethod.GET)
    public String getOrdersList(@RequestParam Map<String, Object> map, Model model) {
        // 페이지 번호와 페이지 크기 기본 설정
        if (!map.containsKey("pageNum")) {
            map.put("pageNum", "1");
        }
        if (!map.containsKey("pageSize")) {
            map.put("pageSize", "10");
        }

        // 발주 리스트와 페이징 정보 조회
        Map<String, Object> resultMap = receivingService.getOrdersList(map);

        // 페이징 정보와 발주 리스트를 모델에 추가
        model.addAttribute("pager", resultMap.get("pager"));
        model.addAttribute("ordersList", resultMap.get("ordersList"));
        model.addAttribute("searchMap", map);

        return "purchase/receiving/orders_list";  // 발주 목록 페이지 뷰
    }
}

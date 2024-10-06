package controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dto.Orders;
import dto.Supplier;
import lombok.RequiredArgsConstructor;
import service.OrdersService;

@Controller
@RequestMapping("/purchase/orders")
@RequiredArgsConstructor
public class OrdersController {
    private final OrdersService ordersService;

    // 발주 등록 페이지 - 구매팀 ROLE만 접근 가능
    @PreAuthorize("hasRole('ROLE_PURCHASING_TEAM')")
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(Model model, Principal principal) {
        // 공급 업체 목록 조회 후 모델에 추가하여 드롭다운에 사용
        List<Supplier> supplierList = ordersService.getSupplierList();
        model.addAttribute("supplierList", supplierList);

        // 제품 목록 조회 및 추가
        Map<String, Object> productMap = new HashMap<>();
        productMap.put("pageNum", "1");
        productMap.put("pageSize", "10");

        Map<String, Object> productResult = ordersService.getProductList(productMap);
        model.addAttribute("productList", productResult.get("productList"));
        
        // 발주 목록 조회하여 모델에 추가
        // 등록된 이후의 전체 발주 목록 조회하여 모델에 추가
        List<Orders> ordersList = ordersService.getAllOrders();
        model.addAttribute("ordersList", ordersList);
        
        // 로그인한 사용자 아이디를 모델에 추가
        String userId = principal.getName(); // 로그인한 사용자의 아이디 가져오기
        model.addAttribute("userId", userId);

        return "purchase/orders/orders_register";
    }

    @PreAuthorize("hasRole('ROLE_PURCHASING_TEAM')")
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@ModelAttribute Orders orders, Model model) {
        // 발주 등록
        ordersService.addOrders(orders);

        // 등록 후 리다이렉트
        return "redirect:/purchase/orders/register";
    }
    
    // 제품 리스트 조회 - 모달 창에서 페이징 및 검색 처리
    @RequestMapping(value = "/productList", method = RequestMethod.GET)
    public String getProductList(@RequestParam Map<String, Object> map, Model model) {
        if (!map.containsKey("pageNum")) {
            map.put("pageNum", "1");
        }
        if (!map.containsKey("pageSize")) {
            map.put("pageSize", "10");
        }

        // 제품 리스트와 페이징 정보 조회
        Map<String, Object> resultMap = ordersService.getProductList(map);

        // 페이징 정보와 제품 리스트를 모델에 추가
        model.addAttribute("pager", resultMap.get("pager"));
        model.addAttribute("productList", resultMap.get("productList"));
        model.addAttribute("searchMap", map);

        return "purchase/orders/product_list";  // 제품 리스트 페이지 뷰 (모달에서 사용)
    }
    
    /*
    // 공급업체 검색 - Ajax 요청 처리
    @GetMapping("/supplier/search")
    @ResponseBody
    public List<Map<String, Object>> searchSuppliers(@RequestParam String keyword) {
        List<Supplier> suppliers = ordersService.getSupplierListByKeyword(keyword);
        return suppliers.stream()
                .map(supplier -> {
                    Map<String, Object> supplierMap = new HashMap<>();
                    supplierMap.put("supplierId", supplier.getSupplierId());
                    supplierMap.put("supplierName", supplier.getSupplierName());
                    return supplierMap;
                })
                .collect(Collectors.toList());
    }
    */

}

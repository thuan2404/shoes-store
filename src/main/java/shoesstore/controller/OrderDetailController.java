package shoesstore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import shoesstore.entities.Orders;
import shoesstore.entities.Paging;
import shoesstore.service.OrderService;

@Controller
@RequestMapping("order")
public class OrderDetailController {
	@Autowired
	private OrderService<Orders, Integer> orderService;
	
	@GetMapping("list")
	public String redirectOrderList() {
		return "redirect:/order/list/1";
	}

	@GetMapping("list/{indexPage}")
	public String findAll(@PathVariable("indexPage") int indexPage, Model model) {
		Paging paging = new Paging(indexPage);
		List<Orders> orders = orderService.findAll(paging);
		model.addAttribute("orders", orders);
		model.addAttribute("paging", paging);
		return "order-list";
	}
	@RequestMapping(value="status/{id}",method = RequestMethod.GET, produces="application/json")
	@ResponseBody
	public Object update(@PathVariable("id")Integer id ) {
		Orders orders = orderService.findById(Orders.class, id);
		orders.setStatus(1);
		orderService.update(orders);
		Object info = 1;
		return info;
	}
	
	@GetMapping("view/{id}")
	public String viewOrderDetail(@PathVariable("id")Integer id , Model model) {
		Orders order = orderService.findById(Orders.class, id);
		model.addAttribute("list", order.getOrderDetails());
		return "order-list-detail";
	}
	
	@RequestMapping(value="delete/{id}",method = RequestMethod.GET)
	public String remoce(@PathVariable("id")Integer id ) {
		Orders order = orderService.findById(Orders.class, id);
		orderService.delete(order);
		return "order-list";
	}

}

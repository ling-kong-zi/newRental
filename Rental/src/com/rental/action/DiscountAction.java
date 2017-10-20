package com.rental.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.rental.entity.Discount;
import com.rental.service.DiscountService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class DiscountAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	@Autowired
	private DiscountService discountService;

	private Discount discount;
	public String showContent() throws Exception {
			List<Discount> list=discountService.getAll();
			if (list!=null) {
				ActionContext.getContext().put("list", list);
			}
			return "discount";
	}
	public DiscountService getDiscountService() {
		return discountService;
	}
	public void setDiscountService(DiscountService discountService) {
		this.discountService = discountService;
	}
	public Discount getDiscount() {
		return discount;
	}
	public void setDiscount(Discount discount) {
		this.discount = discount;
	}

	//----------------------

	
	
}

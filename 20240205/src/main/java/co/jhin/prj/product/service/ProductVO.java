package co.jhin.prj.product.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductVO extends ProductStarVO {
	private int productId;
	private String productName;
	private String productSubject;
	private int productPrice;
	private String productImg;
}

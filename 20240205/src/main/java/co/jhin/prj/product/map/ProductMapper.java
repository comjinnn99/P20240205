package co.jhin.prj.product.map;

import java.util.List;

import co.jhin.prj.product.service.ProductVO;

public interface ProductMapper {
	List<ProductVO> productSelectList(String key);
}

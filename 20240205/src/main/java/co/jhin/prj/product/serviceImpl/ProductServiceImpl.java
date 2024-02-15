package co.jhin.prj.product.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import co.jhin.prj.product.map.ProductMapper;
import co.jhin.prj.product.service.ProductService;
import co.jhin.prj.product.service.ProductVO;

@Service
@Primary
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductMapper map;

	@Override
	public List<ProductVO> productSelectList(String key) {
		return map.productSelectList(key);
	}

}

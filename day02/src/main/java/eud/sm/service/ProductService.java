package eud.sm.service;

import eud.sm.dto.Product;
import eud.sm.frame.SmService;
import eud.sm.repository.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductService implements SmService <Product, Integer> {
    final ProductRepository productRepository;

    @Override
    public void register(Product product) throws Exception {
        productRepository.insert(product);
    }

    @Override
    public void modify(Product product) throws Exception {
        productRepository.update(product);
    }

    @Override
    public void remove(Integer integer) throws Exception {
        productRepository.delete(integer);
    }

    @Override
    public List<Product> get() throws Exception {
        return productRepository.selectAll();
    }

    @Override
    public Product get(Integer integer) throws Exception {
        return productRepository.select(integer);
    }
}

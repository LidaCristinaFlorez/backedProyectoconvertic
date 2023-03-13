package com.proyect.ishop.convertic.service;

import com.proyect.ishop.convertic.domain.model.Producto;
import com.proyect.ishop.convertic.repository.IProductoDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ProductoService implements IProductoService{

    @Autowired
    private IProductoDao productoDao;


    @Override
    @Transactional(readOnly = true)
    public List<Producto> findProductoByNombre(String termino) {
        return productoDao.findProductoByDescripcionContainingIgnoreCase(termino);
    }
}

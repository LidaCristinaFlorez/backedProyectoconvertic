package com.proyect.ishop.convertic.service;

import com.proyect.ishop.convertic.domain.model.Producto;


import java.util.List;

public interface IProductoService {


    public List<Producto> findProductoByNombre(String termino);
}

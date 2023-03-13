package com.proyect.ishop.convertic.controller;


import com.proyect.ishop.convertic.domain.model.Producto;
import com.proyect.ishop.convertic.service.IClienteService;
import com.proyect.ishop.convertic.service.IProductoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/productos")
public class ProductoController {

    @Autowired
    private IProductoService productoService;


    @GetMapping("/filtrar/{termino}")
    @ResponseStatus(HttpStatus.OK)
    public List<Producto> filtrarProductos(@PathVariable String termino){
        return productoService.findProductoByNombre(termino);
    }


}

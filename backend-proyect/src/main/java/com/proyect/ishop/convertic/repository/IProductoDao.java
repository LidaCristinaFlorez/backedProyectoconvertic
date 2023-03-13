package com.proyect.ishop.convertic.repository;

import com.proyect.ishop.convertic.domain.model.Producto;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface IProductoDao extends CrudRepository<Producto, Long>{

    /*@Query("select p from Producto p where p.descripcion like ?1")
    public List<Producto> findByNombre(String termino);*/

    public List<Producto> findProductoByDescripcionContainingIgnoreCase(String termino);

}

package com.heartmole.base.rest.controller;

import com.heartmole.base.rest.model.Departmento;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Controlador del servicio REST de ubigeo.
 * @author Anthony Gutiérrez <anthony.gutierrez@pucp.pe>
 */
@RestController
public class UbigeoController {
    
    @RequestMapping("/departamento")
    public Departmento getDepartamento() {
        return new Departmento(1, "150000", "Lima");
    }
    
}

package com.heartmole.base.rest.model;

/**
 * Clase que representa un departamento del Perú.
 * @author Anthony Gutiérrez <anthony.gutierrez@pucp.pe>
 */
public class Departmento {
    
    private final int id;
    private final String codigo;
    private final String nombre;
    
    public Departmento (int id, String codigo, String nombre) {
        this.id = id;
        this.codigo = codigo;
        this.nombre = nombre;
    }

    public int getId() {
        return id;
    }

    public String getCodigo() {
        return codigo;
    }

    public String getNombre() {
        return nombre;
    }

}

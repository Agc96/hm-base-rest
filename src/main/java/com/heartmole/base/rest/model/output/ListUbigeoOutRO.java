package com.heartmole.base.rest.model.output;

import java.util.List;

/**
 *
 * @author Anthony Gutiérrez <anthony.gutierrez@pucp.pe>
 */
public class ListUbigeoOutRO extends BaseOutRO {
    
    private final List<DepartamentoOutRO> departamentos;

    public ListUbigeoOutRO (int errorCode, String message,
            List<DepartamentoOutRO> departamentos) {
        super(errorCode, message);
        this.departamentos = departamentos;
    }
    
    public int getDepartamentosCount () {
        return (departamentos == null) ? 0 : departamentos.size();
    }
    
    public DepartamentoOutRO getDepartamentoAt (int index) {
        return (departamentos == null) ? null : departamentos.get(index);
    }
    
}

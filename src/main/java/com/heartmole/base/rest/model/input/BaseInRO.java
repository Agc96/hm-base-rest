package com.heartmole.base.rest.model.input;

/**
 *
 * @author Anthony Gutiérrez <anthony.gutierrez@pucp.pe>
 */
public class BaseInRO {
    
    private final String applicationName;
    
    public BaseInRO (String applicationName) {
        this.applicationName = applicationName;
    }

    public String getApplicationName() {
        return applicationName;
    }
    
}

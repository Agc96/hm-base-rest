package com.heartmole.base.rest.model.output;

/**
 *
 * @author Anthony Gutiérrez <anthony.gutierrez@pucp.pe>
 */
public class BaseOutRO {
    
    private final int errorCode;
    private final String message;
    
    public BaseOutRO (int errorCode, String message) {
        this.errorCode = errorCode;
        this.message = message;
    }

    public int getErrorCode() {
        return errorCode;
    }

    public String getMessage() {
        return message;
    }
    
}

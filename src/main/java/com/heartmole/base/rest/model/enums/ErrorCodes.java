package com.heartmole.base.rest.model.enums;

/**
 * Enumerado de los códigos de error y mensajes a mostrarse como respuesta a
 * las llamadas a los servicios REST.
 * @author Anthony Gutiérrez <anthony.gutierrez@pucp.pe>
 */
public enum ErrorCodes {
    
    NO_ERROR(0, null),
    ERROR_UNKNOWN(9000, "Error inesperado en el servicio REST."),
    NO_RESULTS(9001, "No se encontraron resultados."),
    MISSING_DATA(9002, "Datos requeridos."),
    INVALID_DATA(9005, "Datos no válidos."),
    MISSING_APP_NAME(9003, "Nombre de aplicación requerido."),
    INVALID_APP_NAME(9004, "Nombre de aplicación inválido.");
    
    int code;
    String message;
    
    ErrorCodes (int code, String message) {
        this.code = code;
        this.message = message;
    }

    public int getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }
    
}

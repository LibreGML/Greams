package com.badlogic.gdx.utils;

public class GdxRuntimeException extends RuntimeException {
    public GdxRuntimeException() {
    }

    public GdxRuntimeException(String message) {
        super(message);
    }

    public GdxRuntimeException(Throwable cause) {
        super(cause);
    }
}

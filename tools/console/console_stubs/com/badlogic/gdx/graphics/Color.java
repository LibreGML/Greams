package com.badlogic.gdx.graphics;

public class Color {
    public static final Color WHITE = new Color(1f, 1f, 1f, 1f);

    public float r;
    public float g;
    public float b;
    public float a;

    public Color() {
    }

    public Color(float r, float g, float b, float a) {
        this.r = r;
        this.g = g;
        this.b = b;
        this.a = a;
    }
}

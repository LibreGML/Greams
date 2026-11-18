package com.badlogic.gdx.graphics.g2d;

public class BitmapFont {
    public static class BitmapFontData {
        public float scaleX = 1f;
        public float scaleY = 1f;

        public void setScale(float scale) {
            scaleX = scale;
            scaleY = scale;
        }
    }

    private final BitmapFontData data = new BitmapFontData();

    public BitmapFontData getData() {
        return data;
    }
}

package com.badlogic.gdx.graphics.g2d;

public class GlyphLayout {
    public float width;
    public float height;

    public void setText(BitmapFont font, CharSequence str) {
        width = str == null ? 0 : str.length() * 8f;
        height = 16f;
    }
}

package com.badlogic.gdx;

public interface Input {
    void setOnscreenKeyboardVisible(boolean visible);

    boolean isTouched();

    boolean isTouched(int pointer);

    int getX();

    int getY();
}

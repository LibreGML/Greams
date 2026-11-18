package com.badlogic.gdx;

import com.badlogic.gdx.files.FileHandle;

public interface Files {
    FileHandle internal(String path);

    FileHandle local(String path);

    FileHandle external(String path);

    String getLocalStoragePath();
}

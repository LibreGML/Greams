package com.badlogic.gdx.files;

import java.io.File;

public class FileHandle {
    public boolean exists() {
        return false;
    }

    public String readString() {
        return "";
    }

    public String readString(String charset) {
        return "";
    }

    public long length() {
        return 0L;
    }

    public File file() {
        return null;
    }

    public FileHandle child(String name) {
        return this;
    }

    public void mkdirs() {
    }

    public void deleteDirectory() {
    }

    public void copyTo(FileHandle dest) {
    }

    public void writeString(String string, boolean append) {
    }

    public FileHandle[] list() {
        return new FileHandle[0];
    }

    public boolean isDirectory() {
        return false;
    }

    public String name() {
        return "";
    }
}

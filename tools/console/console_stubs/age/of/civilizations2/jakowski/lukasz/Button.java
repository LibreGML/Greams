package age.of.civilizations2.jakowski.lukasz;

public class Button extends MenuElement {
    public TypeOfButton typeOfButton;

    public enum TypeOfButton {
        KEYBOARD,
        KEYBOARD_SAVE,
        KEYBOARD_OPTIONS,
        KEYBOARD_ACTIVE,
        KEYBOARD_NUM
    }
}

.class Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic_ReflectedCheckbox;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;
.source "Button_Menu_Classic_ReflectedCheckbox.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIIIIZZ)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;-><init>(Ljava/lang/String;IIIIIZZ)V

    return-void
.end method


# virtual methods
.method protected buildCheckbox()Lage/of/civilizations2/jakowski/lukasz/Button$Checkbox;
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic_ReflectedCheckbox;->checkbox:Z

    if-eqz v0, :cond_0

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic_ReflectedCheckbox$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic_ReflectedCheckbox$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic_ReflectedCheckbox;)V

    return-object v0

    :cond_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic_ReflectedCheckbox$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic_ReflectedCheckbox$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic_ReflectedCheckbox;)V

    return-object v0
.end method

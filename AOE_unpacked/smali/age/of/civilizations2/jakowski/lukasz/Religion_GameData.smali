.class Lage/of/civilizations2/jakowski/lukasz/Religion_GameData;
.super Ljava/lang/Object;
.source "Religion_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

.field private sIconName:Ljava/lang/String;

.field private sName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Religion_GameData;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    return-object v0
.end method

.method protected getIconName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Religion_GameData;->sIconName:Ljava/lang/String;

    return-object v0
.end method

.method protected final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Religion_GameData;->sName:Ljava/lang/String;

    return-object v0
.end method

.method protected final setColor(Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Religion_GameData;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    return-void
.end method

.method protected setIconName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Religion_GameData;->sIconName:Ljava/lang/String;

    return-void
.end method

.method protected final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Religion_GameData;->sName:Ljava/lang/String;

    return-void
.end method

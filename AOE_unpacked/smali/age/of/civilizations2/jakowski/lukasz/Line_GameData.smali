.class Lage/of/civilizations2/jakowski/lukasz/Line_GameData;
.super Ljava/lang/Object;
.source "Line_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private flipX:Z

.field private movable:Z

.field private reapeatImage:Z

.field private sImageName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Line_GameData;->reapeatImage:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Line_GameData;->flipX:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Line_GameData;->movable:Z

    return-void
.end method


# virtual methods
.method protected final getFlipX()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Line_GameData;->flipX:Z

    return v0
.end method

.method protected final getImageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Line_GameData;->sImageName:Ljava/lang/String;

    return-object v0
.end method

.method protected final getMovable()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Line_GameData;->movable:Z

    return v0
.end method

.method protected final getRapeatImage()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Line_GameData;->reapeatImage:Z

    return v0
.end method

.method protected final setFlipX(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Line_GameData;->flipX:Z

    return-void
.end method

.method protected final setImageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Line_GameData;->sImageName:Ljava/lang/String;

    return-void
.end method

.method protected final setMovable(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Line_GameData;->movable:Z

    return-void
.end method

.method protected final setReapeatImage(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Line_GameData;->reapeatImage:Z

    return-void
.end method

.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ActionInfo_RecruitOccupied$1;
.super Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo;
.source "Menu_InGame_ActionInfo_RecruitOccupied.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ActionInfo_RecruitOccupied;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ActionInfo_RecruitOccupied;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ActionInfo_RecruitOccupied;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ActionInfo_RecruitOccupied$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ActionInfo_RecruitOccupied;

    invoke-direct {p0, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_INGAME_MOVEMENT_ZERO_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ActionInfo_RecruitOccupied$1;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_INGAME_MOVEMENT_ZERO_HOVER:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_INGAME_MOVEMENT_ZERO:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0
.end method

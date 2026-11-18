.class Lage/of/civilizations2/jakowski/lukasz/Save_GameData2;
.super Ljava/lang/Object;
.source "Save_GameData2.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected AI_AGGRESSIVNESS:F


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final buildData()V
    .locals 1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->AI_AGGRESSIVNESS:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData2;->AI_AGGRESSIVNESS:F

    return-void
.end method

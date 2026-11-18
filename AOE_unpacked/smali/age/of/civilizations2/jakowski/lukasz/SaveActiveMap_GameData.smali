.class Lage/of/civilizations2/jakowski/lukasz/SaveActiveMap_GameData;
.super Ljava/lang/Object;
.source "SaveActiveMap_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected iActiveMapID:I

.field protected iActiveMapScale:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SaveActiveMap_GameData;->iActiveMapID:I

    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SaveActiveMap_GameData;->iActiveMapScale:I

    return-void
.end method

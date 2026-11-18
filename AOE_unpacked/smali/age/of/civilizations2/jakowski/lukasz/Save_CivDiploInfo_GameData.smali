.class public Lage/of/civilizations2/jakowski/lukasz/Save_CivDiploInfo_GameData;
.super Ljava/lang/Object;
.source "Save_CivDiploInfo_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected iValue:I

.field protected id:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_CivDiploInfo_GameData;->id:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_CivDiploInfo_GameData;->id:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Save_CivDiploInfo_GameData;->iValue:I

    return-void
.end method

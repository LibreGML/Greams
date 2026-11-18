.class Lage/of/civilizations2/jakowski/lukasz/Timelapse_Owners_GameData;
.super Ljava/lang/Object;
.source "Timelapse_Owners_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected lProvinceOwnersAtBeginning:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Owners_GameData;->lProvinceOwnersAtBeginning:Ljava/util/List;

    return-void
.end method

.class Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData_MessageData;
.super Ljava/lang/Object;
.source "PeaceTreaty_GameData_MessageData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected PEACE_TREATY_TAG:Ljava/lang/String;

.field protected peaceTreaty_GameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;


# direct methods
.method protected constructor <init>(Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData_MessageData;->peaceTreaty_GameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData_MessageData;->PEACE_TREATY_TAG:Ljava/lang/String;

    return-void
.end method

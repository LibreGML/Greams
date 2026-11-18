.class Lage/of/civilizations2/jakowski/lukasz/Civ_Task;
.super Ljava/lang/Object;
.source "Civ_Task.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected iProvinceID:I

.field protected taskType:Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;->ASSIMILATE_PROVINCE:Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civ_Task;->taskType:Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;

    return-void
.end method


# virtual methods
.method protected runTask()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

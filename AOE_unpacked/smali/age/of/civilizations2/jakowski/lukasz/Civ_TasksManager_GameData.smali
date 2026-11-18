.class Lage/of/civilizations2/jakowski/lukasz/Civ_TasksManager_GameData;
.super Ljava/lang/Object;
.source "Civ_TasksManager_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected civTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civ_Task;",
            ">;"
        }
    .end annotation
.end field

.field protected iTasksSize:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civ_TasksManager_GameData;->civTasks:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civ_TasksManager_GameData;->iTasksSize:I

    return-void
.end method


# virtual methods
.method protected final addNewTask(Lage/of/civilizations2/jakowski/lukasz/Civ_Task;)V
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civ_TasksManager_GameData;->civTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Civ_TasksManager_GameData$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Civ_Task_Type:[I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civ_TasksManager_GameData;->civTasks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civ_Task;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civ_Task;->taskType:Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civ_TasksManager_GameData;->civTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civ_Task;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civ_Task;->iProvinceID:I

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/Civ_Task;->iProvinceID:I

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civ_TasksManager_GameData;->civTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civ_TasksManager_GameData;->civTasks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civ_TasksManager_GameData;->iTasksSize:I

    return-void
.end method

.method protected final runTasks()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civ_TasksManager_GameData;->iTasksSize:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

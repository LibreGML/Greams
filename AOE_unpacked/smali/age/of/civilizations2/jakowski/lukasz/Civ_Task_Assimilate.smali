.class Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Assimilate;
.super Lage/of/civilizations2/jakowski/lukasz/Civ_Task;
.source "Civ_Task_Assimilate.java"


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Civ_Task;-><init>()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;->ASSIMILATE_PROVINCE:Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Assimilate;->taskType:Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Assimilate;->iProvinceID:I

    return-void
.end method

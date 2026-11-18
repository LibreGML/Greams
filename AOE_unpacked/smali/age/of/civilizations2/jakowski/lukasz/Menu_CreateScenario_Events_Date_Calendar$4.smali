.class Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Date_Calendar$4;
.super Lage/of/civilizations2/jakowski/lukasz/Button_CalendarDay;
.source "Menu_CreateScenario_Events_Date_Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Date_Calendar;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Date_Calendar;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Date_Calendar;III)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Date_Calendar$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Date_Calendar;

    invoke-direct {p0, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Button_CalendarDay;-><init>(III)V

    return-void
.end method


# virtual methods
.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 4

    const v3, 0x3efae148    # 0.49f

    const v2, 0x3ec28f5c    # 0.38f

    if-nez p1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Day:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Date_Calendar$4;->getCurrent()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Date_Calendar$4;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v3, v3, v3, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_0
.end method

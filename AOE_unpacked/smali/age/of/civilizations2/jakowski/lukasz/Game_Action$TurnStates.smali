.class final enum Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;
.super Ljava/lang/Enum;
.source "Game_Action.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Game_Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TurnStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

.field public static final enum END_OF_THE_GAME:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

.field public static final enum INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

.field public static final enum LOADING_NEXT_TURN:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

.field public static final enum LOAD_AI_RTO:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

.field public static final enum RESULTS_STANDINGS:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

.field public static final enum SAVE_THE_GAME:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

.field public static final enum START_NEXT_TURN:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

.field public static final enum TURN_ACTIONS:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    const/4 v1, 0x0

    const-string v2, "INPUT_ORDERS"

    invoke-direct {v0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    const/4 v2, 0x1

    const-string v3, "LOAD_AI_RTO"

    invoke-direct {v0, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->LOAD_AI_RTO:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    const/4 v3, 0x2

    const-string v4, "TURN_ACTIONS"

    invoke-direct {v0, v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->TURN_ACTIONS:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    const/4 v4, 0x3

    const-string v5, "LOADING_NEXT_TURN"

    invoke-direct {v0, v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->LOADING_NEXT_TURN:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    const/4 v5, 0x4

    const-string v6, "START_NEXT_TURN"

    invoke-direct {v0, v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->START_NEXT_TURN:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    const/4 v6, 0x5

    const-string v7, "SAVE_THE_GAME"

    invoke-direct {v0, v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->SAVE_THE_GAME:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    const/4 v7, 0x6

    const-string v8, "RESULTS_STANDINGS"

    invoke-direct {v0, v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->RESULTS_STANDINGS:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    const/4 v8, 0x7

    const-string v9, "END_OF_THE_GAME"

    invoke-direct {v0, v9, v8}, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->END_OF_THE_GAME:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    const/16 v0, 0x8

    new-array v0, v0, [Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    aput-object v9, v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->LOAD_AI_RTO:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->TURN_ACTIONS:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    aput-object v1, v0, v3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->LOADING_NEXT_TURN:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    aput-object v1, v0, v4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->START_NEXT_TURN:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    aput-object v1, v0, v5

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->SAVE_THE_GAME:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    aput-object v1, v0, v6

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->RESULTS_STANDINGS:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    aput-object v1, v0, v7

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->END_OF_THE_GAME:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    aput-object v1, v0, v8

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;
    .locals 1

    const-class v0, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    return-object p0
.end method

.method public static values()[Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    invoke-virtual {v0}, [Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    return-object v0
.end method

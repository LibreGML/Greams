.class Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_Graph_Data;
.super Ljava/lang/Object;
.source "MenuElement_Hover_Graph_Data.java"


# instance fields
.field private iCivID:I

.field private sText:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_Graph_Data;->iCivID:I

    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_Graph_Data;->sText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final getCivID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_Graph_Data;->iCivID:I

    return v0
.end method

.method protected final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_Graph_Data;->sText:Ljava/lang/String;

    return-object v0
.end method

.method protected final setCivID(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_Graph_Data;->iCivID:I

    return-void
.end method

.method protected final setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_Graph_Data;->sText:Ljava/lang/String;

    return-void
.end method

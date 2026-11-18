.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report$2;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Report_ProvinceLosses;
.source "Menu_InGame_Report.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;IIIII)V
    .locals 6

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Report_ProvinceLosses;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method protected getWidth()I
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getW()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    return v0
.end method

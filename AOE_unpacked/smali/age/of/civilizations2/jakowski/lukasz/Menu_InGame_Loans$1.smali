.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Loans$1;
.super Lage/of/civilizations2/jakowski/lukasz/Buton_Diplomacy_Loan;
.source "Menu_InGame_Loans.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Loans;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Loans;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Loans;IIIIIIII)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Loans$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Loans;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Buton_Diplomacy_Loan;-><init>(IIIIIIII)V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Loans$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Loans;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Loans;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Loans;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_RepayLoan(II)V

    return-void
.end method

.method protected getWidth()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Loans$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Loans;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Loans;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

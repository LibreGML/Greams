.class Lage/of/civilizations2/jakowski/lukasz/Game$10;
.super Ljava/lang/Object;
.source "Game.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Game$SetActiveProvince_ExtraAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Game;->updateSetActiveProvinceID_ExtraAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Game;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Game;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extraAction(I)V
    .locals 6

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->chooseProvinceMode:Z

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->chooseProvinceMode_BEFORE:Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->activeProvince_BEFORE:I

    if-ltz p1, :cond_14

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->chooseProvinceMode:Z

    if-nez v0, :cond_13

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit_Visible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$300(Lage/of/civilizations2/jakowski/lukasz/Game;)I

    move-result v0

    if-eq p1, v0, :cond_14

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceRecruit(Z)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->checkProvinceActionMenu()V

    goto/16 :goto_7

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruitInstantly_Visible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$300(Lage/of/civilizations2/jakowski/lukasz/Game;)I

    move-result v0

    if-eq p1, v0, :cond_14

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceRecruitInstantly(Z)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->checkProvinceActionMenu()V

    goto/16 :goto_7

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceDisband_Visible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$300(Lage/of/civilizations2/jakowski/lukasz/Game;)I

    move-result v0

    if-eq p1, v0, :cond_14

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceDisband(Z)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->checkProvinceActionMenu()V

    goto/16 :goto_7

    :cond_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRegroupArmy_Visible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$300(Lage/of/civilizations2/jakowski/lukasz/Game;)I

    move-result v0

    if-eq p1, v0, :cond_14

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceRegroupArmy(Z)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->checkProvinceActionMenu()V

    goto/16 :goto_7

    :cond_3
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->checkProvinceActionMenu()V

    goto/16 :goto_7

    :cond_4
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getColonizationOfWastelandIsEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->canColonizieWasteland_Tech(II)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_a

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceAction(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceAction_Colonize_TechRequired(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceAction_Colonize(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    invoke-virtual {v0, p1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->canColonizieWasteland_BorderOrArmy(II)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-lt v4, v3, :cond_6

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_0
    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceAction_Colonize(Z)V

    goto/16 :goto_6

    :cond_7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-lt v4, v3, :cond_9

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_1
    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceAction_Colonize_BorderOrArmy(Z)V

    goto/16 :goto_6

    :cond_a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceAction(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceAction_Colonize(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceAction_Colonize_TechRequired(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    invoke-virtual {v0, p1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->canColonizieWasteland_BorderOrArmy(II)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-lt v4, v3, :cond_c

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_2

    :cond_b
    const/4 v4, 0x0

    goto :goto_3

    :cond_c
    :goto_2
    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceAction_Colonize(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-lt v4, v3, :cond_e

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    const/4 v1, 0x0

    :cond_e
    :goto_4
    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceAction_Colonize_TechRequired(Z)V

    goto :goto_6

    :cond_f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-lt v4, v3, :cond_11

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_5

    :cond_10
    const/4 v1, 0x0

    :cond_11
    :goto_5
    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceAction_Colonize_BorderOrArmy(Z)V

    :goto_6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceAction(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceRecruit(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceRecruitInstantly(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceRegroupArmy(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceDisband(Z)V

    goto :goto_7

    :cond_12
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceAction(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceAction_Colonize(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceAction_Colonize_TechRequired(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceAction(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceRecruit(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceRecruitInstantly(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceRegroupArmy(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceDisband(Z)V

    goto :goto_7

    :cond_13
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->resetChooseProvinceData()V

    :cond_14
    :goto_7
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->updateProvinceNameWidth(I)V

    return-void
.end method

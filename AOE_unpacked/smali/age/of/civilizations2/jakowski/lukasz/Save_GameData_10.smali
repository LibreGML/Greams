.class public Lage/of/civilizations2/jakowski/lukasz/Save_GameData_10;
.super Ljava/lang/Object;
.source "Save_GameData_10.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected holyRomanEmpire_GameData:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final buildData()V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->holyRomanEmpire_Manager:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->getHRE()Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_10;->holyRomanEmpire_GameData:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    return-void
.end method

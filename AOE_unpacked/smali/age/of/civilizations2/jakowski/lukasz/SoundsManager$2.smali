.class Lage/of/civilizations2/jakowski/lukasz/SoundsManager$2;
.super Ljava/lang/Object;
.source "SoundsManager.java"

# interfaces
.implements Lcom/badlogic/gdx/audio/Music$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->loadMusic(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/SoundsManager;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/SoundsManager;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/SoundsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/badlogic/gdx/audio/Music;)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/SoundsManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->loadNextMusic()V

    return-void
.end method

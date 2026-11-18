.class public Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/LinkHandler;


# instance fields
.field private final handler:Landroid/os/Handler;

.field mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public openPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void

    :sswitch_0
    const-string v0, "showModDialog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "showKeyboard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :pswitch_0
    iput v2, v3, Landroid/os/Message;->what:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :pswitch_1
    iput v1, v3, Landroid/os/Message;->what:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x14c199fc -> :sswitch_1
        0x297a186d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

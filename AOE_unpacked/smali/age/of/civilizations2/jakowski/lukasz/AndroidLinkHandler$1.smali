.class Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler;->mActivity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v2, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/webkit/WebView;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    :try_start_0
    const-string v0, "file:android_asset/mod/web/index.html"

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    new-instance v0, Landroid/app/Dialog;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v4, v3, Landroid/graphics/Point;->x:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

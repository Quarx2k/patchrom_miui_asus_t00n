.class public Lmiui/external/Application;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Lmiui/external/SdkConstants;


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.miui.sdk"


# instance fields
.field private l:Z

.field private m:Lmiui/external/ApplicationDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 50
    invoke-direct {p0}, Lmiui/external/Application;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-direct {p0}, Lmiui/external/Application;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/external/Application;->l:Z

    .line 57
    invoke-virtual {p0}, Lmiui/external/Application;->onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;

    move-result-object v0

    iput-object v0, p0, Lmiui/external/Application;->m:Lmiui/external/ApplicationDelegate;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 138
    const-string v0, "miuisdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIUI SDK encounter errors, please contact miuisdk@xiaomi.com for support. phase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-object v0, Lmiui/external/SdkConstants$SdkError;->GENERIC:Lmiui/external/SdkConstants$SdkError;

    invoke-static {v0}, Lmiui/external/e;->a(Lmiui/external/SdkConstants$SdkError;)V

    .line 141
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 119
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 133
    :cond_0
    const-string v0, "miuisdk"

    const-string v1, "MIUI SDK encounter errors, please contact miuisdk@xiaomi.com for support."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    sget-object v0, Lmiui/external/SdkConstants$SdkError;->GENERIC:Lmiui/external/SdkConstants$SdkError;

    invoke-static {v0}, Lmiui/external/e;->a(Lmiui/external/SdkConstants$SdkError;)V

    .line 135
    return-void

    .line 123
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 126
    :cond_2
    instance-of v0, p1, Ljava/lang/ExceptionInInitializerError;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0
.end method

.method private i()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 62
    :try_start_0
    invoke-static {}, Lmiui/external/d;->isMiuiSystem()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    const/4 v1, 0x0

    const-string v2, "com.miui.sdk"

    const-string v3, "miui"

    invoke-static {v1, v2, v3}, Lmiui/external/d;->getApkPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    const/4 v2, 0x0

    const-string v3, "com.miui.sdk"

    invoke-static {v2, v3}, Lmiui/external/d;->getLibPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    const/4 v3, 0x0

    const-class v4, Lmiui/external/Application;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v1, v3, v2, v4}, Lmiui/external/b;->load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v1

    .line 66
    if-nez v1, :cond_0

    .line 67
    sget-object v1, Lmiui/external/SdkConstants$SdkError;->NO_SDK:Lmiui/external/SdkConstants$SdkError;

    invoke-static {v1}, Lmiui/external/e;->a(Lmiui/external/SdkConstants$SdkError;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return v0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    invoke-direct {p0, v1}, Lmiui/external/Application;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 75
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private j()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 80
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    const-string v3, "com.miui.internal.core.SdkManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "initialize"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/app/Application;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/util/Map;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    const-string v2, "initialize"

    invoke-direct {p0, v2, v0}, Lmiui/external/Application;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 93
    :goto_0
    return v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    invoke-direct {p0, v0}, Lmiui/external/Application;->a(Ljava/lang/Throwable;)V

    move v0, v1

    .line 91
    goto :goto_0

    :cond_0
    move v0, v2

    .line 93
    goto :goto_0
.end method

.method private k()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 98
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    const-string v3, "com.miui.internal.core.SdkManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "start"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/util/Map;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 103
    if-ne v0, v2, :cond_0

    .line 104
    sget-object v0, Lmiui/external/SdkConstants$SdkError;->LOW_SDK_VERSION:Lmiui/external/SdkConstants$SdkError;

    invoke-static {v0}, Lmiui/external/e;->a(Lmiui/external/SdkConstants$SdkError;)V

    move v0, v1

    .line 114
    :goto_0
    return v0

    .line 106
    :cond_0
    if-eqz v0, :cond_1

    .line 107
    const-string v2, "start"

    invoke-direct {p0, v2, v0}, Lmiui/external/Application;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 108
    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    invoke-direct {p0, v0}, Lmiui/external/Application;->a(Ljava/lang/Throwable;)V

    move v0, v1

    .line 112
    goto :goto_0

    :cond_1
    move v0, v2

    .line 114
    goto :goto_0
.end method


# virtual methods
.method final a(I)V
    .locals 0

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 217
    return-void
.end method

.method final a(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 229
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 230
    return-void
.end method

.method public final getApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lmiui/external/Application;->m:Lmiui/external/ApplicationDelegate;

    return-object v0
.end method

.method final l()V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 178
    return-void
.end method

.method final m()V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 191
    return-void
.end method

.method final n()V
    .locals 0

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 204
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lmiui/external/Application;->m:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lmiui/external/Application;->m:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0, p1}, Lmiui/external/ApplicationDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/external/Application;->a(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public final onCreate()V
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lmiui/external/Application;->l:Z

    if-nez v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lmiui/external/Application;->m:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lmiui/external/Application;->m:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0, p0}, Lmiui/external/ApplicationDelegate;->a(Lmiui/external/Application;)V

    .line 166
    :cond_2
    invoke-direct {p0}, Lmiui/external/Application;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lmiui/external/Application;->m:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lmiui/external/Application;->m:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0}, Lmiui/external/ApplicationDelegate;->onCreate()V

    goto :goto_0

    .line 172
    :cond_3
    invoke-virtual {p0}, Lmiui/external/Application;->l()V

    goto :goto_0
.end method

.method public onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onLowMemory()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lmiui/external/Application;->m:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lmiui/external/Application;->m:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0}, Lmiui/external/ApplicationDelegate;->onLowMemory()V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-virtual {p0}, Lmiui/external/Application;->n()V

    goto :goto_0
.end method

.method public final onTerminate()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lmiui/external/Application;->m:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lmiui/external/Application;->m:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0}, Lmiui/external/ApplicationDelegate;->onTerminate()V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Lmiui/external/Application;->m()V

    goto :goto_0
.end method

.method public final onTrimMemory(I)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lmiui/external/Application;->m:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lmiui/external/Application;->m:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0, p1}, Lmiui/external/ApplicationDelegate;->onTrimMemory(I)V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/external/Application;->a(I)V

    goto :goto_0
.end method

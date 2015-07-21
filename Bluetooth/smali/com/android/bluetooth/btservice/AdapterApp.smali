.class public Lcom/android/bluetooth/btservice/AdapterApp;
.super Lmiui/external/Application;
.source "AdapterApp.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapterApp"

.field private static sRefCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/android/bluetooth/btservice/AdapterApp;->sRefCount:I

    .line 36
    const-string v0, "bluetooth_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lmiui/external/Application;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterApp$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/AdapterApp$1;-><init>(Lcom/android/bluetooth/btservice/AdapterApp;)V

    return-object v0
.end method

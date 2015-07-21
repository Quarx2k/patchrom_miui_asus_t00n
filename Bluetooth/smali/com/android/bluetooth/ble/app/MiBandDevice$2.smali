.class Lcom/android/bluetooth/ble/app/MiBandDevice$2;
.super Ljava/lang/Object;
.source "MiBandDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/ble/app/MiBandDevice;->onDeviceReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/app/MiBandDevice;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/app/MiBandDevice;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/MiBandDevice$2;->this$0:Lcom/android/bluetooth/ble/app/MiBandDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiBandDevice$2;->this$0:Lcom/android/bluetooth/ble/app/MiBandDevice;

    iget-object v0, v0, Lcom/android/bluetooth/ble/app/MiBandDevice;->mProfile:Lmiui/bluetooth/ble/MiBleProfile;

    const/16 v1, 0x6c

    iget-object v2, p0, Lcom/android/bluetooth/ble/app/MiBandDevice$2;->this$0:Lcom/android/bluetooth/ble/app/MiBandDevice;

    invoke-virtual {v0, v1, v2}, Lmiui/bluetooth/ble/MiBleProfile;->registerPropertyNotifyCallback(ILmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;)Z

    .line 101
    return-void
.end method

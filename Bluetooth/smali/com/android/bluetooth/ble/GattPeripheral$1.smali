.class Lcom/android/bluetooth/ble/GattPeripheral$1;
.super Ljava/lang/Object;
.source "GattPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/ble/GattPeripheral;->connect(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/GattPeripheral;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/GattPeripheral;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/bluetooth/ble/GattPeripheral$1;->this$0:Lcom/android/bluetooth/ble/GattPeripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral$1;->this$0:Lcom/android/bluetooth/ble/GattPeripheral;

    # invokes: Lcom/android/bluetooth/ble/GattPeripheral;->GattCB_onConnectionFailed()V
    invoke-static {v0}, Lcom/android/bluetooth/ble/GattPeripheral;->access$000(Lcom/android/bluetooth/ble/GattPeripheral;)V

    .line 283
    return-void
.end method

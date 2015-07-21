.class public Lcom/android/bluetooth/map/BluetoothMapContentObserver$BluetoothMnsMsgHndlMceInitOp;
.super Ljava/lang/Object;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothMnsMsgHndlMceInitOp"
.end annotation


# instance fields
.field public msgHandle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

.field time:Landroid/text/format/Time;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$BluetoothMnsMsgHndlMceInitOp;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

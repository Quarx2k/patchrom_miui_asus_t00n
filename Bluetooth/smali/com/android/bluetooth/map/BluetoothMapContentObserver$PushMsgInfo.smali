.class public Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
.super Ljava/lang/Object;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PushMsgInfo"
.end annotation


# instance fields
.field id:J

.field parts:I

.field partsDelivered:I

.field partsSent:I

.field phone:Ljava/lang/String;

.field resend:Z

.field retry:I

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

.field transparent:I

.field uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIILjava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p2, "id"    # J
    .param p4, "transparent"    # I
    .param p5, "retry"    # I
    .param p6, "phone"    # Ljava/lang/String;
    .param p7, "uri"    # Landroid/net/Uri;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    iput-wide p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    .line 729
    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->transparent:I

    .line 730
    iput p5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->retry:I

    .line 731
    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->phone:Ljava/lang/String;

    .line 732
    iput-object p7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    .line 733
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->resend:Z

    .line 734
    return-void
.end method

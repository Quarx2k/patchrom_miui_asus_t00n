.class Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
.super Ljava/lang/Object;
.source "BluetoothOppNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationItem"
.end annotation


# instance fields
.field description:Ljava/lang/String;

.field destination:Ljava/lang/String;

.field direction:I

.field handoverInitiated:Z

.field id:I

.field timeStamp:J

.field totalCurrent:J

.field totalTotal:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-wide v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:J

    .line 127
    iput-wide v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    .line 129
    iput-wide v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->timeStamp:J

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->handoverInitiated:Z

    return-void
.end method

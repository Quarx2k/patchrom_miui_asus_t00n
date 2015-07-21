.class Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;
.super Ljava/lang/Object;
.source "BluetoothMapContentEmailObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmailBox"
.end annotation


# instance fields
.field mAccountKey:J

.field mDisplayName:Ljava/lang/String;

.field mId:J

.field mType:I


# direct methods
.method public constructor <init>(JLjava/lang/String;JI)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "accountKey"    # J
    .param p6, "type"    # I

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;->mId:J

    .line 218
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;->mDisplayName:Ljava/lang/String;

    .line 219
    iput-wide p4, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;->mAccountKey:J

    .line 220
    iput p6, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;->mType:I

    .line 221
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", display name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", account key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

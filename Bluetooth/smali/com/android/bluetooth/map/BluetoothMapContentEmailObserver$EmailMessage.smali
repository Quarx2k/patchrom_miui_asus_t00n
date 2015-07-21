.class Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;
.super Ljava/lang/Object;
.source "BluetoothMapContentEmailObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmailMessage"
.end annotation


# instance fields
.field mAccountKey:J

.field mFolderName:Ljava/lang/String;

.field mId:J

.field mType:I


# direct methods
.method public constructor <init>(JJLjava/lang/String;I)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "accountKey"    # J
    .param p5, "folderName"    # Ljava/lang/String;
    .param p6, "type"    # I

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;->mId:J

    .line 238
    iput-wide p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;->mAccountKey:J

    .line 239
    iput-object p5, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;->mFolderName:Ljava/lang/String;

    .line 240
    iput p6, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;->mType:I

    .line 241
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", folder name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;->mFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", account key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

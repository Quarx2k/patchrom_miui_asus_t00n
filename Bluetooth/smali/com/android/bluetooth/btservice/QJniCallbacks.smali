.class final Lcom/android/bluetooth/btservice/QJniCallbacks;
.super Ljava/lang/Object;
.source "QJniCallbacks.java"


# instance fields
.field private mQAdapterProperties:Lcom/android/bluetooth/btservice/QAdapterProperties;

.field private mQAdapterSvc:Lcom/android/bluetooth/btservice/QAdapterService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/QAdapterProperties;Lcom/android/bluetooth/btservice/QAdapterService;)V
    .locals 1
    .param p1, "adapterProperties"    # Lcom/android/bluetooth/btservice/QAdapterProperties;
    .param p2, "service"    # Lcom/android/bluetooth/btservice/QAdapterService;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/QJniCallbacks;->mQAdapterSvc:Lcom/android/bluetooth/btservice/QAdapterService;

    .line 40
    iput-object p1, p0, Lcom/android/bluetooth/btservice/QJniCallbacks;->mQAdapterProperties:Lcom/android/bluetooth/btservice/QAdapterProperties;

    .line 41
    iput-object p2, p0, Lcom/android/bluetooth/btservice/QJniCallbacks;->mQAdapterSvc:Lcom/android/bluetooth/btservice/QAdapterService;

    .line 42
    return-void
.end method


# virtual methods
.method public Clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method advEnableCallback(II)V
    .locals 1
    .param p1, "advEnable"    # I
    .param p2, "advType"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QJniCallbacks;->mQAdapterProperties:Lcom/android/bluetooth/btservice/QAdapterProperties;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/QAdapterProperties;->advEnableCallback(II)V

    .line 54
    return-void
.end method

.method cleanup()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/android/bluetooth/btservice/QJniCallbacks;->mQAdapterProperties:Lcom/android/bluetooth/btservice/QAdapterProperties;

    .line 46
    iput-object v0, p0, Lcom/android/bluetooth/btservice/QJniCallbacks;->mQAdapterSvc:Lcom/android/bluetooth/btservice/QAdapterService;

    .line 47
    return-void
.end method

.method onLeExtendedScanResult(Ljava/lang/String;I[B)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "adv_data"    # [B

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QJniCallbacks;->mQAdapterSvc:Lcom/android/bluetooth/btservice/QAdapterService;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QJniCallbacks;->mQAdapterSvc:Lcom/android/bluetooth/btservice/QAdapterService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/btservice/QAdapterService;->onLeExtendedScanResult(Ljava/lang/String;I[B)V

    .line 59
    :cond_0
    return-void
.end method

.method onLeLppEnableRssiMonitor(Ljava/lang/String;II)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "enable"    # I
    .param p3, "status"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QJniCallbacks;->mQAdapterSvc:Lcom/android/bluetooth/btservice/QAdapterService;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QJniCallbacks;->mQAdapterSvc:Lcom/android/bluetooth/btservice/QAdapterService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/btservice/QAdapterService;->onLeLppEnableRssiMonitor(Ljava/lang/String;II)V

    .line 78
    :cond_0
    return-void
.end method

.method onLeLppReadRssiThreshold(Ljava/lang/String;IIII)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "low"    # I
    .param p3, "upper"    # I
    .param p4, "alert"    # I
    .param p5, "status"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QJniCallbacks;->mQAdapterSvc:Lcom/android/bluetooth/btservice/QAdapterService;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QJniCallbacks;->mQAdapterSvc:Lcom/android/bluetooth/btservice/QAdapterService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/btservice/QAdapterService;->onLeLppReadRssiThreshold(Ljava/lang/String;IIII)V

    .line 72
    :cond_0
    return-void
.end method

.method onLeLppRssiThresholdEvent(Ljava/lang/String;II)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "evtType"    # I
    .param p3, "rssi"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QJniCallbacks;->mQAdapterSvc:Lcom/android/bluetooth/btservice/QAdapterService;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QJniCallbacks;->mQAdapterSvc:Lcom/android/bluetooth/btservice/QAdapterService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/btservice/QAdapterService;->onLeLppRssiThresholdEvent(Ljava/lang/String;II)V

    .line 84
    :cond_0
    return-void
.end method

.method onLeLppWriteRssiThreshold(Ljava/lang/String;I)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QJniCallbacks;->mQAdapterSvc:Lcom/android/bluetooth/btservice/QAdapterService;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QJniCallbacks;->mQAdapterSvc:Lcom/android/bluetooth/btservice/QAdapterService;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/QAdapterService;->onLeLppWriteRssiThreshold(Ljava/lang/String;I)V

    .line 65
    :cond_0
    return-void
.end method

.class final Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;
.super Ljava/lang/Object;
.source "QAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/QAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LeExtendedScanSession"
.end annotation


# instance fields
.field public final mClient:Landroid/bluetooth/IQBluetoothAdapterCallback;

.field public final mScanToken:I

.field public final mServiceList:[Landroid/bluetooth/BluetoothLEServiceUuid;


# direct methods
.method public constructor <init>(I[Landroid/bluetooth/BluetoothLEServiceUuid;Landroid/bluetooth/IQBluetoothAdapterCallback;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "services"    # [Landroid/bluetooth/BluetoothLEServiceUuid;
    .param p3, "callback"    # Landroid/bluetooth/IQBluetoothAdapterCallback;

    .prologue
    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 647
    iput p1, p0, Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;->mScanToken:I

    .line 648
    iput-object p2, p0, Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;->mServiceList:[Landroid/bluetooth/BluetoothLEServiceUuid;

    .line 649
    iput-object p3, p0, Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;->mClient:Landroid/bluetooth/IQBluetoothAdapterCallback;

    .line 650
    return-void
.end method

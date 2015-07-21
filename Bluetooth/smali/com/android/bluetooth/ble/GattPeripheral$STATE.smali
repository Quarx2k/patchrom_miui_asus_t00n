.class public final enum Lcom/android/bluetooth/ble/GattPeripheral$STATE;
.super Ljava/lang/Enum;
.source "GattPeripheral.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/GattPeripheral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/bluetooth/ble/GattPeripheral$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/ble/GattPeripheral$STATE;

.field public static final enum CONNECTED:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

.field public static final enum CONNECTING:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

.field public static final enum DISCONNECTED:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

.field public static final enum DISCONNECTING:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

.field public static final enum READY:Lcom/android/bluetooth/ble/GattPeripheral$STATE;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1014
    new-instance v0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v2, v4}, Lcom/android/bluetooth/ble/GattPeripheral$STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->CONNECTED:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    .line 1015
    new-instance v0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/bluetooth/ble/GattPeripheral$STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->CONNECTING:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    .line 1016
    new-instance v0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/bluetooth/ble/GattPeripheral$STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->DISCONNECTED:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    .line 1017
    new-instance v0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    const-string v1, "DISCONNECTING"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/bluetooth/ble/GattPeripheral$STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->DISCONNECTING:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    .line 1018
    new-instance v0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    const-string v1, "READY"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/bluetooth/ble/GattPeripheral$STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->READY:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    .line 1012
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    sget-object v1, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->CONNECTED:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->CONNECTING:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->DISCONNECTED:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->DISCONNECTING:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->READY:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->$VALUES:[Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 1021
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1022
    iput p3, p0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->value:I

    .line 1023
    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/ble/GattPeripheral$STATE;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    .prologue
    .line 1012
    iget v0, p0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->value:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/ble/GattPeripheral$STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1012
    const-class v0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    return-object v0
.end method

.method public static values()[Lcom/android/bluetooth/ble/GattPeripheral$STATE;
    .locals 1

    .prologue
    .line 1012
    sget-object v0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->$VALUES:[Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    invoke-virtual {v0}, [Lcom/android/bluetooth/ble/GattPeripheral$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 1026
    iget v0, p0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->value:I

    return v0
.end method

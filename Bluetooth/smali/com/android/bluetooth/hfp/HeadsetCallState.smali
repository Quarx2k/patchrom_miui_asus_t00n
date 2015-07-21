.class Lcom/android/bluetooth/hfp/HeadsetCallState;
.super Ljava/lang/Object;
.source "HeadsetPhoneState.java"


# instance fields
.field mCallState:I

.field mNumActive:I

.field mNumHeld:I

.field mNumber:Ljava/lang/String;

.field mType:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;I)V
    .locals 0
    .param p1, "numActive"    # I
    .param p2, "numHeld"    # I
    .param p3, "callState"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumActive:I

    .line 329
    iput p2, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumHeld:I

    .line 330
    iput p3, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mCallState:I

    .line 331
    iput-object p4, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumber:Ljava/lang/String;

    .line 332
    iput p5, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mType:I

    .line 333
    return-void
.end method

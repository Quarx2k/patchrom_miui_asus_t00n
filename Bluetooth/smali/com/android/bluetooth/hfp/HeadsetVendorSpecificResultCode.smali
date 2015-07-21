.class Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;
.super Ljava/lang/Object;
.source "HeadsetPhoneState.java"


# instance fields
.field mArg:Ljava/lang/String;

.field mCommand:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;->mCommand:Ljava/lang/String;

    .line 363
    iput-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;->mArg:Ljava/lang/String;

    .line 364
    return-void
.end method

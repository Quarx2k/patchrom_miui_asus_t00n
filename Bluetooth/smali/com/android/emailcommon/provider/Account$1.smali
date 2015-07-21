.class final Lcom/android/emailcommon/provider/Account$1;
.super Ljava/lang/Object;
.source "Account.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/emailcommon/provider/Account;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/emailcommon/provider/Account;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 897
    new-instance v0, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v0, p1}, Lcom/android/emailcommon/provider/Account;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 894
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/Account$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/emailcommon/provider/Account;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 902
    new-array v0, p1, [Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 894
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/Account$1;->newArray(I)[Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    return-object v0
.end method

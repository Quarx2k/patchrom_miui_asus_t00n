.class public abstract Lcom/android/emailcommon/service/IPolicyService$Stub;
.super Landroid/os/Binder;
.source "IPolicyService.java"

# interfaces
.implements Lcom/android/emailcommon/service/IPolicyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/IPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/IPolicyService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.emailcommon.service.IPolicyService"

.field static final TRANSACTION_isActive:I = 0x1

.field static final TRANSACTION_remoteWipe:I = 0x4

.field static final TRANSACTION_setAccountHoldFlag:I = 0x2

.field static final TRANSACTION_setAccountPolicy:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p0, p0, v0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IPolicyService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.android.emailcommon.service.IPolicyService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/emailcommon/service/IPolicyService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/emailcommon/service/IPolicyService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/emailcommon/service/IPolicyService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/IPolicyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v5, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v7, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    .line 50
    sget-object v7, Lcom/android/emailcommon/provider/Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Policy;

    .line 55
    .local v0, "_arg0":Lcom/android/emailcommon/provider/Policy;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->isActive(Lcom/android/emailcommon/provider/Policy;)Z

    move-result v4

    .line 56
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 53
    .end local v0    # "_arg0":Lcom/android/emailcommon/provider/Policy;
    .end local v4    # "_result":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/android/emailcommon/provider/Policy;
    goto :goto_1

    .line 62
    .end local v0    # "_arg0":Lcom/android/emailcommon/provider/Policy;
    :sswitch_2
    const-string v7, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 66
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    move v2, v6

    .line 67
    .local v2, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/emailcommon/service/IPolicyService$Stub;->setAccountHoldFlag(JZ)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v2    # "_arg1":Z
    :cond_2
    move v2, v5

    .line 66
    goto :goto_2

    .line 73
    .end local v0    # "_arg0":J
    :sswitch_3
    const-string v5, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 77
    .restart local v0    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 78
    sget-object v5, Lcom/android/emailcommon/provider/Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/Policy;

    .line 84
    .local v2, "_arg1":Lcom/android/emailcommon/provider/Policy;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/emailcommon/service/IPolicyService$Stub;->setAccountPolicy(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 81
    .end local v2    # "_arg1":Lcom/android/emailcommon/provider/Policy;
    .end local v3    # "_arg2":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Lcom/android/emailcommon/provider/Policy;
    goto :goto_3

    .line 91
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Lcom/android/emailcommon/provider/Policy;
    :sswitch_4
    const-string v5, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->remoteWipe()V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

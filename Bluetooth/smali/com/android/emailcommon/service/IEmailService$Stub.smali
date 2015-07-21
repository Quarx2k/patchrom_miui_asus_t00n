.class public abstract Lcom/android/emailcommon/service/IEmailService$Stub;
.super Landroid/os/Binder;
.source "IEmailService.java"

# interfaces
.implements Lcom/android/emailcommon/service/IEmailService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/IEmailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.emailcommon.service.IEmailService"

.field static final TRANSACTION_autoDiscover:I = 0xa

.field static final TRANSACTION_deleteAccountPIMData:I = 0xc

.field static final TRANSACTION_loadAttachment:I = 0x2

.field static final TRANSACTION_loadMore:I = 0x3

.field static final TRANSACTION_pushModify:I = 0x6

.field static final TRANSACTION_searchMessages:I = 0x8

.field static final TRANSACTION_sendMail:I = 0x1

.field static final TRANSACTION_sendMeetingResponse:I = 0x9

.field static final TRANSACTION_setLogging:I = 0xb

.field static final TRANSACTION_sync:I = 0x5

.field static final TRANSACTION_updateFolderList:I = 0x4

.field static final TRANSACTION_validate:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.emailcommon.service.IEmailService"

    invoke-virtual {p0, p0, v0}, Lcom/android/emailcommon/service/IEmailService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IEmailService;
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
    const-string v1, "com.android.emailcommon.service.IEmailService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/emailcommon/service/IEmailService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/emailcommon/service/IEmailService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 15
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 194
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 50
    .local v9, "_arg0":J
    invoke-virtual {p0, v9, v10}, Lcom/android/emailcommon/service/IEmailService$Stub;->sendMail(J)V

    .line 51
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    const/4 v1, 0x1

    goto :goto_0

    .line 56
    .end local v9    # "_arg0":J
    :sswitch_2
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v2

    .line 60
    .local v2, "_arg0":Lcom/android/emailcommon/service/IEmailServiceCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 62
    .local v3, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 64
    .local v5, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    .local v7, "_arg3":Z
    :goto_1
    move-object v1, p0

    .line 65
    invoke-virtual/range {v1 .. v7}, Lcom/android/emailcommon/service/IEmailService$Stub;->loadAttachment(Lcom/android/emailcommon/service/IEmailServiceCallback;JJZ)V

    .line 66
    const/4 v1, 0x1

    goto :goto_0

    .line 64
    .end local v7    # "_arg3":Z
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 70
    .end local v2    # "_arg0":Lcom/android/emailcommon/service/IEmailServiceCallback;
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":J
    :sswitch_3
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 73
    .restart local v9    # "_arg0":J
    invoke-virtual {p0, v9, v10}, Lcom/android/emailcommon/service/IEmailService$Stub;->loadMore(J)V

    .line 74
    const/4 v1, 0x1

    goto :goto_0

    .line 78
    .end local v9    # "_arg0":J
    :sswitch_4
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 81
    .restart local v9    # "_arg0":J
    invoke-virtual {p0, v9, v10}, Lcom/android/emailcommon/service/IEmailService$Stub;->updateFolderList(J)V

    .line 82
    const/4 v1, 0x1

    goto :goto_0

    .line 86
    .end local v9    # "_arg0":J
    :sswitch_5
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 90
    .restart local v9    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    .line 92
    .local v3, "_arg1":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 94
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v7

    .local v7, "_arg3":[J
    move-object v8, p0

    move v11, v3

    move v12, v5

    move-object v13, v7

    .line 95
    invoke-virtual/range {v8 .. v13}, Lcom/android/emailcommon/service/IEmailService$Stub;->sync(JZI[J)V

    .line 96
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 90
    .end local v3    # "_arg1":Z
    .end local v5    # "_arg2":I
    .end local v7    # "_arg3":[J
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 101
    .end local v9    # "_arg0":J
    :sswitch_6
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 104
    .restart local v9    # "_arg0":J
    invoke-virtual {p0, v9, v10}, Lcom/android/emailcommon/service/IEmailService$Stub;->pushModify(J)V

    .line 105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 110
    .end local v9    # "_arg0":J
    :sswitch_7
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    sget-object v1, Lcom/android/emailcommon/provider/HostAuth;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/HostAuth;

    .line 118
    .local v2, "_arg0":Lcom/android/emailcommon/provider/HostAuth;
    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/emailcommon/service/IEmailService$Stub;->validate(Lcom/android/emailcommon/provider/HostAuth;)Landroid/os/Bundle;

    move-result-object v14

    .line 119
    .local v14, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v14, :cond_3

    .line 121
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 127
    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 116
    .end local v2    # "_arg0":Lcom/android/emailcommon/provider/HostAuth;
    .end local v14    # "_result":Landroid/os/Bundle;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcom/android/emailcommon/provider/HostAuth;
    goto :goto_3

    .line 125
    .restart local v14    # "_result":Landroid/os/Bundle;
    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 131
    .end local v2    # "_arg0":Lcom/android/emailcommon/provider/HostAuth;
    .end local v14    # "_result":Landroid/os/Bundle;
    :sswitch_8
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 135
    .restart local v9    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 136
    sget-object v1, Lcom/android/emailcommon/service/SearchParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/service/SearchParams;

    .line 142
    .local v3, "_arg1":Lcom/android/emailcommon/service/SearchParams;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .local v5, "_arg2":J
    move-object v8, p0

    move-object v11, v3

    move-wide v12, v5

    .line 143
    invoke-virtual/range {v8 .. v13}, Lcom/android/emailcommon/service/IEmailService$Stub;->searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I

    move-result v14

    .line 144
    .local v14, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 139
    .end local v3    # "_arg1":Lcom/android/emailcommon/service/SearchParams;
    .end local v5    # "_arg2":J
    .end local v14    # "_result":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Lcom/android/emailcommon/service/SearchParams;
    goto :goto_5

    .line 150
    .end local v3    # "_arg1":Lcom/android/emailcommon/service/SearchParams;
    .end local v9    # "_arg0":J
    :sswitch_9
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 154
    .restart local v9    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 155
    .local v3, "_arg1":I
    invoke-virtual {p0, v9, v10, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->sendMeetingResponse(JI)V

    .line 156
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 160
    .end local v3    # "_arg1":I
    .end local v9    # "_arg0":J
    :sswitch_a
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 166
    .local v14, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v14, :cond_5

    .line 168
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 174
    :goto_6
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 172
    :cond_5
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 178
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v14    # "_result":Landroid/os/Bundle;
    :sswitch_b
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 181
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/emailcommon/service/IEmailService$Stub;->setLogging(I)V

    .line 182
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 186
    .end local v2    # "_arg0":I
    :sswitch_c
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/emailcommon/service/IEmailService$Stub;->deleteAccountPIMData(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

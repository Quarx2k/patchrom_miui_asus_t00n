.class public Lcom/android/emailcommon/service/SyncWindow;
.super Ljava/lang/Object;
.source "SyncWindow.java"


# static fields
.field public static final SYNC_WINDOW_1_DAY:I = 0x1

.field public static final SYNC_WINDOW_1_MONTH:I = 0x5

.field public static final SYNC_WINDOW_1_WEEK:I = 0x3

.field public static final SYNC_WINDOW_2_WEEKS:I = 0x4

.field public static final SYNC_WINDOW_3_DAYS:I = 0x2

.field public static final SYNC_WINDOW_ACCOUNT:I = 0x0

.field public static final SYNC_WINDOW_ALL:I = 0x6

.field public static final SYNC_WINDOW_USER:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toDays(I)I
    .locals 1
    .param p0, "window"    # I

    .prologue
    const/16 v0, 0xe

    .line 30
    packed-switch p0, :pswitch_data_0

    .line 45
    :goto_0
    :pswitch_0
    return v0

    .line 32
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 34
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 36
    :pswitch_3
    const/4 v0, 0x7

    goto :goto_0

    .line 40
    :pswitch_4
    const/16 v0, 0x1e

    goto :goto_0

    .line 42
    :pswitch_5
    const/16 v0, 0xe42

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

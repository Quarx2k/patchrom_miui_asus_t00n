.class abstract Lcom/android/bluetooth/ble/app/AlertBleDevice;
.super Lcom/android/bluetooth/ble/app/BaseBleDevice;
.source "AlertBleDevice.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPendingAlertTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/android/bluetooth/ble/app/AlertBleDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/ble/app/BaseBleDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mHandler:Landroid/os/Handler;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mPendingAlertTask:Ljava/lang/Runnable;

    .line 24
    return-void
.end method

.method static synthetic access$002(Lcom/android/bluetooth/ble/app/AlertBleDevice;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/app/AlertBleDevice;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mPendingAlertTask:Ljava/lang/Runnable;

    return-object p1
.end method


# virtual methods
.method abstract getAlertDataForCancel()[B
.end method

.method abstract getAlertDataForClock()[B
.end method

.method abstract getAlertDataForIncall()[B
.end method

.method abstract getAlertDataForSMS()[B
.end method

.method onReceiveAlarmAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 33
    if-nez p2, :cond_1

    .line 34
    sget-object v3, Lcom/android/bluetooth/ble/app/AlertBleDevice;->TAG:Ljava/lang/String;

    const-string v4, "onReceiveAlarmAction() No extra data, skip..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const-string v3, "miui.deskclock.ACTION_ALARM"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 39
    const-string v3, "alert_alarm_enabled"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getSettingBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    iget-object v3, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mProfile:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getAlertDataForClock()[B

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lmiui/bluetooth/ble/MiBleProfile;->setProperty(I[B)Z

    goto :goto_0

    .line 44
    :cond_2
    const-string v3, "miui.phone.ACTION_ALARM"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 46
    const-string v3, "contact"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "contact":Ljava/lang/String;
    const/4 v2, 0x0

    .line 48
    .local v2, "shouldAlert":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 49
    const-string v3, "alert_incall_enabled_no_contacts"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getSettingBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 52
    const/4 v2, 0x1

    .line 62
    :cond_3
    :goto_1
    if-eqz v2, :cond_0

    .line 63
    const-string v3, "alert_incall_delayed"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getSettingsInteter(Ljava/lang/String;)I

    move-result v1

    .line 64
    .local v1, "delayed":I
    new-instance v3, Lcom/android/bluetooth/ble/app/AlertBleDevice$1;

    invoke-direct {v3, p0}, Lcom/android/bluetooth/ble/app/AlertBleDevice$1;-><init>(Lcom/android/bluetooth/ble/app/AlertBleDevice;)V

    iput-object v3, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mPendingAlertTask:Ljava/lang/Runnable;

    .line 71
    iget-object v3, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mPendingAlertTask:Ljava/lang/Runnable;

    int-to-long v5, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 55
    .end local v1    # "delayed":I
    :cond_4
    const-string v3, "alert_incall_enabled_in_contacts"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getSettingBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 58
    const/4 v2, 0x1

    goto :goto_1

    .line 74
    .end local v0    # "contact":Ljava/lang/String;
    .end local v2    # "shouldAlert":Z
    :cond_5
    const-string v3, "miui.sms.ACTION_ALARM"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 75
    const-string v3, "contact"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .restart local v0    # "contact":Ljava/lang/String;
    const/4 v2, 0x0

    .line 77
    .restart local v2    # "shouldAlert":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 78
    const-string v3, "alert_sms_enabled_no_contacts"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getSettingBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 81
    const/4 v2, 0x1

    .line 91
    :cond_6
    :goto_2
    if-eqz v2, :cond_0

    .line 92
    iget-object v3, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mProfile:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getAlertDataForSMS()[B

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lmiui/bluetooth/ble/MiBleProfile;->setProperty(I[B)Z

    goto/16 :goto_0

    .line 84
    :cond_7
    const-string v3, "alert_sms_enabled_in_contacts"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getSettingBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 87
    const/4 v2, 0x1

    goto :goto_2

    .line 94
    .end local v0    # "contact":Ljava/lang/String;
    .end local v2    # "shouldAlert":Z
    :cond_8
    const-string v3, "miui.bluetooth.alert.CANCEL"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    iget-object v3, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mPendingAlertTask:Ljava/lang/Runnable;

    if-eqz v3, :cond_9

    .line 96
    iget-object v3, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mPendingAlertTask:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mPendingAlertTask:Ljava/lang/Runnable;

    goto/16 :goto_0

    .line 99
    :cond_9
    iget-object v3, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mProfile:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getAlertDataForCancel()[B

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lmiui/bluetooth/ble/MiBleProfile;->setProperty(I[B)Z

    goto/16 :goto_0
.end method

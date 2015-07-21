.class Lcom/android/bluetooth/hfp/HeadsetPhoneState;
.super Ljava/lang/Object;
.source "HeadsetPhoneState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HeadsetPhoneState"


# instance fields
.field private mBatteryCharge:I

.field private mCallState:I

.field private mListening:Z

.field private mMicVolume:I

.field private mNumActive:I

.field private mNumHeld:I

.field private mNumber:Ljava/lang/String;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRoam:I

.field private mService:I

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignal:I

.field private mSpeakerVolume:I

.field private mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mType:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stateMachine"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    .line 41
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    .line 44
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCallState:I

    .line 47
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumHeld:I

    .line 53
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mType:I

    .line 56
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    .line 59
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    .line 62
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    .line 64
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSpeakerVolume:I

    .line 66
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mMicVolume:I

    .line 68
    iput-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mListening:Z

    .line 204
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;-><init>(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 71
    iput-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 72
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)Landroid/telephony/ServiceState;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/hfp/HeadsetPhoneState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetPhoneState;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetPhoneState;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    .prologue
    .line 30
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetPhoneState;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    return p1
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->listenForPhoneState(Z)V

    .line 77
    iput-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 78
    iput-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 79
    return-void
.end method

.method getBatteryCharge()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    return v0
.end method

.method getCallState()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCallState:I

    return v0
.end method

.method getMicVolume()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mMicVolume:I

    return v0
.end method

.method getNumActiveCall()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    return v0
.end method

.method getNumHeldCall()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumHeld:I

    return v0
.end method

.method getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method getRoam()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    return v0
.end method

.method getService()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    return v0
.end method

.method getSignal()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    return v0
.end method

.method getSpeakerVolume()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSpeakerVolume:I

    return v0
.end method

.method getType()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mType:I

    return v0
.end method

.method isInCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 185
    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    if-lt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method listenForPhoneState(Z)V
    .locals 3
    .param p1, "start"    # Z

    .prologue
    const/4 v2, 0x0

    .line 82
    if-eqz p1, :cond_1

    .line 83
    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mListening:Z

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x101

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mListening:Z

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mListening:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 92
    iput-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mListening:Z

    goto :goto_0
.end method

.method sendDeviceStateChanged()V
    .locals 7

    .prologue
    .line 192
    iget v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    .line 194
    .local v0, "signal":I
    :goto_0
    const-string v2, "HeadsetPhoneState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendDeviceStateChanged. mService="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSignal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mRoam="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBatteryCharge="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 198
    .local v1, "sm":Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    if-eqz v1, :cond_0

    .line 199
    const/16 v2, 0xb

    new-instance v3, Lcom/android/bluetooth/hfp/HeadsetDeviceState;

    iget v4, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    iget v5, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    iget v6, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/android/bluetooth/hfp/HeadsetDeviceState;-><init>(IIII)V

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 202
    :cond_0
    return-void

    .line 192
    .end local v0    # "signal":I
    .end local v1    # "sm":Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setBatteryCharge(I)V
    .locals 1
    .param p1, "batteryLevel"    # I

    .prologue
    .line 158
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    if-eq v0, p1, :cond_0

    .line 159
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    .line 160
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->sendDeviceStateChanged()V

    .line 162
    :cond_0
    return-void
.end method

.method setCallState(I)V
    .locals 0
    .param p1, "callState"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCallState:I

    .line 115
    return-void
.end method

.method setMicVolume(I)V
    .locals 0
    .param p1, "volume"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mMicVolume:I

    .line 178
    return-void
.end method

.method setNumActiveCall(I)V
    .locals 0
    .param p1, "numActive"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    .line 107
    return-void
.end method

.method setNumHeldCall(I)V
    .locals 0
    .param p1, "numHeldCall"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumHeld:I

    .line 123
    return-void
.end method

.method setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNumberCall"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumber:Ljava/lang/String;

    .line 127
    return-void
.end method

.method setRoam(I)V
    .locals 1
    .param p1, "roam"    # I

    .prologue
    .line 151
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    if-eq v0, p1, :cond_0

    .line 152
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    .line 153
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->sendDeviceStateChanged()V

    .line 155
    :cond_0
    return-void
.end method

.method setSpeakerVolume(I)V
    .locals 0
    .param p1, "volume"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSpeakerVolume:I

    .line 170
    return-void
.end method

.method setType(I)V
    .locals 0
    .param p1, "mTypeCall"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mType:I

    .line 136
    return-void
.end method

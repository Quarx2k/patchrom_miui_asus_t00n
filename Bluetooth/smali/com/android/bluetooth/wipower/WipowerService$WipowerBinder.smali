.class Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;
.super Landroid/wipower/IWipower$Stub;
.source "WipowerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/wipower/WipowerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WipowerBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/wipower/WipowerService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/wipower/WipowerService;)V
    .locals 2
    .param p1, "svc"    # Lcom/android/bluetooth/wipower/WipowerService;

    .prologue
    .line 124
    invoke-direct {p0}, Landroid/wipower/IWipower$Stub;-><init>()V

    .line 125
    const-string v0, "WipowerService"

    const-string v1, ">In Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput-object p1, p0, Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;->mService:Lcom/android/bluetooth/wipower/WipowerService;

    .line 127
    return-void
.end method


# virtual methods
.method public enableAlert(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;->mService:Lcom/android/bluetooth/wipower/WipowerService;

    if-nez v1, :cond_0

    .line 191
    const-string v1, "WipowerService"

    const-string v2, "enableAlert:Service not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_0
    return v0

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;->mService:Lcom/android/bluetooth/wipower/WipowerService;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/wipower/WipowerService;->enableAlert(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public enableData(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;->mService:Lcom/android/bluetooth/wipower/WipowerService;

    if-nez v1, :cond_0

    .line 201
    const-string v1, "WipowerService"

    const-string v2, "enableData:Service not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_0
    return v0

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;->mService:Lcom/android/bluetooth/wipower/WipowerService;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/wipower/WipowerService;->enableData(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public getCurrentLimit()B
    .locals 3

    .prologue
    .line 179
    const/4 v0, -0x1

    .line 180
    .local v0, "value":B
    iget-object v1, p0, Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;->mService:Lcom/android/bluetooth/wipower/WipowerService;

    if-nez v1, :cond_0

    .line 181
    const-string v1, "WipowerService"

    const-string v2, "getCurrentLimit:Service not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_0
    return v0

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;->mService:Lcom/android/bluetooth/wipower/WipowerService;

    invoke-virtual {v1}, Lcom/android/bluetooth/wipower/WipowerService;->getCurrentLimit()B

    move-result v0

    goto :goto_0
.end method

.method public getService()Lcom/android/bluetooth/wipower/WipowerService;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;->mService:Lcom/android/bluetooth/wipower/WipowerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;->mService:Lcom/android/bluetooth/wipower/WipowerService;

    # invokes: Lcom/android/bluetooth/wipower/WipowerService;->isAvailable()Z
    invoke-static {v0}, Lcom/android/bluetooth/wipower/WipowerService;->access$000(Lcom/android/bluetooth/wipower/WipowerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;->mService:Lcom/android/bluetooth/wipower/WipowerService;

    .line 133
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 157
    const/4 v0, -0x1

    .line 158
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;->mService:Lcom/android/bluetooth/wipower/WipowerService;

    if-nez v1, :cond_0

    .line 159
    const-string v1, "WipowerService"

    const-string v2, "getState:Service not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    return v0

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;->mService:Lcom/android/bluetooth/wipower/WipowerService;

    invoke-virtual {v1}, Lcom/android/bluetooth/wipower/WipowerService;->getState()I

    move-result v0

    goto :goto_0
.end method

.method public registerCallback(Landroid/wipower/IWipowerManagerCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/wipower/IWipowerManagerCallback;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;->mService:Lcom/android/bluetooth/wipower/WipowerService;

    if-nez v0, :cond_0

    .line 210
    const-string v0, "WipowerService"

    const-string v1, "registerCallback:Service not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;->mService:Lcom/android/bluetooth/wipower/WipowerService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/wipower/WipowerService;->registerCallback(Landroid/wipower/IWipowerManagerCallback;)V

    goto :goto_0
.end method

.method public setCurrentLimit(B)Z
    .locals 3
    .param p1, "value"    # B

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;->mService:Lcom/android/bluetooth/wipower/WipowerService;

    if-nez v1, :cond_0

    .line 170
    const-string v1, "WipowerService"

    const-string v2, "setCurrentLimit:Service not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_0
    return v0

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;->mService:Lcom/android/bluetooth/wipower/WipowerService;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/wipower/WipowerService;->setCurrentLimit(B)Z

    move-result v0

    goto :goto_0
.end method

.method public startCharging()Z
    .locals 3

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;->mService:Lcom/android/bluetooth/wipower/WipowerService;

    if-nez v1, :cond_0

    .line 139
    const-string v1, "WipowerService"

    const-string v2, "startCharging:Service not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return v0

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;->mService:Lcom/android/bluetooth/wipower/WipowerService;

    invoke-virtual {v1}, Lcom/android/bluetooth/wipower/WipowerService;->startCharging()Z

    move-result v0

    goto :goto_0
.end method

.method public stopCharging()Z
    .locals 3

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;->mService:Lcom/android/bluetooth/wipower/WipowerService;

    if-nez v1, :cond_0

    .line 149
    const-string v1, "WipowerService"

    const-string v2, "stopCharging:Service not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return v0

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;->mService:Lcom/android/bluetooth/wipower/WipowerService;

    invoke-virtual {v1}, Lcom/android/bluetooth/wipower/WipowerService;->stopCharging()Z

    move-result v0

    goto :goto_0
.end method

.method public unregisterCallback(Landroid/wipower/IWipowerManagerCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/wipower/IWipowerManagerCallback;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;->mService:Lcom/android/bluetooth/wipower/WipowerService;

    if-nez v0, :cond_0

    .line 219
    const-string v0, "WipowerService"

    const-string v1, "unregisterCallback:Service not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;->mService:Lcom/android/bluetooth/wipower/WipowerService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/wipower/WipowerService;->unregisterCallback(Landroid/wipower/IWipowerManagerCallback;)V

    goto :goto_0
.end method

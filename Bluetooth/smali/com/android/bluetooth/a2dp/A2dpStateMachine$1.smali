.class Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "A2dpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V
    .locals 0

    .prologue
    .line 928
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 931
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 932
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$9100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 933
    const-string v3, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 934
    const-string v3, "command"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 935
    .local v1, "cmd":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Command Received  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$9200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 936
    const-string v3, "pause"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 937
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 938
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;
    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpService;->getLastConnectedA2dpSepType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 943
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->disconnectA2dpNative([B)Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$2400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    .line 945
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v2

    .line 946
    .local v2, "status":I
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "abandonAudioFocus returned"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$9300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 954
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "status":I
    :cond_0
    :goto_0
    return-void

    .line 949
    .restart local v1    # "cmd":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v2

    .line 950
    .restart local v2    # "status":I
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "abandonAudioFocus returned"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$9400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto :goto_0
.end method

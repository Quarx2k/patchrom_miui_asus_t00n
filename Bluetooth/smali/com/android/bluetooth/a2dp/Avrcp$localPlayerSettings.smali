.class Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;
.super Ljava/lang/Object;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "localPlayerSettings"
.end annotation


# instance fields
.field public eq_value:B

.field public repeat_value:B

.field public scan_value:B

.field public shuffle_value:B

.field final synthetic this$0:Lcom/android/bluetooth/a2dp/Avrcp;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/Avrcp;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 178
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-byte v0, p0, Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;->eq_value:B

    .line 180
    iput-byte v0, p0, Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;->repeat_value:B

    .line 181
    iput-byte v0, p0, Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;->shuffle_value:B

    .line 182
    iput-byte v0, p0, Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;->scan_value:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/Avrcp;Lcom/android/bluetooth/a2dp/Avrcp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p2, "x1"    # Lcom/android/bluetooth/a2dp/Avrcp$1;

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;-><init>(Lcom/android/bluetooth/a2dp/Avrcp;)V

    return-void
.end method

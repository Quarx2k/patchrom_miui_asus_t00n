.class Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;
.super Ljava/lang/Object;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerSettings"
.end annotation


# instance fields
.field public attr:B

.field public attrIds:[B

.field public path:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/a2dp/Avrcp;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/Avrcp;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/Avrcp;Lcom/android/bluetooth/a2dp/Avrcp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p2, "x1"    # Lcom/android/bluetooth/a2dp/Avrcp$1;

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;-><init>(Lcom/android/bluetooth/a2dp/Avrcp;)V

    return-void
.end method

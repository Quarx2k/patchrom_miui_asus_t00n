.class final Lcom/android/emailcommon/utility/Utility$NewFileCreator$1;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Lcom/android/emailcommon/utility/Utility$NewFileCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/Utility$NewFileCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNewFile(Ljava/io/File;)Z
    .locals 1
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 556
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    return v0
.end method

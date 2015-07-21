.class public Lcom/android/emailcommon/utility/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;,
        Lcom/android/emailcommon/utility/Utility$ForEachAccount;,
        Lcom/android/emailcommon/utility/Utility$CursorGetter;,
        Lcom/android/emailcommon/utility/Utility$NewFileCreator;
    }
.end annotation


# static fields
.field private static final ACCOUNT_WHERE_HOSTAUTH:Ljava/lang/String; = "hostAuthKeyRecv=?"

.field public static final ASCII:Ljava/nio/charset/Charset;

.field private static final ATTACHMENT_META_NAME_COLUMN_DISPLAY_NAME:I = 0x0

.field private static final ATTACHMENT_META_NAME_PROJECTION:[Ljava/lang/String;

.field private static final BLOB_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/Utility$CursorGetter",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final DATE_CLEANUP_PATTERN_WRONG_TIMEZONE:Ljava/util/regex/Pattern;

.field public static final EMPTY_LONGS:[Ljava/lang/Long;

.field public static final EMPTY_STRINGS:[Ljava/lang/String;

.field private static final HOSTAUTH_WHERE_CREDENTIALS:Ljava/lang/String; = "address like ? and login like ?  ESCAPE \'\\\' and protocol not like \"smtp\""

.field private static final INT_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/Utility$CursorGetter",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LONG_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/Utility$CursorGetter",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final STRING_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/Utility$CursorGetter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UTF_8:Ljava/nio/charset/Charset;

.field private static sMainThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->UTF_8:Ljava/nio/charset/Charset;

    .line 84
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->ASCII:Ljava/nio/charset/Charset;

    .line 86
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 87
    new-array v0, v2, [Ljava/lang/Long;

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->EMPTY_LONGS:[Ljava/lang/Long;

    .line 90
    const-string v0, "GMT([-+]\\d{4})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->DATE_CLEANUP_PATTERN_WRONG_TIMEZONE:Ljava/util/regex/Pattern;

    .line 602
    new-instance v0, Lcom/android/emailcommon/utility/Utility$3;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/Utility$3;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->LONG_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    .line 609
    new-instance v0, Lcom/android/emailcommon/utility/Utility$4;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/Utility$4;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->INT_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    .line 616
    new-instance v0, Lcom/android/emailcommon/utility/Utility$5;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/Utility$5;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->STRING_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    .line 623
    new-instance v0, Lcom/android/emailcommon/utility/Utility$6;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/Utility$6;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->BLOB_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    .line 959
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_display_name"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->ATTACHMENT_META_NAME_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    return-void
.end method

.method public static appendBold(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 5
    .param p0, "ssb"    # Landroid/text/SpannableStringBuilder;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 981
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 982
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 983
    .local v0, "ss":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 985
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 988
    .end local v0    # "ss":Landroid/text/SpannableString;
    :cond_0
    return-object p0
.end method

.method public static areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .prologue
    .line 1070
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 119
    invoke-static {p0, p1}, Lcom/android/emailcommon/utility/Utility;->arrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 120
    .local v0, "index":I
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final arrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 124
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, p0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 125
    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 124
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attachment"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 736
    if-nez p1, :cond_1

    .line 779
    :cond_0
    :goto_0
    return v7

    .line 738
    :cond_1
    iget-object v9, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    if-eqz v9, :cond_2

    move v7, v8

    .line 739
    goto :goto_0

    .line 741
    :cond_2
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getCachedFileUri()Ljava/lang/String;

    move-result-object v0

    .line 743
    .local v0, "cachedFile":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 744
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 746
    .local v1, "cachedFileUri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 749
    .local v5, "inStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move v7, v8

    .line 753
    goto :goto_0

    .line 754
    .end local v5    # "inStream":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 756
    .local v3, "e":Ljava/io/FileNotFoundException;
    sget-object v9, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string v10, "not able to open cached file"

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v9, v3, v10, v11}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 759
    .end local v1    # "cachedFileUri":Landroid/net/Uri;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v2

    .line 760
    .local v2, "contentUri":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 764
    :try_start_2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 766
    .local v4, "fileUri":Landroid/net/Uri;
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v5

    .line 769
    .restart local v5    # "inStream":Ljava/io/InputStream;
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    move v7, v8

    .line 773
    goto :goto_0

    .line 774
    .end local v5    # "inStream":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 775
    .restart local v3    # "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 777
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "fileUri":Landroid/net/Uri;
    :catch_2
    move-exception v6

    .line 778
    .local v6, "re":Ljava/lang/RuntimeException;
    sget-object v8, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "attachmentExists RuntimeException="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 750
    .end local v2    # "contentUri":Ljava/lang/String;
    .end local v6    # "re":Ljava/lang/RuntimeException;
    .restart local v1    # "cachedFileUri":Landroid/net/Uri;
    .restart local v5    # "inStream":Ljava/io/InputStream;
    :catch_3
    move-exception v7

    goto :goto_1

    .line 770
    .end local v1    # "cachedFileUri":Landroid/net/Uri;
    .restart local v2    # "contentUri":Ljava/lang/String;
    .restart local v4    # "fileUri":Landroid/net/Uri;
    :catch_4
    move-exception v7

    goto :goto_2
.end method

.method public static buildInSelection(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .param p0, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1096
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1097
    :cond_0
    const-string v4, ""

    .line 1109
    :goto_0
    return-object v4

    .line 1099
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1100
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    const-string v4, " in ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    const-string v3, ""

    .line 1103
    .local v3, "sep":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 1104
    .local v1, "n":Ljava/lang/Number;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    const-string v3, ","

    .line 1107
    goto :goto_1

    .line 1108
    .end local v1    # "n":Ljava/lang/Number;
    :cond_2
    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method static buildLimitOneUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p0, "original"    # Landroid/net/Uri;

    .prologue
    .line 638
    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent;->uriWithLimit(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p0

    .line 642
    .end local p0    # "original":Landroid/net/Uri;
    :cond_0
    return-object p0
.end method

.method public static byteToHex(I)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # I

    .prologue
    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/Utility;->byteToHex(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static byteToHex(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "b"    # I

    .prologue
    .line 424
    and-int/lit16 p1, p1, 0xff

    .line 425
    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 426
    const-string v0, "0123456789ABCDEF"

    and-int/lit8 v1, p1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 427
    return-object p0
.end method

.method public static cancelTask(Landroid/os/AsyncTask;Z)V
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;Z)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<***>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 459
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 461
    :cond_0
    return-void
.end method

.method public static cancelTaskInterrupt(Landroid/os/AsyncTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 438
    .local p0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<***>;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->cancelTask(Landroid/os/AsyncTask;Z)V

    .line 439
    return-void
.end method

.method public static cancelTaskInterrupt(Lcom/android/emailcommon/utility/EmailAsyncTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 445
    .local p0, "task":Lcom/android/emailcommon/utility/EmailAsyncTask;, "Lcom/android/emailcommon/utility/EmailAsyncTask<***>;"
    if-eqz p0, :cond_0

    .line 446
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->cancel(Z)V

    .line 448
    :cond_0
    return-void
.end method

.method public static cleanUpMimeDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 495
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    :goto_0
    return-object p0

    .line 498
    :cond_0
    sget-object v0, Lcom/android/emailcommon/utility/Utility;->DATE_CLEANUP_PATTERN_WRONG_TIMEZONE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 499
    goto :goto_0
.end method

.method public static combine([Ljava/lang/Object;C)Ljava/lang/String;
    .locals 3
    .param p0, "parts"    # [Ljava/lang/Object;
    .param p1, "separator"    # C

    .prologue
    .line 137
    if-nez p0, :cond_0

    .line 138
    const/4 v2, 0x0

    .line 147
    :goto_0
    return-object v2

    .line 140
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 141
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 142
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 144
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 141
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 147
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    sget-object v0, Lcom/android/emailcommon/utility/Utility$NewFileCreator;->DEFAULT:Lcom/android/emailcommon/utility/Utility$NewFileCreator;

    invoke-static {v0, p0, p1}, Lcom/android/emailcommon/utility/Utility;->createUniqueFileInternal(Lcom/android/emailcommon/utility/Utility$NewFileCreator;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static createUniqueFileInternal(Lcom/android/emailcommon/utility/Utility$NewFileCreator;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 9
    .param p0, "nfc"    # Lcom/android/emailcommon/utility/Utility$NewFileCreator;
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 574
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 575
    .local v1, "file":Ljava/io/File;
    invoke-interface {p0, v1}, Lcom/android/emailcommon/utility/Utility$NewFileCreator;->createNewFile(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v1

    .line 595
    :goto_0
    return-object v6

    .line 579
    :cond_0
    const/16 v6, 0x2e

    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 581
    .local v4, "index":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 582
    invoke-virtual {p2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 583
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "extension":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-%d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 589
    .end local v0    # "extension":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .local v2, "format":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_2
    const v6, 0x7fffffff

    if-ge v3, v6, :cond_3

    .line 590
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 591
    .restart local v1    # "file":Ljava/io/File;
    invoke-interface {p0, v1}, Lcom/android/emailcommon/utility/Utility$NewFileCreator;->createNewFile(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v1

    .line 592
    goto :goto_0

    .line 586
    .end local v2    # "format":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-%d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "format":Ljava/lang/String;
    goto :goto_1

    .line 589
    .restart local v3    # "i":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 595
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private static decode(Ljava/nio/charset/Charset;[B)Ljava/lang/String;
    .locals 5
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .param p1, "b"    # [B

    .prologue
    .line 384
    if-nez p1, :cond_0

    .line 385
    const/4 v1, 0x0

    .line 388
    :goto_0
    return-object v1

    .line 387
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 388
    .local v0, "cb":Ljava/nio/CharBuffer;
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->length()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public static dumpCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 996
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    :goto_0
    if-eqz p0, :cond_1

    .line 998
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 999
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1002
    const-string v1, " (closed)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    :cond_0
    instance-of v1, p0, Landroid/database/CursorWrapper;

    if-eqz v1, :cond_1

    .line 1005
    check-cast p0, Landroid/database/CursorWrapper;

    .end local p0    # "c":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/database/CursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object p0

    .line 1006
    .restart local p0    # "c":Landroid/database/Cursor;
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1011
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static dumpFragment(Landroid/app/Fragment;)Ljava/lang/String;
    .locals 5
    .param p0, "f"    # Landroid/app/Fragment;

    .prologue
    .line 1083
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1084
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1085
    .local v1, "w":Ljava/io/PrintWriter;
    const-string v2, ""

    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v1, v4}, Landroid/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1086
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static enableStrictMode(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 1074
    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1077
    if-eqz p0, :cond_1

    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 1080
    return-void

    .line 1074
    :cond_0
    sget-object v0, Landroid/os/StrictMode$ThreadPolicy;->LAX:Landroid/os/StrictMode$ThreadPolicy;

    goto :goto_0

    .line 1077
    :cond_1
    sget-object v0, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    goto :goto_1
.end method

.method private static encode(Ljava/nio/charset/Charset;Ljava/lang/String;)[B
    .locals 3
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 374
    if-nez p1, :cond_0

    .line 375
    const/4 v1, 0x0

    .line 380
    :goto_0
    return-object v1

    .line 377
    :cond_0
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 378
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v1, v2, [B

    .line 379
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public static fastUrlDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x9

    .line 201
    :try_start_0
    const-string v8, "UTF-8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 203
    .local v0, "bytes":[B
    const/4 v6, 0x0

    .line 204
    .local v6, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v2, v0

    .local v2, "count":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 205
    aget-byte v1, v0, v4

    .line 206
    .local v1, "ch":B
    const/16 v8, 0x25

    if-ne v1, v8, :cond_2

    .line 207
    add-int/lit8 v8, v4, 0x1

    aget-byte v8, v0, v8

    add-int/lit8 v3, v8, -0x30

    .line 208
    .local v3, "h":I
    add-int/lit8 v8, v4, 0x2

    aget-byte v8, v0, v8

    add-int/lit8 v5, v8, -0x30

    .line 209
    .local v5, "l":I
    if-le v3, v9, :cond_0

    .line 210
    add-int/lit8 v3, v3, -0x7

    .line 212
    :cond_0
    if-le v5, v9, :cond_1

    .line 213
    add-int/lit8 v5, v5, -0x7

    .line 215
    :cond_1
    shl-int/lit8 v8, v3, 0x4

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    .line 216
    add-int/lit8 v4, v4, 0x2

    .line 224
    .end local v3    # "h":I
    .end local v5    # "l":I
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 204
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 218
    :cond_2
    const/16 v8, 0x2b

    if-ne v1, v8, :cond_3

    .line 219
    const/16 v8, 0x20

    aput-byte v8, v0, v6

    goto :goto_1

    .line 228
    .end local v0    # "bytes":[B
    .end local v1    # "ch":B
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v6    # "length":I
    :catch_0
    move-exception v7

    .line 229
    .local v7, "uee":Ljava/io/UnsupportedEncodingException;
    const/4 v8, 0x0

    .end local v7    # "uee":Ljava/io/UnsupportedEncodingException;
    :goto_2
    return-object v8

    .line 222
    .restart local v0    # "bytes":[B
    .restart local v1    # "ch":B
    .restart local v2    # "count":I
    .restart local v4    # "i":I
    .restart local v6    # "length":I
    :cond_3
    aget-byte v8, v0, v4

    aput-byte v8, v0, v6

    goto :goto_1

    .line 226
    .end local v1    # "ch":B
    :cond_4
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "UTF-8"

    invoke-direct {v8, v0, v9, v6, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public static findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/Account;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "allowAccountId"    # J
    .param p3, "hostName"    # Ljava/lang/String;
    .param p4, "userLogin"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 249
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "_"

    const-string v3, "\\_"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 250
    .local v14, "userName":Ljava/lang/String;
    sget-object v2, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/HostAuth;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "address like ? and login like ?  ESCAPE \'\\\' and protocol not like \"smtp\""

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    const/4 v6, 0x1

    aput-object v14, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 252
    .local v10, "c":Landroid/database/Cursor;
    if-nez v10, :cond_1

    new-instance v2, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v2}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v2

    .line 270
    .local v11, "c2":Landroid/database/Cursor;
    .local v12, "hostAuthId":J
    :cond_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 254
    .end local v11    # "c2":Landroid/database/Cursor;
    .end local v12    # "hostAuthId":J
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 255
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 257
    .restart local v12    # "hostAuthId":J
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "hostAuthKeyRecv=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 260
    .restart local v11    # "c2":Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 262
    .local v8, "accountId":J
    cmp-long v2, v8, p1

    if-eqz v2, :cond_2

    .line 263
    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 264
    .local v7, "account":Lcom/android/emailcommon/provider/Account;
    if-eqz v7, :cond_2

    .line 270
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 274
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 277
    .end local v7    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v8    # "accountId":J
    .end local v11    # "c2":Landroid/database/Cursor;
    .end local v12    # "hostAuthId":J
    :goto_0
    return-object v7

    .line 270
    .restart local v11    # "c2":Landroid/database/Cursor;
    .restart local v12    # "hostAuthId":J
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 274
    .end local v11    # "c2":Landroid/database/Cursor;
    .end local v12    # "hostAuthId":J
    :catchall_1
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 277
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static findExistingAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "syncAuthority"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 292
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 293
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "emailAddress=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 296
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 313
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v5

    .line 299
    :cond_0
    :try_start_1
    const-string v1, "displayName"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 313
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static fromAscii([B)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # [B

    .prologue
    .line 408
    sget-object v0, Lcom/android/emailcommon/utility/Utility;->ASCII:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/Utility;->decode(Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromUtf8([B)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # [B

    .prologue
    .line 398
    sget-object v0, Lcom/android/emailcommon/utility/Utility;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/Utility;->decode(Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateMessageId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 324
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 325
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x18

    if-ge v0, v2, :cond_0

    .line 327
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x4041800000000000L    # 35.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0x24

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_0
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    const-string v2, "@email.android.com>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getContentFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 969
    sget-object v2, Lcom/android/emailcommon/utility/Utility;->ATTACHMENT_META_NAME_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/utility/Utility;->getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 971
    .local v7, "name":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 972
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 974
    :cond_0
    return-object v7
.end method

.method public static getFirstRowBlob(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I[B)[B
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "column"    # I
    .param p7, "defaultValue"    # [B

    .prologue
    .line 731
    sget-object v8, Lcom/android/emailcommon/utility/Utility;->BLOB_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/android/emailcommon/utility/Utility;->getFirstRowColumn(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/utility/Utility$CursorGetter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static getFirstRowColumn(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/utility/Utility$CursorGetter;)Ljava/lang/Object;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ITT;",
            "Lcom/android/emailcommon/utility/Utility$CursorGetter",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 653
    .local p7, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p8, "getter":Lcom/android/emailcommon/utility/Utility$CursorGetter;, "Lcom/android/emailcommon/utility/Utility$CursorGetter<TT;>;"
    invoke-static {p1}, Lcom/android/emailcommon/utility/Utility;->buildLimitOneUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 654
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 656
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 658
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 659
    invoke-interface {p8, v6, p6}, Lcom/android/emailcommon/utility/Utility$CursorGetter;->get(Landroid/database/Cursor;I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p7

    .line 662
    .end local p7    # "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 665
    :cond_0
    :goto_0
    return-object p7

    .line 662
    .restart local p7    # "defaultValue":Ljava/lang/Object;, "TT;"
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "column"    # I

    .prologue
    .line 692
    const/4 v7, 0x0

    sget-object v8, Lcom/android/emailcommon/utility/Utility;->INT_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v8}, Lcom/android/emailcommon/utility/Utility;->getFirstRowColumn(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/utility/Utility$CursorGetter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "column"    # I
    .param p7, "defaultValue"    # Ljava/lang/Integer;

    .prologue
    .line 702
    sget-object v8, Lcom/android/emailcommon/utility/Utility;->INT_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/android/emailcommon/utility/Utility;->getFirstRowColumn(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/utility/Utility$CursorGetter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Long;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "column"    # I

    .prologue
    .line 673
    const/4 v7, 0x0

    sget-object v8, Lcom/android/emailcommon/utility/Utility;->LONG_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v8}, Lcom/android/emailcommon/utility/Utility;->getFirstRowColumn(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/utility/Utility$CursorGetter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public static getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "column"    # I
    .param p7, "defaultValue"    # Ljava/lang/Long;

    .prologue
    .line 683
    sget-object v8, Lcom/android/emailcommon/utility/Utility;->LONG_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/android/emailcommon/utility/Utility;->getFirstRowColumn(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/utility/Utility$CursorGetter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public static getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "column"    # I

    .prologue
    .line 711
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "column"    # I
    .param p7, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 721
    sget-object v8, Lcom/android/emailcommon/utility/Utility;->STRING_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/android/emailcommon/utility/Utility;->getFirstRowColumn(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/utility/Utility$CursorGetter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getMainThreadHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/android/emailcommon/utility/Utility;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->sMainThreadHandler:Landroid/os/Handler;

    .line 104
    :cond_0
    sget-object v0, Lcom/android/emailcommon/utility/Utility;->sMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static varargs getRowColumns(Landroid/content/Context;Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "id"    # J
    .param p4, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 862
    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, p4, v1, v1}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRowColumns(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 838
    array-length v1, p2

    new-array v8, v1, [Ljava/lang/String;

    .line 839
    .local v8, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 840
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 842
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v1, p2

    if-ge v7, v1, :cond_1

    .line 844
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 850
    .end local v7    # "i":I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v8, v5

    .line 852
    .end local v8    # "values":[Ljava/lang/String;
    :goto_1
    return-object v8

    .line 850
    .restart local v7    # "i":I
    .restart local v8    # "values":[Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "i":I
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getSmallHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 466
    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 470
    .local v2, "sha":Ljava/security/MessageDigest;
    invoke-static {p0}, Lcom/android/emailcommon/utility/Utility;->toUtf8(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 471
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->getSmallHashFromSha1([B)I

    move-result v0

    .line 472
    .local v0, "hash":I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .end local v0    # "hash":I
    .end local v2    # "sha":Ljava/security/MessageDigest;
    :goto_0
    return-object v3

    .line 467
    :catch_0
    move-exception v1

    .line 468
    .local v1, "impossible":Ljava/security/NoSuchAlgorithmException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static getSmallHashFromSha1([B)I
    .locals 3
    .param p0, "sha1"    # [B

    .prologue
    .line 479
    const/16 v1, 0x13

    aget-byte v1, p0, v1

    and-int/lit8 v0, v1, 0xf

    .line 480
    .local v0, "offset":I
    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method public static hasUnloadedAttachments(Landroid/content/Context;J)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J

    .prologue
    .line 793
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    .line 794
    .local v7, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v7, :cond_0

    const/4 v8, 0x0

    .line 827
    :goto_0
    return v8

    .line 795
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v3

    .line 796
    .local v3, "atts":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object v1, v3

    .local v1, "arr$":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_6

    aget-object v2, v1, v5

    .line 797
    .local v2, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static {p0, v2}, Lcom/android/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 802
    iget v8, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v8, v8, 0x6

    if-nez v8, :cond_5

    .line 804
    sget-object v8, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unloaded attachment isn\'t marked for download: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 806
    iget-wide v8, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 807
    .local v0, "acct":Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    .line 811
    :cond_1
    iget v8, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_3

    .line 812
    iget v8, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_3

    .line 796
    .end local v0    # "acct":Lcom/android/emailcommon/provider/Account;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 816
    .restart local v0    # "acct":Lcom/android/emailcommon/provider/Account;
    :cond_3
    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {p0, v8, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->delete(Landroid/content/Context;Landroid/net/Uri;J)I

    .line 824
    .end local v0    # "acct":Lcom/android/emailcommon/provider/Account;
    :cond_4
    :goto_2
    const/4 v8, 0x1

    goto :goto_0

    .line 817
    :cond_5
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 820
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 821
    .local v4, "cv":Landroid/content/ContentValues;
    const-string v8, "contentUri"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 822
    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {p0, v8, v9, v10, v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    goto :goto_2

    .line 827
    .end local v2    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v4    # "cv":Landroid/content/ContentValues;
    :cond_6
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static isExternalStorageMounted()Z
    .locals 2

    .prologue
    .line 867
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFirstUtf8Byte(B)Z
    .locals 2
    .param p0, "b"    # B

    .prologue
    .line 416
    and-int/lit16 v0, p0, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPortFieldValid(Landroid/widget/TextView;)Z
    .locals 6
    .param p0, "view"    # Landroid/widget/TextView;

    .prologue
    const/4 v3, 0x0

    .line 151
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 152
    .local v0, "chars":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v3

    .line 157
    :cond_1
    :try_start_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 161
    .local v2, "port":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/high16 v5, 0x10000

    if-ge v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 158
    .end local v2    # "port":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static isServerNameValid(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->isServerNameValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isServerNameValid(Ljava/lang/String;)Z
    .locals 10
    .param p0, "serverName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 176
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v9

    .line 190
    :goto_0
    return v1

    .line 180
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string v1, "http"

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .local v0, "uri":Ljava/net/URI;
    const/4 v1, 0x1

    goto :goto_0

    .line 189
    .end local v0    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/net/URISyntaxException;
    move v1, v9

    .line 190
    goto :goto_0
.end method

.method public static listViewSmoothScrollToPosition(Landroid/app/Activity;Landroid/widget/ListView;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "position"    # I

    .prologue
    .line 948
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/emailcommon/utility/Utility$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/emailcommon/utility/Utility$7;-><init>(Landroid/app/Activity;Landroid/widget/ListView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 957
    return-void
.end method

.method public static parseDateTimeToCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;
    .locals 8
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xd

    const/16 v5, 0xb

    const/4 v4, 0x6

    const/4 v2, 0x4

    .line 351
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x8

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x9

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xf

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 355
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 356
    return-object v0
.end method

.method public static parseDateTimeToMillis(Ljava/lang/String;)J
    .locals 3
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 341
    invoke-static {p0}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 342
    .local v0, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static parseEmailDateTimeToMillis(Ljava/lang/String;)J
    .locals 8
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 365
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x8

    const/16 v4, 0xa

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xb

    const/16 v5, 0xd

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xe

    const/16 v6, 0x10

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x11

    const/16 v7, 0x13

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 369
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 370
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static final readInputStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 109
    .local v2, "reader":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 111
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/16 v4, 0x200

    new-array v0, v4, [C

    .line 112
    .local v0, "buf":[C
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v1

    .local v1, "count":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 113
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static replaceBareLfWithCrlf(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 431
    const-string v0, "\r"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "\r\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;
    .locals 3
    .param p0, "r"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 541
    new-instance v0, Lcom/android/emailcommon/utility/Utility$2;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/utility/Utility$2;-><init>(Ljava/lang/Runnable;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/utility/Utility$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 513
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 514
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 523
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/emailcommon/utility/Utility$1;

    invoke-direct {v1, p0, p1}, Lcom/android/emailcommon/utility/Utility$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 529
    return-void
.end method

.method public static streamFromAsciiString(Ljava/lang/String;)Ljava/io/ByteArrayInputStream;
    .locals 2
    .param p0, "ascii"    # Ljava/lang/String;

    .prologue
    .line 503
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p0}, Lcom/android/emailcommon/utility/Utility;->toAscii(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static toAscii(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 403
    sget-object v0, Lcom/android/emailcommon/utility/Utility;->ASCII:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/Utility;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static toLongSet([J)Ljava/util/Set;
    .locals 5
    .param p0, "array"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 933
    array-length v2, p0

    .line 934
    .local v2, "size":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 935
    .local v1, "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 936
    aget-wide v3, p0, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 935
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 938
    :cond_0
    return-object v1
.end method

.method public static toPrimitiveLongArray(Ljava/util/Collection;)[J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 920
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    .line 921
    .local v4, "size":I
    new-array v3, v4, [J

    .line 923
    .local v3, "ret":[J
    const/4 v0, 0x0

    .line 924
    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 925
    .local v5, "value":Ljava/lang/Long;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v3, v0

    move v0, v1

    .line 926
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 927
    .end local v5    # "value":Ljava/lang/Long;
    :cond_0
    return-object v3
.end method

.method public static toUtf8(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 393
    sget-object v0, Lcom/android/emailcommon/utility/Utility;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/Utility;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

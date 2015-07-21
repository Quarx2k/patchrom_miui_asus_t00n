.class public Lcom/android/emailcommon/utility/ConversionUtilities;
.super Ljava/lang/Object;
.source "ConversionUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;
    }
.end annotation


# static fields
.field public static final BODY_QUOTED_PART_FORWARD:Ljava/lang/String; = "quoted-forward"

.field public static final BODY_QUOTED_PART_INTRO:Ljava/lang/String; = "quoted-intro"

.field public static final BODY_QUOTED_PART_REPLY:Ljava/lang/String; = "quoted-reply"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method private static appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 53
    :goto_0
    return-object p0

    .line 45
    :cond_0
    if-nez p0, :cond_1

    .line 46
    new-instance p0, Ljava/lang/StringBuffer;

    .end local p0    # "sb":Ljava/lang/StringBuffer;
    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local p0    # "sb":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 49
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 51
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static parseBodyFields(Ljava/util/ArrayList;)Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;)",
            "Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    new-instance v0, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;-><init>()V

    .line 77
    .local v0, "data":Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;
    const/4 v6, 0x0

    .line 78
    .local v6, "sbHtml":Ljava/lang/StringBuffer;
    const/4 v9, 0x0

    .line 79
    .local v9, "sbText":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .line 80
    .local v7, "sbHtmlReply":Ljava/lang/StringBuffer;
    const/4 v10, 0x0

    .line 81
    .local v10, "sbTextReply":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 83
    .local v8, "sbIntroText":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/emailcommon/mail/Part;

    .line 84
    .local v12, "viewable":Lcom/android/emailcommon/mail/Part;
    invoke-static {v12}, Lcom/android/emailcommon/internet/MimeUtility;->getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;

    move-result-object v11

    .line 85
    .local v11, "text":Ljava/lang/String;
    const-string v13, "X-Android-Body-Quoted-Part"

    invoke-interface {v12, v13}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, "replyTags":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 87
    .local v4, "replyTag":Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v13, v5

    if-lez v13, :cond_0

    .line 88
    const/4 v13, 0x0

    aget-object v4, v5, v13

    .line 91
    :cond_0
    const-string v13, "text/html"

    invoke-interface {v12}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 93
    .local v2, "isHtml":Z
    if-eqz v4, :cond_4

    .line 94
    const-string v13, "quoted-reply"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    iput-boolean v13, v0, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;->isQuotedReply:Z

    .line 95
    const-string v13, "quoted-forward"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    iput-boolean v13, v0, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;->isQuotedForward:Z

    .line 96
    const-string v13, "quoted-intro"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 98
    .local v3, "isQuotedIntro":Z
    iget-boolean v13, v0, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;->isQuotedReply:Z

    if-nez v13, :cond_1

    iget-boolean v13, v0, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;->isQuotedForward:Z

    if-eqz v13, :cond_3

    .line 99
    :cond_1
    if-eqz v2, :cond_2

    .line 100
    invoke-static {v7, v11}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    goto :goto_0

    .line 102
    :cond_2
    invoke-static {v10, v11}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 104
    goto :goto_0

    .line 106
    :cond_3
    if-eqz v3, :cond_4

    .line 107
    invoke-static {v8, v11}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 108
    goto :goto_0

    .line 113
    .end local v3    # "isQuotedIntro":Z
    :cond_4
    if-eqz v2, :cond_5

    .line 114
    invoke-static {v6, v11}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    goto :goto_0

    .line 116
    :cond_5
    invoke-static {v9, v11}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto :goto_0

    .line 121
    .end local v2    # "isHtml":Z
    .end local v4    # "replyTag":Ljava/lang/String;
    .end local v5    # "replyTags":[Ljava/lang/String;
    .end local v11    # "text":Ljava/lang/String;
    .end local v12    # "viewable":Lcom/android/emailcommon/mail/Part;
    :cond_6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 122
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 123
    .restart local v11    # "text":Ljava/lang/String;
    iput-object v11, v0, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;->textContent:Ljava/lang/String;

    .line 124
    invoke-static {v11}, Lcom/android/emailcommon/utility/TextUtilities;->makeSnippetFromPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;->snippet:Ljava/lang/String;

    .line 126
    .end local v11    # "text":Ljava/lang/String;
    :cond_7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 127
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 128
    .restart local v11    # "text":Ljava/lang/String;
    iput-object v11, v0, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;->htmlContent:Ljava/lang/String;

    .line 129
    iget-object v13, v0, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;->snippet:Ljava/lang/String;

    if-nez v13, :cond_8

    .line 130
    invoke-static {v11}, Lcom/android/emailcommon/utility/TextUtilities;->makeSnippetFromHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;->snippet:Ljava/lang/String;

    .line 133
    .end local v11    # "text":Ljava/lang/String;
    :cond_8
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    if-eqz v13, :cond_9

    .line 134
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;->htmlReply:Ljava/lang/String;

    .line 136
    :cond_9
    if-eqz v10, :cond_a

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    if-eqz v13, :cond_a

    .line 137
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;->textReply:Ljava/lang/String;

    .line 139
    :cond_a
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    if-eqz v13, :cond_b

    .line 140
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;->introText:Ljava/lang/String;

    .line 142
    :cond_b
    return-object v0
.end method

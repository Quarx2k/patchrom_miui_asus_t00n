.class public Lcom/android/emailcommon/internet/MimeHeader;
.super Ljava/lang/Object;
.source "MimeHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/internet/MimeHeader$Field;
    }
.end annotation


# static fields
.field public static final HEADER_ANDROID_ATTACHMENT_STORE_DATA:Ljava/lang/String; = "X-Android-Attachment-StoreData"

.field public static final HEADER_ANDROID_BODY_QUOTED_PART:Ljava/lang/String; = "X-Android-Body-Quoted-Part"

.field public static final HEADER_CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final HEADER_CONTENT_ID:Ljava/lang/String; = "Content-ID"

.field public static final HEADER_CONTENT_TRANSFER_ENCODING:Ljava/lang/String; = "Content-Transfer-Encoding"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final WRITE_OMIT_FIELDS:[Ljava/lang/String;


# instance fields
.field protected final mFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/internet/MimeHeader$Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "X-Android-Attachment-StoreData"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/internet/MimeHeader;->WRITE_OMIT_FIELDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    .line 133
    return-void
.end method

.method public static final arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 154
    invoke-static {p0, p1}, Lcom/android/emailcommon/internet/MimeHeader;->arrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 155
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
    .line 159
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, p0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 160
    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 159
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/emailcommon/internet/MimeHeader$Field;

    invoke-direct {v1, p1, p2}, Lcom/android/emailcommon/internet/MimeHeader$Field;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    return-void
.end method

.method public getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/internet/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "header":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 64
    const/4 v1, 0x0

    .line 66
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/emailcommon/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/internet/MimeHeader$Field;

    .line 84
    .local v0, "field":Lcom/android/emailcommon/internet/MimeHeader$Field;
    iget-object v3, v0, Lcom/android/emailcommon/internet/MimeHeader$Field;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    iget-object v3, v0, Lcom/android/emailcommon/internet/MimeHeader$Field;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    .end local v0    # "field":Lcom/android/emailcommon/internet/MimeHeader$Field;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 89
    const/4 v3, 0x0

    .line 91
    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    goto :goto_1
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v2, "removeFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/internet/MimeHeader$Field;>;"
    iget-object v3, p0, Lcom/android/emailcommon/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/internet/MimeHeader$Field;

    .line 97
    .local v0, "field":Lcom/android/emailcommon/internet/MimeHeader$Field;
    iget-object v3, v0, Lcom/android/emailcommon/internet/MimeHeader$Field;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    .end local v0    # "field":Lcom/android/emailcommon/internet/MimeHeader$Field;
    :cond_1
    iget-object v3, p0, Lcom/android/emailcommon/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 102
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 74
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/internet/MimeHeader;->removeHeader(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/android/emailcommon/internet/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 125
    .local v2, "writer":Ljava/io/BufferedWriter;
    iget-object v3, p0, Lcom/android/emailcommon/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/internet/MimeHeader$Field;

    .line 126
    .local v0, "field":Lcom/android/emailcommon/internet/MimeHeader$Field;
    sget-object v3, Lcom/android/emailcommon/internet/MimeHeader;->WRITE_OMIT_FIELDS:[Ljava/lang/String;

    iget-object v4, v0, Lcom/android/emailcommon/internet/MimeHeader$Field;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/emailcommon/internet/MimeHeader;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/emailcommon/internet/MimeHeader$Field;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/emailcommon/internet/MimeHeader$Field;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    .end local v0    # "field":Lcom/android/emailcommon/internet/MimeHeader$Field;
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 131
    return-void
.end method

.method public writeToString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 111
    iget-object v3, p0, Lcom/android/emailcommon/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 112
    const/4 v3, 0x0

    .line 120
    :goto_0
    return-object v3

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/emailcommon/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/internet/MimeHeader$Field;

    .line 116
    .local v1, "field":Lcom/android/emailcommon/internet/MimeHeader$Field;
    sget-object v3, Lcom/android/emailcommon/internet/MimeHeader;->WRITE_OMIT_FIELDS:[Ljava/lang/String;

    iget-object v4, v1, Lcom/android/emailcommon/internet/MimeHeader$Field;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/emailcommon/internet/MimeHeader;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/android/emailcommon/internet/MimeHeader$Field;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/emailcommon/internet/MimeHeader$Field;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 120
    .end local v1    # "field":Lcom/android/emailcommon/internet/MimeHeader$Field;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

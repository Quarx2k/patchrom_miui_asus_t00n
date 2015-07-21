.class public Lcom/android/bluetooth/map/BluetoothMapMessageListing;
.super Ljava/lang/Object;
.source "BluetoothMapMessageListing.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothMapMessageListing"


# instance fields
.field private hasUnread:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->hasUnread:Z

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public add(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)V
    .locals 3
    .param p1, "element"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v0, "BluetoothMapMessageListing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "list size is  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getRead()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->hasUnread:Z

    .line 46
    :cond_0
    return-void
.end method

.method public encode()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 80
    const-string v5, "BluetoothMapMessageListing"

    const-string v6, "encoding to UTF-8 format"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 82
    .local v3, "sw":Ljava/io/StringWriter;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 84
    .local v4, "xmlMsgElement":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_0
    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 85
    const-string v5, "UTF-8"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 86
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 87
    const/4 v5, 0x0

    const-string v6, "MAP-msg-listing"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    const/4 v5, 0x0

    const-string v6, "version"

    const-string v7, "1.0"

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 91
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    .local v1, "element":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    :try_start_1
    invoke-virtual {v1, v4}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->encode(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v5, 0x0

    :try_start_2
    const-string v6, "msg"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    const-string v5, "BluetoothMapMessageListing"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 106
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "element":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "BluetoothMapMessageListing"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    const-string v5, "BluetoothMapMessageListing"

    const-string v6, "Exiting encode "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    return-object v5

    .line 97
    .restart local v1    # "element":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :catch_2
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v5, "BluetoothMapMessageListing"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "BluetoothMapMessageListing"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "element":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v5, 0x0

    const-string v6, "MAP-msg-listing"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "BluetoothMapMessageListing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "returning  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 59
    :goto_0
    return v0

    .line 58
    :cond_0
    const-string v0, "BluetoothMapMessageListing"

    const-string v1, "list is null returning 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUnread()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->hasUnread:Z

    return v0
.end method

.method public segment(II)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "offset"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 119
    add-int v0, p2, p1

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    add-int v1, p2, p1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    .line 129
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    .line 124
    const-string v0, "BluetoothMapMessageListing"

    const-string v1, "offset greater than list size. Returning null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    goto :goto_0
.end method

.method public sort()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 115
    return-void
.end method

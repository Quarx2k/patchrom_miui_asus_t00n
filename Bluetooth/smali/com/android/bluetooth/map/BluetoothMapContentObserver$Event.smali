.class public Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
.super Ljava/lang/Object;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Event"
.end annotation


# instance fields
.field eventType:Ljava/lang/String;

.field folder:Ljava/lang/String;

.field handle:J

.field msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field oldFolder:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    .locals 3
    .param p2, "eventType"    # Ljava/lang/String;
    .param p3, "handle"    # J
    .param p5, "folder"    # Ljava/lang/String;
    .param p6, "oldFolder"    # Ljava/lang/String;
    .param p7, "msgType"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .prologue
    const/4 v2, 0x0

    .line 178
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const-string v0, "telecom/msg/"

    .line 180
    .local v0, "PATH":Ljava/lang/String;
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    .line 181
    iput-wide p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->handle:J

    .line 182
    if-eqz p5, :cond_0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    .line 187
    :goto_0
    if-eqz p6, :cond_1

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    .line 192
    :goto_1
    iput-object p7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 193
    return-void

    .line 185
    :cond_0
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    goto :goto_0

    .line 190
    :cond_1
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public encode()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 197
    .local v1, "sw":Ljava/io/StringWriter;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 199
    .local v2, "xmlEvtReport":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_0
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 200
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 201
    const-string v3, "\n"

    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    const-string v3, ""

    const-string v4, "MAP-event-report"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    const-string v3, ""

    const-string v4, "version"

    const-string v5, "1.0"

    invoke-interface {v2, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    const-string v3, ""

    const-string v4, "event"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 206
    const-string v3, ""

    const-string v4, "type"

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    const-string v3, ""

    const-string v4, "handle"

    iget-wide v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->handle:J

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-static {v5, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMapHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 208
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 209
    const-string v3, ""

    const-string v4, "folder"

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 212
    const-string v3, ""

    const-string v4, "old_folder"

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    :cond_1
    const-string v3, ""

    const-string v4, "msg_type"

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    const-string v3, ""

    const-string v4, "event"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    const-string v3, ""

    const-string v4, "MAP-event-report"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 227
    :goto_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    return-object v3

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 221
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 223
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 224
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

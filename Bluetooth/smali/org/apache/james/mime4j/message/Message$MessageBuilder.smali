.class Lorg/apache/james/mime4j/message/Message$MessageBuilder;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lorg/apache/james/mime4j/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/message/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageBuilder"
.end annotation


# instance fields
.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/james/mime4j/message/Message;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/message/Message;)V
    .locals 1

    .prologue
    .line 102
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->this$0:Lorg/apache/james/mime4j/message/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    .line 103
    return-void
.end method

.method private expect(Ljava/lang/Class;)V
    .locals 3
    .param p1, "c"    # Ljava/lang/Class;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal stack error: Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public body(Lorg/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V
    .locals 5
    .param p1, "bd"    # Lorg/apache/james/mime4j/BodyDescriptor;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    const-class v3, Lorg/apache/james/mime4j/message/Entity;

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 178
    invoke-virtual {p1}, Lorg/apache/james/mime4j/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "enc":Ljava/lang/String;
    const-string v3, "base64"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    new-instance v2, Lorg/apache/james/mime4j/decoder/Base64InputStream;

    invoke-direct {v2, p2}, Lorg/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .end local p2    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    move-object p2, v2

    .line 185
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local p2    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 186
    .local v0, "body":Lorg/apache/james/mime4j/message/Body;
    invoke-virtual {p1}, Lorg/apache/james/mime4j/BodyDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    new-instance v0, Lorg/apache/james/mime4j/message/MemoryTextBody;

    .end local v0    # "body":Lorg/apache/james/mime4j/message/Body;
    invoke-virtual {p1}, Lorg/apache/james/mime4j/BodyDescriptor;->getCharset()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p2, v3}, Lorg/apache/james/mime4j/message/MemoryTextBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 192
    .restart local v0    # "body":Lorg/apache/james/mime4j/message/Body;
    :goto_1
    iget-object v3, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {v3, v0}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;)V

    .line 193
    return-void

    .line 181
    .end local v0    # "body":Lorg/apache/james/mime4j/message/Body;
    :cond_1
    const-string v3, "quoted-printable"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    new-instance v2, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-direct {v2, p2}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p2    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    move-object p2, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local p2    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 189
    .restart local v0    # "body":Lorg/apache/james/mime4j/message/Body;
    :cond_2
    new-instance v0, Lorg/apache/james/mime4j/message/MemoryBinaryBody;

    .end local v0    # "body":Lorg/apache/james/mime4j/message/Body;
    invoke-direct {v0, p2}, Lorg/apache/james/mime4j/message/MemoryBinaryBody;-><init>(Ljava/io/InputStream;)V

    .restart local v0    # "body":Lorg/apache/james/mime4j/message/Body;
    goto :goto_1
.end method

.method public endBodyPart()V
    .locals 1

    .prologue
    .line 217
    const-class v0, Lorg/apache/james/mime4j/message/BodyPart;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 218
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 219
    return-void
.end method

.method public endHeader()V
    .locals 2

    .prologue
    .line 154
    const-class v1, Lorg/apache/james/mime4j/message/Header;

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 155
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/Header;

    .line 156
    .local v0, "h":Lorg/apache/james/mime4j/message/Header;
    const-class v1, Lorg/apache/james/mime4j/message/Entity;

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 157
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/message/Entity;->setHeader(Lorg/apache/james/mime4j/message/Header;)V

    .line 158
    return-void
.end method

.method public endMessage()V
    .locals 1

    .prologue
    .line 131
    const-class v0, Lorg/apache/james/mime4j/message/Message;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 132
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public endMultipart()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 200
    return-void
.end method

.method public epilogue(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    const-class v2, Lorg/apache/james/mime4j/message/Multipart;

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 226
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 228
    .local v1, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "b":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 229
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 231
    :cond_0
    iget-object v2, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/james/mime4j/message/Multipart;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/message/Multipart;->setEpilogue(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public field(Ljava/lang/String;)V
    .locals 2
    .param p1, "fieldData"    # Ljava/lang/String;

    .prologue
    .line 146
    const-class v0, Lorg/apache/james/mime4j/message/Header;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 147
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/Header;

    invoke-static {p1}, Lorg/apache/james/mime4j/field/Field;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->addField(Lorg/apache/james/mime4j/field/Field;)V

    .line 148
    return-void
.end method

.method public preamble(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    const-class v2, Lorg/apache/james/mime4j/message/Multipart;

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 239
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 241
    .local v1, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "b":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 242
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 244
    :cond_0
    iget-object v2, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/james/mime4j/message/Multipart;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/message/Multipart;->setPreamble(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public raw(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startBodyPart()V
    .locals 2

    .prologue
    .line 206
    const-class v1, Lorg/apache/james/mime4j/message/Multipart;

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 208
    new-instance v0, Lorg/apache/james/mime4j/message/BodyPart;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/BodyPart;-><init>()V

    .line 209
    .local v0, "bodyPart":Lorg/apache/james/mime4j/message/BodyPart;
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/message/Multipart;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/message/Multipart;->addBodyPart(Lorg/apache/james/mime4j/message/BodyPart;)V

    .line 210
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    return-void
.end method

.method public startHeader()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    new-instance v1, Lorg/apache/james/mime4j/message/Header;

    invoke-direct {v1}, Lorg/apache/james/mime4j/message/Header;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method

.method public startMessage()V
    .locals 3

    .prologue
    .line 117
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    iget-object v2, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->this$0:Lorg/apache/james/mime4j/message/Message;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :goto_0
    return-void

    .line 120
    :cond_0
    const-class v1, Lorg/apache/james/mime4j/message/Entity;

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 121
    new-instance v0, Lorg/apache/james/mime4j/message/Message;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/Message;-><init>()V

    .line 122
    .local v0, "m":Lorg/apache/james/mime4j/message/Message;
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;)V

    .line 123
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public startMultipart(Lorg/apache/james/mime4j/BodyDescriptor;)V
    .locals 3
    .param p1, "bd"    # Lorg/apache/james/mime4j/BodyDescriptor;

    .prologue
    .line 164
    const-class v2, Lorg/apache/james/mime4j/message/Entity;

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 166
    iget-object v2, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/Entity;

    .line 167
    .local v0, "e":Lorg/apache/james/mime4j/message/Entity;
    new-instance v1, Lorg/apache/james/mime4j/message/Multipart;

    invoke-direct {v1}, Lorg/apache/james/mime4j/message/Multipart;-><init>()V

    .line 168
    .local v1, "multiPart":Lorg/apache/james/mime4j/message/Multipart;
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;)V

    .line 169
    iget-object v2, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-void
.end method

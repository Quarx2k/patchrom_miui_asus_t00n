.class public Lorg/apache/james/mime4j/MimeStreamParser;
.super Ljava/lang/Object;
.source "MimeStreamParser.java"


# static fields
.field private static fieldChars:Ljava/util/BitSet;

.field private static final log:Lorg/apache/james/mime4j/Log;


# instance fields
.field private bodyDescriptors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/james/mime4j/BodyDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lorg/apache/james/mime4j/ContentHandler;

.field private prematureEof:Z

.field private raw:Z

.field private rootStream:Lorg/apache/james/mime4j/RootInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const-class v1, Lorg/apache/james/mime4j/MimeStreamParser;

    invoke-static {v1}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/james/mime4j/Log;

    .line 53
    const/4 v1, 0x0

    sput-object v1, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    .line 62
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    sput-object v1, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    .line 63
    const/16 v0, 0x21

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 64
    sget-object v1, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    const/16 v0, 0x3b

    :goto_1
    const/16 v1, 0x7e

    if-gt v0, v1, :cond_1

    .line 67
    sget-object v1, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 69
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v2, p0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    .line 57
    iput-object v2, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    .line 58
    iput-boolean v1, p0, Lorg/apache/james/mime4j/MimeStreamParser;->raw:Z

    .line 59
    iput-boolean v1, p0, Lorg/apache/james/mime4j/MimeStreamParser;->prematureEof:Z

    .line 75
    return-void
.end method

.method private parseBodyPart(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    iget-boolean v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->raw:Z

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    new-instance v1, Lorg/apache/james/mime4j/CloseShieldInputStream;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/ContentHandler;->raw(Ljava/io/InputStream;)V

    .line 217
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v0}, Lorg/apache/james/mime4j/ContentHandler;->startBodyPart()V

    .line 214
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/MimeStreamParser;->parseEntity(Ljava/io/InputStream;)V

    .line 215
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v0}, Lorg/apache/james/mime4j/ContentHandler;->endBodyPart()V

    goto :goto_0
.end method

.method private parseEntity(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/MimeStreamParser;->parseHeader(Ljava/io/InputStream;)Lorg/apache/james/mime4j/BodyDescriptor;

    move-result-object v0

    .line 139
    .local v0, "bd":Lorg/apache/james/mime4j/BodyDescriptor;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/BodyDescriptor;->isMultipart()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 140
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 142
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v3, v0}, Lorg/apache/james/mime4j/ContentHandler;->startMultipart(Lorg/apache/james/mime4j/BodyDescriptor;)V

    .line 144
    new-instance v2, Lorg/apache/james/mime4j/MimeBoundaryInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/BodyDescriptor;->getBoundary()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 146
    .local v2, "tempIs":Lorg/apache/james/mime4j/MimeBoundaryInputStream;
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    new-instance v4, Lorg/apache/james/mime4j/CloseShieldInputStream;

    invoke-direct {v4, v2}, Lorg/apache/james/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v4}, Lorg/apache/james/mime4j/ContentHandler;->preamble(Ljava/io/InputStream;)V

    .line 147
    invoke-virtual {v2}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->consume()V

    .line 149
    :cond_0
    invoke-virtual {v2}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->hasMoreParts()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    new-instance v2, Lorg/apache/james/mime4j/MimeBoundaryInputStream;

    .end local v2    # "tempIs":Lorg/apache/james/mime4j/MimeBoundaryInputStream;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/BodyDescriptor;->getBoundary()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 151
    .restart local v2    # "tempIs":Lorg/apache/james/mime4j/MimeBoundaryInputStream;
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/MimeStreamParser;->parseBodyPart(Ljava/io/InputStream;)V

    .line 152
    invoke-virtual {v2}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->consume()V

    .line 153
    invoke-virtual {v2}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->parentEOF()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->prematureEof:Z

    .line 165
    :cond_1
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    new-instance v4, Lorg/apache/james/mime4j/CloseShieldInputStream;

    invoke-direct {v4, p1}, Lorg/apache/james/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v4}, Lorg/apache/james/mime4j/ContentHandler;->epilogue(Ljava/io/InputStream;)V

    .line 167
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v3}, Lorg/apache/james/mime4j/ContentHandler;->endMultipart()V

    .line 169
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 191
    .end local v2    # "tempIs":Lorg/apache/james/mime4j/MimeBoundaryInputStream;
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 193
    return-void

    .line 171
    :cond_3
    invoke-virtual {v0}, Lorg/apache/james/mime4j/BodyDescriptor;->isMessage()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 172
    invoke-virtual {v0}, Lorg/apache/james/mime4j/BodyDescriptor;->isBase64Encoded()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 173
    sget-object v3, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/james/mime4j/Log;

    const-string v4, "base64 encoded message/rfc822 detected"

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 174
    new-instance v1, Lorg/apache/james/mime4j/EOLConvertingInputStream;

    new-instance v3, Lorg/apache/james/mime4j/decoder/Base64InputStream;

    invoke-direct {v3, p1}, Lorg/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    move-object p1, v1

    .line 181
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local p1    # "is":Ljava/io/InputStream;
    :cond_4
    :goto_1
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 182
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/MimeStreamParser;->parseMessage(Ljava/io/InputStream;)V

    .line 183
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 176
    :cond_5
    invoke-virtual {v0}, Lorg/apache/james/mime4j/BodyDescriptor;->isQuotedPrintableEncoded()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 177
    sget-object v3, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/james/mime4j/Log;

    const-string v4, "quoted-printable encoded message/rfc822 detected"

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 178
    new-instance v1, Lorg/apache/james/mime4j/EOLConvertingInputStream;

    new-instance v3, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-direct {v3, p1}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    move-object p1, v1

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local p1    # "is":Ljava/io/InputStream;
    goto :goto_1

    .line 185
    :cond_6
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    new-instance v4, Lorg/apache/james/mime4j/CloseShieldInputStream;

    invoke-direct {v4, p1}, Lorg/apache/james/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v0, v4}, Lorg/apache/james/mime4j/ContentHandler;->body(Lorg/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method private parseHeader(Ljava/io/InputStream;)Lorg/apache/james/mime4j/BodyDescriptor;
    .locals 17
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v1, Lorg/apache/james/mime4j/BodyDescriptor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x0

    :goto_0
    invoke-direct {v1, v14}, Lorg/apache/james/mime4j/BodyDescriptor;-><init>(Lorg/apache/james/mime4j/BodyDescriptor;)V

    .line 230
    .local v1, "bd":Lorg/apache/james/mime4j/BodyDescriptor;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v14}, Lorg/apache/james/mime4j/ContentHandler;->startHeader()V

    .line 232
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;

    invoke-virtual {v14}, Lorg/apache/james/mime4j/RootInputStream;->getLineNumber()I

    move-result v7

    .line 234
    .local v7, "lineNumber":I
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 235
    .local v10, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 236
    .local v2, "curr":I
    const/4 v9, 0x0

    .line 237
    .local v9, "prev":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v14, -0x1

    if-eq v2, v14, :cond_1

    .line 238
    const/16 v14, 0xa

    if-ne v2, v14, :cond_3

    const/16 v14, 0xa

    if-eq v9, v14, :cond_0

    if-nez v9, :cond_3

    .line 242
    :cond_0
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 255
    :cond_1
    const/4 v11, 0x0

    .line 256
    .local v11, "start":I
    const/4 v8, 0x0

    .line 257
    .local v8, "pos":I
    move v12, v7

    .line 258
    .local v12, "startLineNumber":I
    :goto_2
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-ge v8, v14, :cond_d

    .line 259
    :goto_3
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-ge v8, v14, :cond_5

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    const/16 v15, 0xd

    if-eq v14, v15, :cond_5

    .line 260
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 227
    .end local v1    # "bd":Lorg/apache/james/mime4j/BodyDescriptor;
    .end local v2    # "curr":I
    .end local v7    # "lineNumber":I
    .end local v8    # "pos":I
    .end local v9    # "prev":I
    .end local v10    # "sb":Ljava/lang/StringBuffer;
    .end local v11    # "start":I
    .end local v12    # "startLineNumber":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/james/mime4j/BodyDescriptor;

    goto :goto_0

    .line 245
    .restart local v1    # "bd":Lorg/apache/james/mime4j/BodyDescriptor;
    .restart local v2    # "curr":I
    .restart local v7    # "lineNumber":I
    .restart local v9    # "prev":I
    .restart local v10    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    int-to-char v14, v2

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 246
    const/16 v14, 0xd

    if-ne v2, v14, :cond_4

    :goto_4
    goto :goto_1

    :cond_4
    move v9, v2

    goto :goto_4

    .line 262
    .restart local v8    # "pos":I
    .restart local v11    # "start":I
    .restart local v12    # "startLineNumber":I
    :cond_5
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ge v8, v14, :cond_6

    add-int/lit8 v14, v8, 0x1

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-eq v14, v15, :cond_6

    .line 263
    add-int/lit8 v8, v8, 0x1

    .line 264
    goto :goto_2

    .line 267
    :cond_6
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    if-ge v8, v14, :cond_7

    sget-object v14, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    add-int/lit8 v15, v8, 0x2

    invoke-virtual {v10, v15}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 273
    :cond_7
    invoke-virtual {v10, v11, v8}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "field":Ljava/lang/String;
    add-int/lit8 v11, v8, 0x2

    .line 279
    const/16 v14, 0x3a

    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 280
    .local v6, "index":I
    const/4 v13, 0x0

    .line 281
    .local v13, "valid":Z
    const/4 v14, -0x1

    if-eq v6, v14, :cond_9

    sget-object v14, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 282
    const/4 v13, 0x1

    .line 283
    const/4 v14, 0x0

    invoke-virtual {v3, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, "fieldName":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v5, v14, :cond_8

    .line 285
    sget-object v14, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-nez v14, :cond_c

    .line 286
    const/4 v13, 0x0

    .line 291
    :cond_8
    if-eqz v13, :cond_9

    .line 292
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v14, v3}, Lorg/apache/james/mime4j/ContentHandler;->field(Ljava/lang/String;)V

    .line 293
    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v4, v14}, Lorg/apache/james/mime4j/BodyDescriptor;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_9
    if-nez v13, :cond_a

    sget-object v14, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v14}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 298
    sget-object v14, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/james/mime4j/Log;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Line "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": Ignoring invalid field: \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 302
    :cond_a
    move v12, v7

    .line 305
    .end local v3    # "field":Ljava/lang/String;
    .end local v6    # "index":I
    .end local v13    # "valid":Z
    :cond_b
    add-int/lit8 v8, v8, 0x2

    .line 306
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 284
    .restart local v3    # "field":Ljava/lang/String;
    .restart local v4    # "fieldName":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v6    # "index":I
    .restart local v13    # "valid":Z
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 309
    .end local v3    # "field":Ljava/lang/String;
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "index":I
    .end local v13    # "valid":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v14}, Lorg/apache/james/mime4j/ContentHandler;->endHeader()V

    .line 311
    return-object v1
.end method

.method private parseMessage(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    iget-boolean v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->raw:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    new-instance v1, Lorg/apache/james/mime4j/CloseShieldInputStream;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/ContentHandler;->raw(Ljava/io/InputStream;)V

    .line 203
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v0}, Lorg/apache/james/mime4j/ContentHandler;->startMessage()V

    .line 200
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/MimeStreamParser;->parseEntity(Ljava/io/InputStream;)V

    .line 201
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v0}, Lorg/apache/james/mime4j/ContentHandler;->endMessage()V

    goto :goto_0
.end method


# virtual methods
.method public getPrematureEof()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->prematureEof:Z

    return v0
.end method

.method public isRaw()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->raw:Z

    return v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lorg/apache/james/mime4j/RootInputStream;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/RootInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;

    .line 85
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/MimeStreamParser;->parseMessage(Ljava/io/InputStream;)V

    .line 86
    return-void
.end method

.method public setContentHandler(Lorg/apache/james/mime4j/ContentHandler;)V
    .locals 0
    .param p1, "h"    # Lorg/apache/james/mime4j/ContentHandler;

    .prologue
    .line 321
    iput-object p1, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    .line 322
    return-void
.end method

.method public setRaw(Z)V
    .locals 0
    .param p1, "raw"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lorg/apache/james/mime4j/MimeStreamParser;->raw:Z

    .line 111
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/RootInputStream;->truncate()V

    .line 127
    return-void
.end method

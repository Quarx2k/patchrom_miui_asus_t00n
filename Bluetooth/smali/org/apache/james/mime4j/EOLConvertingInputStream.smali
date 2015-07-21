.class public Lorg/apache/james/mime4j/EOLConvertingInputStream;
.super Ljava/io/InputStream;
.source "EOLConvertingInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;
    }
.end annotation


# static fields
.field public static final CONVERT_BOTH:I = 0x3

.field public static final CONVERT_CR:I = 0x1

.field public static final CONVERT_LF:I = 0x2


# instance fields
.field private callback:Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;

.field private flags:I

.field private in:Ljava/io/PushbackInputStream;

.field private nextTenPctPos:I

.field private pos:I

.field private previous:I

.field private size:I

.field private tenPctSize:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "_in"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    .line 43
    iput v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->previous:I

    .line 44
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->flags:I

    .line 45
    iput v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->size:I

    .line 46
    iput v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->pos:I

    .line 64
    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILorg/apache/james/mime4j/EOLConvertingInputStream$Callback;)V
    .locals 1
    .param p1, "_in"    # Ljava/io/InputStream;
    .param p2, "_size"    # I
    .param p3, "_callback"    # Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 77
    iput p2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->size:I

    .line 78
    iget v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->size:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->tenPctSize:I

    .line 79
    iget v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->tenPctSize:I

    iput v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->nextTenPctPos:I

    .line 80
    iput-object p3, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->callback:Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;

    .line 81
    return-void
.end method

.method private readByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 94
    .local v0, "b":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->callback:Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->pos:I

    iget v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->nextTenPctPos:I

    if-ne v1, v2, :cond_0

    .line 96
    iget v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->nextTenPctPos:I

    iget v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->tenPctSize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->nextTenPctPos:I

    .line 97
    iget-object v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->callback:Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->callback:Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;

    iget v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->pos:I

    invoke-interface {v1, v2}, Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;->report(I)V

    .line 102
    :cond_0
    return v0
.end method

.method private unreadByte(I)V
    .locals 1
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 107
    iget v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->pos:I

    .line 108
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    .line 90
    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xd

    const/4 v2, -0x1

    const/16 v4, 0xa

    .line 114
    invoke-direct {p0}, Lorg/apache/james/mime4j/EOLConvertingInputStream;->readByte()I

    move-result v0

    .line 116
    .local v0, "b":I
    if-ne v0, v2, :cond_0

    .line 117
    iget v3, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->size:I

    iput v3, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->pos:I

    .line 136
    :goto_0
    return v2

    .line 121
    :cond_0
    iget v3, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    if-ne v0, v5, :cond_3

    .line 122
    invoke-direct {p0}, Lorg/apache/james/mime4j/EOLConvertingInputStream;->readByte()I

    move-result v1

    .line 123
    .local v1, "c":I
    if-eq v1, v2, :cond_1

    .line 124
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/EOLConvertingInputStream;->unreadByte(I)V

    .line 126
    :cond_1
    if-eq v1, v4, :cond_2

    .line 127
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/EOLConvertingInputStream;->unreadByte(I)V

    .line 134
    .end local v1    # "c":I
    :cond_2
    :goto_1
    iput v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->previous:I

    move v2, v0

    .line 136
    goto :goto_0

    .line 129
    :cond_3
    iget v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    if-ne v0, v4, :cond_2

    iget v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->previous:I

    if-eq v2, v5, :cond_2

    .line 130
    const/16 v0, 0xd

    .line 131
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/EOLConvertingInputStream;->unreadByte(I)V

    goto :goto_1
.end method

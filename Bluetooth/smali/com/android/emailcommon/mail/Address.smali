.class public Lcom/android/emailcommon/mail/Address;
.super Ljava/lang/Object;
.source "Address.java"


# static fields
.field private static final DOMAIN_PART:Ljava/lang/String; = "([[\\w][\\d]\\-\\(\\)\\[\\]]+\\.)+[[\\w][\\d]\\-\\(\\)\\[\\]]+"

.field private static final DOMAIN_PART_PART:Ljava/lang/String; = "[[\\w][\\d]\\-\\(\\)\\[\\]]+"

.field private static final EMAIL_ADDRESS:Ljava/util/regex/Pattern;

.field private static final EMPTY_ADDRESS_ARRAY:[Lcom/android/emailcommon/mail/Address;

.field private static final LIST_DELIMITER_EMAIL:C = '\u0001'

.field private static final LIST_DELIMITER_PERSONAL:C = '\u0002'

.field private static final LOCAL_PART:Ljava/lang/String; = "[^@]+"

.field private static final REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

.field private static final REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

.field private static final UNQUOTE:Ljava/util/regex/Pattern;


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mPersonal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "^<?([^>]+)>?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/mail/Address;->REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

    .line 57
    const-string v0, "^\"?([^\"]*)\"?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/mail/Address;->REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

    .line 59
    const-string v0, "\\\\([\\\\\"])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/mail/Address;->UNQUOTE:Ljava/util/regex/Pattern;

    .line 73
    const-string v0, "\\A[^@]+@([[\\w][\\d]\\-\\(\\)\\[\\]]+\\.)+[[\\w][\\d]\\-\\(\\)\\[\\]]+\\z"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/mail/Address;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 76
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/emailcommon/mail/Address;

    sput-object v0, Lcom/android/emailcommon/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/android/emailcommon/mail/Address;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/mail/Address;->setAddress(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "personal"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/mail/Address;->setAddress(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, p2}, Lcom/android/emailcommon/mail/Address;->setPersonal(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static isAllValid(Ljava/lang/String;)Z
    .locals 6
    .param p0, "addressList"    # Ljava/lang/String;

    .prologue
    .line 133
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 134
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v4

    .line 135
    .local v4, "tokens":[Landroid/text/util/Rfc822Token;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v4

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 136
    aget-object v3, v4, v1

    .line 137
    .local v3, "token":Landroid/text/util/Rfc822Token;
    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->isValidAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 139
    const/4 v5, 0x0

    .line 143
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "token":Landroid/text/util/Rfc822Token;
    .end local v4    # "tokens":[Landroid/text/util/Rfc822Token;
    :goto_1
    return v5

    .line 135
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    .restart local v3    # "token":Landroid/text/util/Rfc822Token;
    .restart local v4    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "token":Landroid/text/util/Rfc822Token;
    .end local v4    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_1
    const/4 v5, 0x1

    goto :goto_1
.end method

.method static isValidAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "address"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 181
    sget-object v0, Lcom/android/emailcommon/mail/Address;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public static pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;
    .locals 1
    .param p0, "addresses"    # [Lcom/android/emailcommon/mail/Address;

    .prologue
    .line 447
    invoke-static {p0}, Lcom/android/emailcommon/mail/Address;->toHeader([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static packedToHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "packedList"    # Ljava/lang/String;

    .prologue
    .line 389
    invoke-static {p0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->toHeader([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;
    .locals 8
    .param p0, "addressList"    # Ljava/lang/String;

    .prologue
    .line 154
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 155
    :cond_0
    sget-object v7, Lcom/android/emailcommon/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/android/emailcommon/mail/Address;

    .line 172
    :goto_0
    return-object v7

    .line 157
    :cond_1
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v6

    .line 158
    .local v6, "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v1, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v6

    .local v3, "length":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 160
    aget-object v5, v6, v2

    .line 161
    .local v5, "token":Landroid/text/util/Rfc822Token;
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 163
    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->isValidAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 164
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "name":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 166
    const/4 v4, 0x0

    .line 168
    :cond_2
    new-instance v7, Lcom/android/emailcommon/mail/Address;

    invoke-direct {v7, v0, v4}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v4    # "name":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 172
    .end local v0    # "address":Ljava/lang/String;
    .end local v5    # "token":Landroid/text/util/Rfc822Token;
    :cond_4
    const/4 v7, 0x0

    new-array v7, v7, [Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/emailcommon/mail/Address;

    goto :goto_0
.end method

.method public static parseAndPack(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "textList"    # Ljava/lang/String;

    .prologue
    .line 370
    invoke-static {p0}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static quoteString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 241
    if-nez p0, :cond_1

    .line 242
    const/4 p0, 0x0

    .line 248
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 244
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const-string v0, "^\".*\"$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static toFriendly([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;
    .locals 5
    .param p0, "addresses"    # [Lcom/android/emailcommon/mail/Address;

    .prologue
    const/4 v4, 0x0

    .line 345
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 346
    :cond_0
    const/4 v2, 0x0

    .line 356
    :goto_0
    return-object v2

    .line 348
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 349
    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 351
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 352
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 353
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 356
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toHeader([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;
    .locals 5
    .param p0, "addresses"    # [Lcom/android/emailcommon/mail/Address;

    .prologue
    const/4 v4, 0x0

    .line 307
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 308
    :cond_0
    const/4 v2, 0x0

    .line 319
    :goto_0
    return-object v2

    .line 310
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 311
    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 313
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 314
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 316
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 319
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;
    .locals 1
    .param p0, "addresses"    # [Lcom/android/emailcommon/mail/Address;

    .prologue
    .line 259
    const-string v0, ","

    invoke-static {p0, v0}, Lcom/android/emailcommon/mail/Address;->toString([Lcom/android/emailcommon/mail/Address;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([Lcom/android/emailcommon/mail/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "addresses"    # [Lcom/android/emailcommon/mail/Address;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 270
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 271
    :cond_0
    const/4 v2, 0x0

    .line 282
    :goto_0
    return-object v2

    .line 273
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 274
    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 276
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 277
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 278
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 282
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;
    .locals 11
    .param p0, "addressList"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    .line 399
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 400
    :cond_0
    sget-object v6, Lcom/android/emailcommon/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/android/emailcommon/mail/Address;

    .line 439
    :goto_0
    return-object v6

    .line 403
    :cond_1
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v8, :cond_2

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 405
    invoke-static {p0}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v6

    goto :goto_0

    .line 408
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v2, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 410
    .local v3, "length":I
    const/4 v5, 0x0

    .line 411
    .local v5, "pairStartIndex":I
    const/4 v4, 0x0

    .line 418
    .local v4, "pairEndIndex":I
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 420
    .local v1, "addressEndIndex":I
    :goto_1
    if-ge v5, v3, :cond_6

    .line 421
    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 422
    if-ne v4, v8, :cond_3

    .line 423
    move v4, v3

    .line 426
    :cond_3
    if-eq v1, v8, :cond_4

    if-gt v4, v1, :cond_5

    .line 429
    :cond_4
    new-instance v0, Lcom/android/emailcommon/mail/Address;

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .local v0, "address":Lcom/android/emailcommon/mail/Address;
    :goto_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    add-int/lit8 v5, v4, 0x1

    .line 438
    goto :goto_1

    .line 431
    .end local v0    # "address":Lcom/android/emailcommon/mail/Address;
    :cond_5
    new-instance v0, Lcom/android/emailcommon/mail/Address;

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .restart local v0    # "address":Lcom/android/emailcommon/mail/Address;
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_2

    .line 439
    .end local v0    # "address":Lcom/android/emailcommon/mail/Address;
    :cond_6
    sget-object v6, Lcom/android/emailcommon/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/emailcommon/mail/Address;

    goto :goto_0
.end method

.method public static unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;
    .locals 2
    .param p0, "packedList"    # Ljava/lang/String;

    .prologue
    .line 379
    invoke-static {p0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 380
    .local v0, "array":[Lcom/android/emailcommon/mail/Address;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static unpackToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "packedList"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-static {p0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->toString([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 186
    instance-of v0, p1, Lcom/android/emailcommon/mail/Address;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/android/emailcommon/mail/Address;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 197
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public pack()Ljava/lang/String;
    .locals 4

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, "personal":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 459
    .end local v0    # "address":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "address":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 96
    sget-object v0, Lcom/android/emailcommon/mail/Address;->REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setPersonal(Ljava/lang/String;)V
    .locals 2
    .param p1, "personal"    # Ljava/lang/String;

    .prologue
    .line 115
    if-eqz p1, :cond_0

    .line 116
    sget-object v0, Lcom/android/emailcommon/mail/Address;->REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 117
    sget-object v0, Lcom/android/emailcommon/mail/Address;->UNQUOTE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-static {p1}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const/4 p1, 0x0

    .line 123
    :cond_0
    iput-object p1, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public toFriendly()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    .line 332
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public toHeader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    const-string v1, ".*[\\(\\)<>@,;:\\\\\".\\[\\]].*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->quoteString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method

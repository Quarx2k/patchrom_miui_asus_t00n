.class Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;
.super Ljava/lang/Object;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayerInfo"
.end annotation


# instance fields
.field private mCharsetId:S

.field private mDisplayableName:[B

.field private mDisplayableNameLength:S

.field private mEntryLength:S

.field private mFeatureMask:[I

.field private mIsAvailable:Z

.field private mIsFocussed:Z

.field private mItemLength:S

.field private mItemType:B

.field private mMajorPlayerType:B

.field private mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

.field private mPlayState:B

.field private mPlayerId:S

.field private mPlayerPackageName:Ljava/lang/String;

.field private mPlayerSubType:I

.field private mTrackNumber:J

.field final synthetic this$0:Lcom/android/bluetooth/a2dp/Avrcp;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/a2dp/Avrcp;SBIBSS[BLjava/lang/String;[I)V
    .locals 5
    .param p2, "playerId"    # S
    .param p3, "majorPlayerType"    # B
    .param p4, "playerSubType"    # I
    .param p5, "playState"    # B
    .param p6, "charsetId"    # S
    .param p7, "displayableNameLength"    # S
    .param p8, "displayableName"    # [B
    .param p9, "playerPackageName"    # Ljava/lang/String;
    .param p10, "featureMask"    # [I

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x10

    .line 2026
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2027
    iput-short p2, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    .line 2028
    iput-byte p3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mMajorPlayerType:B

    .line 2029
    iput p4, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mPlayerSubType:I

    .line 2030
    iput-byte p5, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mPlayState:B

    .line 2031
    iput-short p6, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mCharsetId:S

    .line 2032
    iput-short p7, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mDisplayableNameLength:S

    .line 2033
    iput-object p9, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mPlayerPackageName:Ljava/lang/String;

    .line 2034
    iput-boolean v1, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mIsAvailable:Z

    .line 2035
    iput-boolean v1, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mIsFocussed:Z

    .line 2036
    const/4 v1, 0x1

    iput-byte v1, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mItemType:B

    .line 2037
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mFeatureMask:[I

    .line 2038
    new-instance v1, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    invoke-direct {v1, p1}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;-><init>(Lcom/android/bluetooth/a2dp/Avrcp;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    .line 2039
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mTrackNumber:J

    .line 2040
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 2041
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mFeatureMask:[I

    aget v2, p10, v0

    aput v2, v1, v0

    .line 2040
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2044
    :cond_0
    iget-short v1, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mDisplayableNameLength:S

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mDisplayableName:[B

    .line 2045
    const/4 v0, 0x0

    :goto_1
    iget-short v1, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mDisplayableNameLength:S

    if-ge v0, v1, :cond_1

    .line 2046
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mDisplayableName:[B

    aget-byte v2, p8, v0

    aput-byte v2, v1, v0

    .line 2045
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2049
    :cond_1
    iget-short v1, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mDisplayableNameLength:S

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x10

    int-to-short v1, v1

    iput-short v1, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mItemLength:S

    .line 2053
    iget-short v1, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mItemLength:S

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mEntryLength:S

    .line 2055
    const-string v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayerInfo: mPlayerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    const-string v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMajorPlayerType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mMajorPlayerType:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPlayerSubType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mPlayerSubType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    const-string v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPlayState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mPlayState:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCharsetId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mCharsetId:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    const-string v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPlayerPackageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mPlayerPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDisplayableNameLength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mDisplayableNameLength:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    const-string v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mItemLength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mItemLength:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mEntryLength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mEntryLength:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    const-string v1, "Avrcp"

    const-string v2, "mFeatureMask="

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_2

    .line 2062
    const-string v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mFeatureMask:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2064
    :cond_2
    const-string v1, "Avrcp"

    const-string v2, "mDisplayableName="

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    const/4 v0, 0x0

    :goto_3
    iget-short v1, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mDisplayableNameLength:S

    if-ge v0, v1, :cond_3

    .line 2066
    const-string v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mDisplayableName:[B

    aget-byte v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2069
    :cond_3
    return-void
.end method


# virtual methods
.method public GetMetadata()Lcom/android/bluetooth/a2dp/Avrcp$Metadata;
    .locals 1

    .prologue
    .line 2076
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    return-object v0
.end method

.method public GetPlayState()B
    .locals 1

    .prologue
    .line 2085
    iget-byte v0, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mPlayState:B

    return v0
.end method

.method public GetPlayerAvailablility()Z
    .locals 1

    .prologue
    .line 2109
    iget-boolean v0, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mIsAvailable:Z

    return v0
.end method

.method public GetPlayerFocus()Z
    .locals 1

    .prologue
    .line 2113
    iget-boolean v0, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mIsFocussed:Z

    return v0
.end method

.method public GetTrackNumber()J
    .locals 2

    .prologue
    .line 2093
    iget-wide v0, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mTrackNumber:J

    return-wide v0
.end method

.method public RetrievePlayerEntryLength()I
    .locals 1

    .prologue
    .line 2126
    iget-short v0, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mEntryLength:S

    return v0
.end method

.method public RetrievePlayerId()S
    .locals 1

    .prologue
    .line 2118
    iget-short v0, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    return v0
.end method

.method public RetrievePlayerItemEntry()[B
    .locals 7

    .prologue
    const/16 v6, 0x10

    .line 2130
    iget-short v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mEntryLength:S

    new-array v1, v3, [B

    .line 2131
    .local v1, "playerEntry":[B
    const/4 v2, 0x0

    .line 2133
    .local v2, "position":I
    iget-byte v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mItemType:B

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 2134
    iget-short v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 2135
    iget-short v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 2136
    iget-byte v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mMajorPlayerType:B

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 2137
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 2138
    iget v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mPlayerSubType:I

    mul-int/lit8 v4, v0, 0x8

    shr-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 2137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2140
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    iget-byte v4, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mPlayState:B

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->convertPlayStateToPlayStatus(I)I
    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2900(Lcom/android/bluetooth/a2dp/Avrcp;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 2141
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_1

    .line 2142
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mFeatureMask:[I

    aget v3, v3, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 2141
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2144
    :cond_1
    iget-short v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mCharsetId:S

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 2145
    iget-short v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mCharsetId:S

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 2146
    iget-short v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mDisplayableNameLength:S

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 2147
    iget-short v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mDisplayableNameLength:S

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 2148
    const/4 v0, 0x0

    :goto_2
    iget-short v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mDisplayableNameLength:S

    if-ge v0, v3, :cond_2

    .line 2149
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mDisplayableName:[B

    aget-byte v3, v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 2148
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2151
    :cond_2
    iget-short v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mEntryLength:S

    if-eq v2, v3, :cond_3

    .line 2152
    const-string v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERROR populating PlayerItemEntry: position:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mEntryLength:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-short v5, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mEntryLength:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    :cond_3
    const-string v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaPlayerInfo: mPlayerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-short v5, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    const-string v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMajorPlayerType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mMajorPlayerType:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mPlayerSubType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mPlayerSubType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    const-string v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPlayState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mPlayState:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mCharsetId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-short v5, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mCharsetId:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    const-string v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPlayerPackageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mPlayerPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDisplayableNameLength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-short v5, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mDisplayableNameLength:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    const-string v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mItemLength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-short v5, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mItemLength:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mEntryLength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-short v5, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mEntryLength:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    const-string v3, "Avrcp"

    const-string v4, "mFeatureMask="

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v6, :cond_4

    .line 2162
    const-string v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mFeatureMask:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2164
    :cond_4
    const-string v3, "Avrcp"

    const-string v4, "mDisplayableName="

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    const/4 v0, 0x0

    :goto_4
    iget-short v3, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mDisplayableNameLength:S

    if-ge v0, v3, :cond_5

    .line 2166
    const-string v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mDisplayableName:[B

    aget-byte v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2168
    :cond_5
    const-string v3, "Avrcp"

    const-string v4, "playerEntry item is populated as below:="

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v2, :cond_6

    .line 2170
    const-string v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2173
    :cond_6
    return-object v1
.end method

.method public RetrievePlayerPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mPlayerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public SetMetadata(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;)V
    .locals 2
    .param p1, "metaData"    # Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    .prologue
    .line 2080
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->access$5600(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->access$5602(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 2081
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->artist:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->access$5400(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->artist:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->access$5402(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 2082
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->access$5500(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->access$5502(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 2083
    return-void
.end method

.method public SetPlayState(B)V
    .locals 0
    .param p1, "playState"    # B

    .prologue
    .line 2089
    iput-byte p1, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mPlayState:B

    .line 2090
    return-void
.end method

.method public SetPlayerAvailablility(Z)V
    .locals 0
    .param p1, "isAvailable"    # Z

    .prologue
    .line 2101
    iput-boolean p1, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mIsAvailable:Z

    .line 2102
    return-void
.end method

.method public SetPlayerFocus(Z)V
    .locals 0
    .param p1, "isFocussed"    # Z

    .prologue
    .line 2105
    iput-boolean p1, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mIsFocussed:Z

    .line 2106
    return-void
.end method

.method public SetTrackNumber(J)V
    .locals 0
    .param p1, "trackNumber"    # J

    .prologue
    .line 2097
    iput-wide p1, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mTrackNumber:J

    .line 2098
    return-void
.end method

.method public getPlayerPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2072
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->mPlayerPackageName:Ljava/lang/String;

    return-object v0
.end method

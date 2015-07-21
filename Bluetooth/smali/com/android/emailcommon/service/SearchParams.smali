.class public Lcom/android/emailcommon/service/SearchParams;
.super Ljava/lang/Object;
.source "SearchParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/SearchParams$SearchParamsError;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/service/SearchParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_LIMIT:I = 0xa

.field private static final DEFAULT_OFFSET:I


# instance fields
.field public final mEndDate:Ljava/util/Date;

.field public final mFilter:Ljava/lang/String;

.field public mIncludeChildren:Z

.field public mLimit:I

.field public final mMailboxId:J

.field public mOffset:I

.field public mSearchMailboxId:J

.field public final mStartDate:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/android/emailcommon/service/SearchParams$1;

    invoke-direct {v0}, Lcom/android/emailcommon/service/SearchParams$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/service/SearchParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 2
    .param p1, "mailboxId"    # J
    .param p3, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    .line 44
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    .line 60
    iput-wide p1, p0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    .line 61
    iput-object p3, p0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    .line 63
    iput-object v1, p0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    .line 64
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;J)V
    .locals 2
    .param p1, "mailboxId"    # J
    .param p3, "filter"    # Ljava/lang/String;
    .param p4, "searchMailboxId"    # J

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    .line 44
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    .line 67
    iput-wide p1, p0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    .line 68
    iput-object p3, p0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    .line 70
    iput-object v1, p0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    .line 71
    iput-wide p4, p0, Lcom/android/emailcommon/service/SearchParams;->mSearchMailboxId:J

    .line 72
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JLjava/util/Date;Ljava/util/Date;)V
    .locals 1
    .param p1, "mailboxId"    # J
    .param p3, "filter"    # Ljava/lang/String;
    .param p4, "searchMailboxId"    # J
    .param p6, "startDate"    # Ljava/util/Date;
    .param p7, "endDate"    # Ljava/util/Date;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    .line 44
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    .line 76
    iput-wide p1, p0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    .line 77
    iput-object p3, p0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    .line 78
    iput-wide p4, p0, Lcom/android/emailcommon/service/SearchParams;->mSearchMailboxId:J

    .line 79
    iput-object p6, p0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    .line 80
    iput-object p7, p0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v2, p0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    .line 44
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    .line 47
    iput v3, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v0

    .line 167
    .local v0, "dateWindow":Landroid/util/SparseArray;
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 168
    new-instance v4, Ljava/util/Date;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    iput-object v4, p0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    .line 172
    :goto_1
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 173
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v3, p0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    .line 177
    :goto_2
    return-void

    .end local v0    # "dateWindow":Landroid/util/SparseArray;
    :cond_0
    move v1, v3

    .line 162
    goto :goto_0

    .line 170
    .restart local v0    # "dateWindow":Landroid/util/SparseArray;
    :cond_1
    iput-object v7, p0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    goto :goto_1

    .line 175
    :cond_2
    iput-object v7, p0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    if-ne p1, p0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v1

    .line 88
    :cond_1
    if-eqz p1, :cond_2

    instance-of v3, p1, Lcom/android/emailcommon/service/SearchParams;

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    .line 89
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 92
    check-cast v0, Lcom/android/emailcommon/service/SearchParams;

    .line 93
    .local v0, "os":Lcom/android/emailcommon/service/SearchParams;
    iget-wide v3, p0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    iget-wide v5, v0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    iget-boolean v4, v0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    iget-object v4, v0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    iget-object v4, v0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    iget v4, v0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    iget v4, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 104
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SearchParams "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 142
    iget-wide v4, p0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 143
    iget-boolean v1, p0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v1, p0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget v1, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v1, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 148
    .local v0, "dateWindow":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 155
    return-void

    .end local v0    # "dateWindow":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Object;>;"
    :cond_2
    move v1, v3

    .line 143
    goto :goto_0
.end method

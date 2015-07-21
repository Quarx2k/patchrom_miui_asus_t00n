.class public abstract Lcom/android/emailcommon/mail/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Body;
.implements Lcom/android/emailcommon/mail/Part;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/mail/Message$RecipientType;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/android/emailcommon/mail/Message;


# instance fields
.field private mFlags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/emailcommon/mail/Flag;",
            ">;"
        }
    .end annotation
.end field

.field protected mFolder:Lcom/android/emailcommon/mail/Folder;

.field protected mInternalDate:Ljava/util/Date;

.field protected mUid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/emailcommon/mail/Message;

    sput-object v0, Lcom/android/emailcommon/mail/Message;->EMPTY_ARRAY:[Lcom/android/emailcommon/mail/Message;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/mail/Message;->mFlags:Ljava/util/HashSet;

    return-void
.end method

.method private getFlagSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/emailcommon/mail/Flag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/emailcommon/mail/Message;->mFlags:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/mail/Message;->mFlags:Ljava/util/HashSet;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/mail/Message;->mFlags:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public getFlags()[Lcom/android/emailcommon/mail/Flag;
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/emailcommon/mail/Message;->getFlagSet()Ljava/util/HashSet;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/emailcommon/mail/Flag;

    return-object v0
.end method

.method public getFolder()Lcom/android/emailcommon/mail/Folder;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/emailcommon/mail/Message;->mFolder:Lcom/android/emailcommon/mail/Folder;

    return-object v0
.end method

.method public abstract getFrom()[Lcom/android/emailcommon/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public getInternalDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/emailcommon/mail/Message;->mInternalDate:Ljava/util/Date;

    return-object v0
.end method

.method public abstract getMessageId()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getReceivedDate()Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getReplyTo()[Lcom/android/emailcommon/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getSentDate()Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getSubject()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/emailcommon/mail/Message;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/emailcommon/mail/Message;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSet(Lcom/android/emailcommon/mail/Flag;)Z
    .locals 1
    .param p1, "flag"    # Lcom/android/emailcommon/mail/Flag;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/emailcommon/mail/Message;->getFlagSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract saveChanges()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public setFlag(Lcom/android/emailcommon/mail/Flag;Z)V
    .locals 0
    .param p1, "flag"    # Lcom/android/emailcommon/mail/Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/android/emailcommon/mail/Message;->setFlagDirectlyForTest(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 123
    return-void
.end method

.method public final setFlagDirectlyForTest(Lcom/android/emailcommon/mail/Flag;Z)V
    .locals 1
    .param p1, "flag"    # Lcom/android/emailcommon/mail/Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 114
    if-eqz p2, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/android/emailcommon/mail/Message;->getFlagSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/android/emailcommon/mail/Message;->getFlagSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setFlags([Lcom/android/emailcommon/mail/Flag;Z)V
    .locals 4
    .param p1, "flags"    # [Lcom/android/emailcommon/mail/Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 131
    move-object v0, p1

    .local v0, "arr$":[Lcom/android/emailcommon/mail/Flag;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 132
    .local v1, "flag":Lcom/android/emailcommon/mail/Flag;
    invoke-virtual {p0, v1, p2}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    .end local v1    # "flag":Lcom/android/emailcommon/mail/Flag;
    :cond_0
    return-void
.end method

.method public abstract setFrom(Lcom/android/emailcommon/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public setInternalDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "internalDate"    # Ljava/util/Date;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/emailcommon/mail/Message;->mInternalDate:Ljava/util/Date;

    .line 59
    return-void
.end method

.method public abstract setMessageId(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public setRecipient(Lcom/android/emailcommon/mail/Message$RecipientType;Lcom/android/emailcommon/mail/Address;)V
    .locals 2
    .param p1, "type"    # Lcom/android/emailcommon/mail/Message$RecipientType;
    .param p2, "address"    # Lcom/android/emailcommon/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/emailcommon/mail/Address;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/emailcommon/mail/Message;->setRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V

    .line 76
    return-void
.end method

.method public abstract setRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setReplyTo([Lcom/android/emailcommon/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setSentDate(Ljava/util/Date;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setSubject(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/emailcommon/mail/Message;->mUid:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/mail/Message;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

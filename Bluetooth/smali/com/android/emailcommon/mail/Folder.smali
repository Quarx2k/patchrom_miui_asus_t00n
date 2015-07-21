.class public abstract Lcom/android/emailcommon/mail/Folder;
.super Ljava/lang/Object;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;,
        Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;,
        Lcom/android/emailcommon/mail/Folder$FolderRole;,
        Lcom/android/emailcommon/mail/Folder$FolderType;,
        Lcom/android/emailcommon/mail/Folder$OpenMode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    return-void
.end method


# virtual methods
.method public abstract appendMessages([Lcom/android/emailcommon/mail/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract canCreate(Lcom/android/emailcommon/mail/Folder$FolderType;)Z
.end method

.method public abstract close(Z)V
.end method

.method public abstract copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract createMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract delete(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract exists()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract expunge()[Lcom/android/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessageCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessages(IILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessages(JJLcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessages(Lcom/android/emailcommon/service/SearchParams;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public getMessages([Lcom/android/emailcommon/mail/Flag;[Lcom/android/emailcommon/mail/Flag;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 2
    .param p1, "setFlags"    # [Lcom/android/emailcommon/mail/Flag;
    .param p2, "clearFlags"    # [Lcom/android/emailcommon/mail/Flag;
    .param p3, "listener"    # Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getMessages([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPermanentFlags()[Lcom/android/emailcommon/mail/Flag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public getRole()Lcom/android/emailcommon/mail/Folder$FolderRole;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/android/emailcommon/mail/Folder$FolderRole;->UNKNOWN:Lcom/android/emailcommon/mail/Folder$FolderRole;

    return-object v0
.end method

.method public abstract getUnreadMessageCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract isOpen()Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end method

.method public abstract open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

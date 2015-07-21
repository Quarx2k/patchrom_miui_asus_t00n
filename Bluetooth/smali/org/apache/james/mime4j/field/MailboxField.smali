.class public Lorg/apache/james/mime4j/field/MailboxField;
.super Lorg/apache/james/mime4j/field/Field;
.source "MailboxField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/field/MailboxField$Parser;
    }
.end annotation


# instance fields
.field private final mailbox:Lorg/apache/james/mime4j/field/address/Mailbox;

.field private final parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;Lorg/apache/james/mime4j/field/address/parser/ParseException;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "raw"    # Ljava/lang/String;
    .param p4, "mailbox"    # Lorg/apache/james/mime4j/field/address/Mailbox;
    .param p5, "parseException"    # Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iput-object p4, p0, Lorg/apache/james/mime4j/field/MailboxField;->mailbox:Lorg/apache/james/mime4j/field/address/Mailbox;

    .line 38
    iput-object p5, p0, Lorg/apache/james/mime4j/field/MailboxField;->parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .line 39
    return-void
.end method


# virtual methods
.method public getMailbox()Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/james/mime4j/field/MailboxField;->mailbox:Lorg/apache/james/mime4j/field/address/Mailbox;

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/field/address/parser/ParseException;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/james/mime4j/field/MailboxField;->parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;

    return-object v0
.end method

.class public Lorg/apache/james/mime4j/field/AddressListField;
.super Lorg/apache/james/mime4j/field/Field;
.source "AddressListField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/field/AddressListField$Parser;
    }
.end annotation


# instance fields
.field private addressList:Lorg/apache/james/mime4j/field/address/AddressList;

.field private parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/field/address/AddressList;Lorg/apache/james/mime4j/field/address/parser/ParseException;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "raw"    # Ljava/lang/String;
    .param p4, "addressList"    # Lorg/apache/james/mime4j/field/address/AddressList;
    .param p5, "parseException"    # Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput-object p4, p0, Lorg/apache/james/mime4j/field/AddressListField;->addressList:Lorg/apache/james/mime4j/field/address/AddressList;

    .line 36
    iput-object p5, p0, Lorg/apache/james/mime4j/field/AddressListField;->parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .line 37
    return-void
.end method


# virtual methods
.method public getAddressList()Lorg/apache/james/mime4j/field/address/AddressList;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/james/mime4j/field/AddressListField;->addressList:Lorg/apache/james/mime4j/field/address/AddressList;

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/field/address/parser/ParseException;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/james/mime4j/field/AddressListField;->parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;

    return-object v0
.end method

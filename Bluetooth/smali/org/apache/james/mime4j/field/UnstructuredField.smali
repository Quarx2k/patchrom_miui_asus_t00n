.class public Lorg/apache/james/mime4j/field/UnstructuredField;
.super Lorg/apache/james/mime4j/field/Field;
.source "UnstructuredField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/field/UnstructuredField$Parser;
    }
.end annotation


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "raw"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-object p4, p0, Lorg/apache/james/mime4j/field/UnstructuredField;->value:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/james/mime4j/field/UnstructuredField;->value:Ljava/lang/String;

    return-object v0
.end method

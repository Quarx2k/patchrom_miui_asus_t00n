.class Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ArrayTable$ColumnEntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/ArrayTable$ColumnEntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable$ColumnEntrySet;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 576
    .local p0, "this":Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1;, "Lcom/google/common/collect/ArrayTable$ColumnEntrySet.1;"
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1;->this$1:Lcom/google/common/collect/ArrayTable$ColumnEntrySet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 576
    .local p0, "this":Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1;, "Lcom/google/common/collect/ArrayTable$ColumnEntrySet.1;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1;->get(I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected get(I)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "rowIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry",
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 578
    .local p0, "this":Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1;, "Lcom/google/common/collect/ArrayTable$ColumnEntrySet.1;"
    new-instance v0, Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1$1;-><init>(Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1;I)V

    return-object v0
.end method

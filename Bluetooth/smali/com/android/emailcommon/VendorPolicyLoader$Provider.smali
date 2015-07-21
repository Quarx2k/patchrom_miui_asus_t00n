.class public Lcom/android/emailcommon/VendorPolicyLoader$Provider;
.super Ljava/lang/Object;
.source "VendorPolicyLoader.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/VendorPolicyLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x761f7a2f5e3b8b6dL


# instance fields
.field public domain:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public incomingUri:Ljava/lang/String;

.field public incomingUriTemplate:Ljava/lang/String;

.field public incomingUsername:Ljava/lang/String;

.field public incomingUsernameTemplate:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public note:Ljava/lang/String;

.field public outgoingUri:Ljava/lang/String;

.field public outgoingUriTemplate:Ljava/lang/String;

.field public outgoingUsername:Ljava/lang/String;

.field public outgoingUsernameTemplate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private expandTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;

    .prologue
    .line 231
    move-object v0, p1

    .line 232
    .local v0, "returnString":Ljava/lang/String;
    const-string v1, "\\$email"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    const-string v1, "\\$user"

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    const-string v1, "\\$domain"

    iget-object v2, p0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    return-object v0
.end method


# virtual methods
.method public expandTemplates(Ljava/lang/String;)V
    .locals 3
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 217
    const-string v2, "@"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "emailParts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v1, v0, v2

    .line 220
    .local v1, "user":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->incomingUriTemplate:Ljava/lang/String;

    invoke-direct {p0, v2, p1, v1}, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->expandTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->incomingUri:Ljava/lang/String;

    .line 221
    iget-object v2, p0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    invoke-direct {p0, v2, p1, v1}, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->expandTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->incomingUsername:Ljava/lang/String;

    .line 222
    iget-object v2, p0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->outgoingUriTemplate:Ljava/lang/String;

    invoke-direct {p0, v2, p1, v1}, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->expandTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->outgoingUri:Ljava/lang/String;

    .line 223
    iget-object v2, p0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    invoke-direct {p0, v2, p1, v1}, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->expandTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->outgoingUsername:Ljava/lang/String;

    .line 224
    return-void
.end method

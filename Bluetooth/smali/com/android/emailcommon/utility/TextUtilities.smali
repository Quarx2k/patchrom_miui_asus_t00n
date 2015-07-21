.class public Lcom/android/emailcommon/utility/TextUtilities;
.super Ljava/lang/Object;
.source "TextUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;
    }
.end annotation


# static fields
.field static final ESCAPE_STRINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final HIGHLIGHT_COLOR_INT:I = -0x100

.field static final HIGHLIGHT_COLOR_STRING:Ljava/lang/String;

.field private static final MAX_SNIPPET_LENGTH:I = 0xc8

.field static final MAX_STRIP_TAG_LENGTH:I = 0x6

.field static final NON_BREAKING_SPACE_CHARACTER:C = '\u00a0'

.field static final STRIP_TAGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xfc

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0xffff00

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/TextUtilities;->HIGHLIGHT_COLOR_STRING:Ljava/lang/String;

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "script"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "style"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "applet"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "head"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/utility/TextUtilities;->STRIP_TAGS:[Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    .line 60
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&nbsp"

    const/16 v2, 0xa0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&iexcl"

    const/16 v2, 0xa1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&cent"

    const/16 v2, 0xa2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&pound"

    const/16 v2, 0xa3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&curren"

    const/16 v2, 0xa4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&yen"

    const/16 v2, 0xa5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&brvbar"

    const/16 v2, 0xa6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&sect"

    const/16 v2, 0xa7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&uml"

    const/16 v2, 0xa8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&copy"

    const/16 v2, 0xa9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ordf"

    const/16 v2, 0xaa

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&laquo"

    const/16 v2, 0xab

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&not"

    const/16 v2, 0xac

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&shy"

    const/16 v2, 0xad

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&reg"

    const/16 v2, 0xae

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&macr"

    const/16 v2, 0xaf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&deg"

    const/16 v2, 0xb0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&plusmn"

    const/16 v2, 0xb1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&sup2"

    const/16 v2, 0xb2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&sup3"

    const/16 v2, 0xb3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&acute"

    const/16 v2, 0xb4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&micro"

    const/16 v2, 0xb5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&para"

    const/16 v2, 0xb6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&middot"

    const/16 v2, 0xb7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&cedil"

    const/16 v2, 0xb8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&sup1"

    const/16 v2, 0xb9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ordm"

    const/16 v2, 0xba

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&raquo"

    const/16 v2, 0xbb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&frac14"

    const/16 v2, 0xbc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&frac12"

    const/16 v2, 0xbd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&frac34"

    const/16 v2, 0xbe

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&iquest"

    const/16 v2, 0xbf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Agrave"

    const/16 v2, 0xc0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Aacute"

    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Acirc"

    const/16 v2, 0xc2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Atilde"

    const/16 v2, 0xc3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Auml"

    const/16 v2, 0xc4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Aring"

    const/16 v2, 0xc5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&AElig"

    const/16 v2, 0xc6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Ccedil"

    const/16 v2, 0xc7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Egrave"

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Eacute"

    const/16 v2, 0xc9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Ecirc"

    const/16 v2, 0xca

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Euml"

    const/16 v2, 0xcb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Igrave"

    const/16 v2, 0xcc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Iacute"

    const/16 v2, 0xcd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Icirc"

    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Iuml"

    const/16 v2, 0xcf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ETH"

    const/16 v2, 0xd0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Ntilde"

    const/16 v2, 0xd1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Ograve"

    const/16 v2, 0xd2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Oacute"

    const/16 v2, 0xd3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Ocirc"

    const/16 v2, 0xd4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Otilde"

    const/16 v2, 0xd5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Ouml"

    const/16 v2, 0xd6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&times"

    const/16 v2, 0xd7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Oslash"

    const/16 v2, 0xd8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Ugrave"

    const/16 v2, 0xd9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Uacute"

    const/16 v2, 0xda

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Ucirc"

    const/16 v2, 0xdb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Uuml"

    const/16 v2, 0xdc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Yacute"

    const/16 v2, 0xdd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&THORN"

    const/16 v2, 0xde

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&szlig"

    const/16 v2, 0xdf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&agrave"

    const/16 v2, 0xe0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&aacute"

    const/16 v2, 0xe1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&acirc"

    const/16 v2, 0xe2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&atilde"

    const/16 v2, 0xe3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&auml"

    const/16 v2, 0xe4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&aring"

    const/16 v2, 0xe5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&aelig"

    const/16 v2, 0xe6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ccedil"

    const/16 v2, 0xe7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&egrave"

    const/16 v2, 0xe8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&eacute"

    const/16 v2, 0xe9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ecirc"

    const/16 v2, 0xea

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&euml"

    const/16 v2, 0xeb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&igrave"

    const/16 v2, 0xec

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&iacute"

    const/16 v2, 0xed

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&icirc"

    const/16 v2, 0xee

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&iuml"

    const/16 v2, 0xef

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&eth"

    const/16 v2, 0xf0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ntilde"

    const/16 v2, 0xf1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ograve"

    const/16 v2, 0xf2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&oacute"

    const/16 v2, 0xf3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ocirc"

    const/16 v2, 0xf4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&otilde"

    const/16 v2, 0xf5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ouml"

    const/16 v2, 0xf6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&divide"

    const/16 v2, 0xf7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&oslash"

    const/16 v2, 0xf8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ugrave"

    const/16 v2, 0xf9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&uacute"

    const/16 v2, 0xfa

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ucirc"

    const/16 v2, 0xfb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&uuml"

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&yacute"

    const/16 v2, 0xfd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&thorn"

    const/16 v2, 0xfe

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&yuml"

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&fnof"

    const/16 v2, 0x192

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Alpha"

    const/16 v2, 0x391

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Beta"

    const/16 v2, 0x392

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Gamma"

    const/16 v2, 0x393

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Delta"

    const/16 v2, 0x394

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Epsilon"

    const/16 v2, 0x395

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Zeta"

    const/16 v2, 0x396

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Eta"

    const/16 v2, 0x397

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Theta"

    const/16 v2, 0x398

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Iota"

    const/16 v2, 0x399

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Kappa"

    const/16 v2, 0x39a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Lambda"

    const/16 v2, 0x39b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Mu"

    const/16 v2, 0x39c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Nu"

    const/16 v2, 0x39d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Xi"

    const/16 v2, 0x39e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Omicron"

    const/16 v2, 0x39f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Pi"

    const/16 v2, 0x3a0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Rho"

    const/16 v2, 0x3a1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Sigma"

    const/16 v2, 0x3a3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Tau"

    const/16 v2, 0x3a4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Upsilon"

    const/16 v2, 0x3a5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Phi"

    const/16 v2, 0x3a6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Chi"

    const/16 v2, 0x3a7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Psi"

    const/16 v2, 0x3a8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Omega"

    const/16 v2, 0x3a9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&alpha"

    const/16 v2, 0x3b1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&beta"

    const/16 v2, 0x3b2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&gamma"

    const/16 v2, 0x3b3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&delta"

    const/16 v2, 0x3b4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&epsilon"

    const/16 v2, 0x3b5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&zeta"

    const/16 v2, 0x3b6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&eta"

    const/16 v2, 0x3b7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&theta"

    const/16 v2, 0x3b8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&iota"

    const/16 v2, 0x3b9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&kappa"

    const/16 v2, 0x3ba

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&lambda"

    const/16 v2, 0x3bb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&mu"

    const/16 v2, 0x3bc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&nu"

    const/16 v2, 0x3bd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&xi"

    const/16 v2, 0x3be

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&omicron"

    const/16 v2, 0x3bf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&pi"

    const/16 v2, 0x3c0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&rho"

    const/16 v2, 0x3c1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&sigmaf"

    const/16 v2, 0x3c2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&sigma"

    const/16 v2, 0x3c3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&tau"

    const/16 v2, 0x3c4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&upsilon"

    const/16 v2, 0x3c5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&phi"

    const/16 v2, 0x3c6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&chi"

    const/16 v2, 0x3c7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&psi"

    const/16 v2, 0x3c8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&omega"

    const/16 v2, 0x3c9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&thetasym"

    const/16 v2, 0x3d1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&upsih"

    const/16 v2, 0x3d2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&piv"

    const/16 v2, 0x3d6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&bull"

    const/16 v2, 0x2022

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&hellip"

    const/16 v2, 0x2026

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&prime"

    const/16 v2, 0x2032

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Prime"

    const/16 v2, 0x2033

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&oline"

    const/16 v2, 0x203e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&frasl"

    const/16 v2, 0x2044

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&weierp"

    const/16 v2, 0x2118

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&image"

    const/16 v2, 0x2111

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&real"

    const/16 v2, 0x211c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&trade"

    const/16 v2, 0x2122

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&alefsym"

    const/16 v2, 0x2135

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&larr"

    const/16 v2, 0x2190

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&uarr"

    const/16 v2, 0x2191

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&rarr"

    const/16 v2, 0x2192

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&darr"

    const/16 v2, 0x2193

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&harr"

    const/16 v2, 0x2194

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&crarr"

    const/16 v2, 0x21b5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&lArr"

    const/16 v2, 0x21d0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&uArr"

    const/16 v2, 0x21d1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&rArr"

    const/16 v2, 0x21d2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&dArr"

    const/16 v2, 0x21d3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&hArr"

    const/16 v2, 0x21d4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&forall"

    const/16 v2, 0x2200

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&part"

    const/16 v2, 0x2202

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&exist"

    const/16 v2, 0x2203

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&empty"

    const/16 v2, 0x2205

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&nabla"

    const/16 v2, 0x2207

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&isin"

    const/16 v2, 0x2208

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&notin"

    const/16 v2, 0x2209

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ni"

    const/16 v2, 0x220b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&prod"

    const/16 v2, 0x220f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&sum"

    const/16 v2, 0x2211

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&minus"

    const/16 v2, 0x2212

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&lowast"

    const/16 v2, 0x2217

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&radic"

    const/16 v2, 0x221a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&prop"

    const/16 v2, 0x221d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&infin"

    const/16 v2, 0x221e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ang"

    const/16 v2, 0x2220

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&and"

    const/16 v2, 0x2227

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&or"

    const/16 v2, 0x2228

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&cap"

    const/16 v2, 0x2229

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&cup"

    const/16 v2, 0x222a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&int"

    const/16 v2, 0x222b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&there4"

    const/16 v2, 0x2234

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&sim"

    const/16 v2, 0x223c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&cong"

    const/16 v2, 0x2245

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&asymp"

    const/16 v2, 0x2248

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ne"

    const/16 v2, 0x2260

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&equiv"

    const/16 v2, 0x2261

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&le"

    const/16 v2, 0x2264

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ge"

    const/16 v2, 0x2265

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&sub"

    const/16 v2, 0x2282

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&sup"

    const/16 v2, 0x2283

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&nsub"

    const/16 v2, 0x2284

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&sube"

    const/16 v2, 0x2286

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&supe"

    const/16 v2, 0x2287

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&oplus"

    const/16 v2, 0x2295

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&otimes"

    const/16 v2, 0x2297

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&perp"

    const/16 v2, 0x22a5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&sdot"

    const/16 v2, 0x22c5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&lceil"

    const/16 v2, 0x2308

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&rceil"

    const/16 v2, 0x2309

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&lfloor"

    const/16 v2, 0x230a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&rfloor"

    const/16 v2, 0x230b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&lang"

    const/16 v2, 0x2329

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&rang"

    const/16 v2, 0x232a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&loz"

    const/16 v2, 0x25ca

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&spades"

    const/16 v2, 0x2660

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&clubs"

    const/16 v2, 0x2663

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&hearts"

    const/16 v2, 0x2665

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&diams"

    const/16 v2, 0x2666

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&quot"

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&amp"

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&lt"

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&gt"

    const/16 v2, 0x3e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&OElig"

    const/16 v2, 0x152

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&oelig"

    const/16 v2, 0x153

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Scaron"

    const/16 v2, 0x160

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&scaron"

    const/16 v2, 0x161

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Yuml"

    const/16 v2, 0x178

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&circ"

    const/16 v2, 0x2c6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&tilde"

    const/16 v2, 0x2dc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ensp"

    const/16 v2, 0x2002

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&emsp"

    const/16 v2, 0x2003

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&thinsp"

    const/16 v2, 0x2009

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&zwnj"

    const/16 v2, 0x200c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&zwj"

    const/16 v2, 0x200d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&lrm"

    const/16 v2, 0x200e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&rlm"

    const/16 v2, 0x200f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ndash"

    const/16 v2, 0x2013

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&mdash"

    const/16 v2, 0x2014

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&lsquo"

    const/16 v2, 0x2018

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&rsquo"

    const/16 v2, 0x2019

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&sbquo"

    const/16 v2, 0x201a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ldquo"

    const/16 v2, 0x201c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&rdquo"

    const/16 v2, 0x201d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&bdquo"

    const/16 v2, 0x201e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&dagger"

    const/16 v2, 0x2020

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Dagger"

    const/16 v2, 0x2021

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&permil"

    const/16 v2, 0x2030

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&lsaquo"

    const/16 v2, 0x2039

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&rsaquo"

    const/16 v2, 0x203a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&euro"

    const/16 v2, 0x20ac

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    return-void
.end method

.method static findTagEnd(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .param p0, "htmlText"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "startPos"    # I

    .prologue
    .line 345
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 346
    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 348
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 349
    .local v2, "length":I
    const/4 v3, 0x0

    .line 350
    .local v3, "prevChar":C
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 351
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 352
    .local v0, "c":C
    const/16 v4, 0x3e

    if-ne v0, v4, :cond_1

    .line 353
    const/16 v4, 0x2f

    if-ne v3, v4, :cond_2

    .line 354
    add-int/lit8 v4, v1, -0x1

    .line 361
    .end local v0    # "c":C
    :goto_1
    return v4

    .line 358
    .restart local v0    # "c":C
    :cond_1
    move v3, v0

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    .end local v0    # "c":C
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    goto :goto_1
.end method

.method public static highlightTerms(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .locals 34
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "html"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_0

    const-string v22, ""

    .line 715
    :goto_0
    return-object v22

    .line 571
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    .line 574
    .local v17, "length":I
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v29, "terms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;>;"
    if-eqz p1, :cond_1

    .line 576
    new-instance v23, Ljava/util/StringTokenizer;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 577
    .local v23, "st":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v30

    if-eqz v30, :cond_1

    .line 578
    new-instance v30, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;

    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 584
    .end local v23    # "st":Ljava/util/StringTokenizer;
    :cond_1
    if-eqz p2, :cond_5

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    .local v22, "sb":Ljava/lang/Appendable;
    :goto_2
    const/4 v13, 0x0

    .line 588
    .local v13, "inTag":Z
    const/4 v14, -0x1

    .line 592
    .local v14, "lastOut":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    move/from16 v0, v17

    if-ge v10, v0, :cond_4

    .line 593
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 594
    .local v6, "chr":C
    if-eqz p2, :cond_b

    .line 595
    if-nez v13, :cond_a

    const/16 v30, 0x3c

    move/from16 v0, v30

    if-ne v6, v0, :cond_a

    .line 597
    add-int/lit8 v30, v17, -0x1

    move/from16 v0, v30

    if-ge v10, v0, :cond_8

    .line 598
    add-int/lit8 v30, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    .line 599
    .local v21, "peek":C
    const/16 v30, 0x21

    move/from16 v0, v21

    move/from16 v1, v30

    if-eq v0, v1, :cond_2

    const/16 v30, 0x2d

    move/from16 v0, v21

    move/from16 v1, v30

    if-eq v0, v1, :cond_2

    const/16 v30, 0x2f

    move/from16 v0, v21

    move/from16 v1, v30

    if-eq v0, v1, :cond_2

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isLetter(C)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 600
    :cond_2
    const/4 v13, 0x1

    .line 602
    add-int/lit8 v30, v17, -0x8

    move/from16 v0, v30

    if-ge v10, v0, :cond_8

    .line 603
    add-int/lit8 v30, v10, 0x1

    add-int/lit8 v31, v10, 0x6

    add-int/lit8 v31, v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 604
    .local v27, "tag":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v28

    .line 605
    .local v28, "tagLowerCase":Ljava/lang/String;
    const/16 v24, 0x0

    .line 606
    .local v24, "stripContent":Z
    sget-object v5, Lcom/android/emailcommon/utility/TextUtilities;->STRIP_TAGS:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_4
    move/from16 v0, v16

    if-ge v11, v0, :cond_3

    aget-object v25, v5, v11

    .line 607
    .local v25, "stripTag":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 608
    const/16 v24, 0x1

    .line 609
    const/16 v30, 0x0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v31

    move-object/from16 v0, v27

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 613
    .end local v25    # "stripTag":Ljava/lang/String;
    :cond_3
    if-eqz v24, :cond_8

    .line 615
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1, v10}, Lcom/android/emailcommon/utility/TextUtilities;->findTagEnd(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 616
    .local v8, "endTagPosition":I
    if-gez v8, :cond_7

    .line 617
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 715
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v6    # "chr":C
    .end local v8    # "endTagPosition":I
    .end local v11    # "i$":I
    .end local v16    # "len$":I
    .end local v21    # "peek":C
    .end local v24    # "stripContent":Z
    .end local v27    # "tag":Ljava/lang/String;
    .end local v28    # "tagLowerCase":Ljava/lang/String;
    :cond_4
    check-cast v22, Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 584
    .end local v10    # "i":I
    .end local v13    # "inTag":Z
    .end local v14    # "lastOut":I
    .end local v22    # "sb":Ljava/lang/Appendable;
    :cond_5
    new-instance v22, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v22 .. v22}, Landroid/text/SpannableStringBuilder;-><init>()V

    goto/16 :goto_2

    .line 606
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v6    # "chr":C
    .restart local v10    # "i":I
    .restart local v11    # "i$":I
    .restart local v13    # "inTag":Z
    .restart local v14    # "lastOut":I
    .restart local v16    # "len$":I
    .restart local v21    # "peek":C
    .restart local v22    # "sb":Ljava/lang/Appendable;
    .restart local v24    # "stripContent":Z
    .restart local v25    # "stripTag":Ljava/lang/String;
    .restart local v27    # "tag":Ljava/lang/String;
    .restart local v28    # "tagLowerCase":Ljava/lang/String;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 620
    .end local v25    # "stripTag":Ljava/lang/String;
    .restart local v8    # "endTagPosition":I
    :cond_7
    add-int/lit8 v30, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 621
    add-int/lit8 v10, v8, -0x1

    .line 622
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 632
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v8    # "endTagPosition":I
    .end local v11    # "i$":I
    .end local v16    # "len$":I
    .end local v21    # "peek":C
    .end local v24    # "stripContent":Z
    .end local v27    # "tag":Ljava/lang/String;
    .end local v28    # "tagLowerCase":Ljava/lang/String;
    :cond_8
    :goto_5
    if-eqz v13, :cond_b

    .line 633
    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 592
    :cond_9
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 628
    :cond_a
    if-eqz v13, :cond_8

    const/16 v30, 0x3e

    move/from16 v0, v30

    if-ne v6, v0, :cond_8

    .line 629
    const/4 v13, 0x0

    goto :goto_5

    .line 639
    :cond_b
    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    .line 642
    .local v7, "chrLowerCase":C
    const/4 v4, 0x1

    .line 644
    .local v4, "appendNow":Z
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_19

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;

    .line 645
    .local v26, "t":Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mTermLowerCase:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchLength:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->charAt(I)C

    move-result v30

    move/from16 v0, v30

    if-ne v7, v0, :cond_11

    .line 646
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchLength:I

    move/from16 v30, v0

    add-int/lit8 v31, v30, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchLength:I

    if-nez v30, :cond_c

    .line 648
    move-object/from16 v0, v26

    iput v10, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    .line 650
    :cond_c
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchLength:I

    move/from16 v30, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mLength:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_e

    .line 651
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v30, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v31, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mLength:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 653
    .local v19, "matchText":Ljava/lang/String;
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-gt v0, v14, :cond_d

    .line 654
    add-int/lit8 v30, v14, 0x1

    add-int/lit8 v31, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 657
    :cond_d
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v30

    if-nez v30, :cond_f

    .line 669
    :goto_8
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v30, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mLength:I

    move/from16 v31, v0

    add-int v30, v30, v31

    add-int/lit8 v14, v30, -0x1

    .line 670
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchLength:I

    .line 671
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    .line 673
    .end local v19    # "matchText":Ljava/lang/String;
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 658
    .restart local v19    # "matchText":Ljava/lang/String;
    :cond_f
    if-eqz p2, :cond_10

    .line 659
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "<span style=\"background-color: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Lcom/android/emailcommon/utility/TextUtilities;->HIGHLIGHT_COLOR_STRING:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\">"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 661
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 662
    const-string v30, "</span>"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_8

    .line 664
    :cond_10
    new-instance v9, Landroid/text/SpannableString;

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 665
    .local v9, "highlightSpan":Landroid/text/SpannableString;
    new-instance v30, Landroid/text/style/BackgroundColorSpan;

    const/16 v31, -0x100

    invoke-direct/range {v30 .. v31}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/16 v31, 0x0

    invoke-virtual {v9}, Landroid/text/SpannableString;->length()I

    move-result v32

    const/16 v33, 0x21

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 667
    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_8

    .line 675
    .end local v9    # "highlightSpan":Landroid/text/SpannableString;
    .end local v19    # "matchText":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v30, v0

    if-ltz v30, :cond_16

    .line 677
    const/4 v15, -0x1

    .line 678
    .local v15, "leastOtherStart":I
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_14

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;

    .line 680
    .local v20, "ot":Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;
    move-object/from16 v0, v20

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_12

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v30, v0

    if-ltz v30, :cond_12

    if-ltz v15, :cond_13

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-gt v0, v15, :cond_12

    .line 682
    :cond_13
    move-object/from16 v0, v20

    iget v15, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    goto :goto_9

    .line 685
    .end local v20    # "ot":Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;
    :cond_14
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v30, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchLength:I

    move/from16 v31, v0

    add-int v18, v30, v31

    .line 686
    .local v18, "matchEnd":I
    if-ltz v15, :cond_15

    move/from16 v0, v18

    if-le v15, v0, :cond_17

    .line 688
    :cond_15
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-le v0, v14, :cond_16

    .line 689
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 690
    move/from16 v14, v18

    .line 704
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "leastOtherStart":I
    .end local v18    # "matchEnd":I
    :cond_16
    :goto_a
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchLength:I

    .line 705
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    goto/16 :goto_7

    .line 692
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v15    # "leastOtherStart":I
    .restart local v18    # "matchEnd":I
    :cond_17
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-eq v15, v0, :cond_16

    .line 694
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v15, v0, :cond_18

    .line 696
    const/4 v4, 0x0

    goto :goto_a

    .line 697
    :cond_18
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-le v0, v14, :cond_16

    .line 699
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 700
    move v14, v15

    goto :goto_a

    .line 709
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "leastOtherStart":I
    .end local v18    # "matchEnd":I
    .end local v26    # "t":Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;
    :cond_19
    if-eqz v4, :cond_9

    .line 710
    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 711
    move v14, v10

    goto/16 :goto_6
.end method

.method public static highlightTermsInHtml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "query"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 517
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/android/emailcommon/utility/TextUtilities;->highlightTerms(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 520
    .end local p0    # "text":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 518
    .restart local p0    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static highlightTermsInText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 534
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/android/emailcommon/utility/TextUtilities;->highlightTerms(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 537
    .end local p0    # "text":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 535
    .restart local p0    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static makeSnippetFromHtmlText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 330
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/TextUtilities;->makeSnippetFromText(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeSnippetFromPlainText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/TextUtilities;->makeSnippetFromText(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeSnippetFromText(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 23
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "stripHtml"    # Z

    .prologue
    .line 366
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_0

    const-string v21, ""

    .line 456
    :goto_0
    return-object v21

    .line 368
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    .line 370
    .local v14, "length":I
    const/16 v21, 0xc8

    move/from16 v0, v21

    new-array v4, v0, [C

    .line 375
    .local v4, "buffer":[C
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 376
    .local v16, "skipCount":[I
    const/4 v5, 0x0

    .line 378
    .local v5, "bufferCount":I
    const/16 v12, 0x20

    .line 380
    .local v12, "last":C
    const/4 v11, 0x0

    .line 383
    .local v11, "inTag":Z
    const/4 v9, 0x0

    .local v9, "i":I
    move v6, v5

    .end local v5    # "bufferCount":I
    .local v6, "bufferCount":I
    :goto_1
    if-ge v9, v14, :cond_3

    const/16 v21, 0xc8

    move/from16 v0, v21

    if-ge v6, v0, :cond_3

    .line 384
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 385
    .local v7, "c":C
    if-eqz p1, :cond_7

    if-nez v11, :cond_7

    const/16 v21, 0x3c

    move/from16 v0, v21

    if-ne v7, v0, :cond_7

    .line 387
    add-int/lit8 v21, v14, -0x1

    move/from16 v0, v21

    if-ge v9, v0, :cond_6

    .line 388
    add-int/lit8 v21, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 389
    .local v15, "peek":C
    const/16 v21, 0x21

    move/from16 v0, v21

    if-eq v15, v0, :cond_1

    const/16 v21, 0x2d

    move/from16 v0, v21

    if-eq v15, v0, :cond_1

    const/16 v21, 0x2f

    move/from16 v0, v21

    if-eq v15, v0, :cond_1

    invoke-static {v15}, Ljava/lang/Character;->isLetter(C)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 390
    :cond_1
    const/4 v11, 0x1

    .line 392
    add-int/lit8 v21, v14, -0x8

    move/from16 v0, v21

    if-ge v9, v0, :cond_6

    .line 393
    add-int/lit8 v21, v9, 0x1

    add-int/lit8 v22, v9, 0x6

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 394
    .local v19, "tag":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .line 395
    .local v20, "tagLowerCase":Ljava/lang/String;
    const/16 v17, 0x0

    .line 396
    .local v17, "stripContent":Z
    sget-object v3, Lcom/android/emailcommon/utility/TextUtilities;->STRIP_TAGS:[Ljava/lang/String;

    .local v3, "arr$":[Ljava/lang/String;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_2
    if-ge v10, v13, :cond_2

    aget-object v18, v3, v10

    .line 397
    .local v18, "stripTag":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 398
    const/16 v17, 0x1

    .line 399
    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 403
    .end local v18    # "stripTag":Ljava/lang/String;
    :cond_2
    if-eqz v17, :cond_6

    .line 405
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Lcom/android/emailcommon/utility/TextUtilities;->findTagEnd(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 406
    .local v8, "endTagPosition":I
    if-gez v8, :cond_5

    .line 453
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v7    # "c":C
    .end local v8    # "endTagPosition":I
    .end local v10    # "i$":I
    .end local v13    # "len$":I
    .end local v15    # "peek":C
    .end local v17    # "stripContent":Z
    .end local v19    # "tag":Ljava/lang/String;
    .end local v20    # "tagLowerCase":Ljava/lang/String;
    :cond_3
    if-lez v6, :cond_f

    const/16 v21, 0x20

    move/from16 v0, v21

    if-ne v12, v0, :cond_f

    .line 454
    add-int/lit8 v5, v6, -0x1

    .line 456
    .end local v6    # "bufferCount":I
    .restart local v5    # "bufferCount":I
    :goto_3
    new-instance v21, Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v4, v1, v5}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0

    .line 396
    .end local v5    # "bufferCount":I
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v6    # "bufferCount":I
    .restart local v7    # "c":C
    .restart local v10    # "i$":I
    .restart local v13    # "len$":I
    .restart local v15    # "peek":C
    .restart local v17    # "stripContent":Z
    .restart local v18    # "stripTag":Ljava/lang/String;
    .restart local v19    # "tag":Ljava/lang/String;
    .restart local v20    # "tagLowerCase":Ljava/lang/String;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 409
    .end local v18    # "stripTag":Ljava/lang/String;
    .restart local v8    # "endTagPosition":I
    :cond_5
    move v9, v8

    .line 421
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v8    # "endTagPosition":I
    .end local v10    # "i$":I
    .end local v13    # "len$":I
    .end local v15    # "peek":C
    .end local v17    # "stripContent":Z
    .end local v19    # "tag":Ljava/lang/String;
    .end local v20    # "tagLowerCase":Ljava/lang/String;
    :cond_6
    if-eqz v11, :cond_8

    move v5, v6

    .line 383
    .end local v6    # "bufferCount":I
    .restart local v5    # "bufferCount":I
    :goto_4
    add-int/lit8 v9, v9, 0x1

    move v6, v5

    .end local v5    # "bufferCount":I
    .restart local v6    # "bufferCount":I
    goto/16 :goto_1

    .line 415
    :cond_7
    if-eqz p1, :cond_6

    if-eqz v11, :cond_6

    const/16 v21, 0x3e

    move/from16 v0, v21

    if-ne v7, v0, :cond_6

    .line 417
    const/4 v11, 0x0

    move v5, v6

    .line 418
    .end local v6    # "bufferCount":I
    .restart local v5    # "bufferCount":I
    goto :goto_4

    .line 424
    .end local v5    # "bufferCount":I
    .restart local v6    # "bufferCount":I
    :cond_8
    if-eqz p1, :cond_9

    const/16 v21, 0x26

    move/from16 v0, v21

    if-ne v7, v0, :cond_9

    .line 428
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v9, v1}, Lcom/android/emailcommon/utility/TextUtilities;->stripHtmlEntity(Ljava/lang/String;I[I)C

    move-result v7

    .line 429
    const/16 v21, 0x0

    aget v21, v16, v21

    add-int v9, v9, v21

    .line 432
    :cond_9
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v21

    if-nez v21, :cond_a

    const/16 v21, 0xa0

    move/from16 v0, v21

    if-ne v7, v0, :cond_d

    .line 435
    :cond_a
    const/16 v21, 0x20

    move/from16 v0, v21

    if-ne v12, v0, :cond_b

    move v5, v6

    .line 436
    .end local v6    # "bufferCount":I
    .restart local v5    # "bufferCount":I
    goto :goto_4

    .line 439
    .end local v5    # "bufferCount":I
    .restart local v6    # "bufferCount":I
    :cond_b
    const/16 v7, 0x20

    .line 448
    :cond_c
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufferCount":I
    .restart local v5    # "bufferCount":I
    aput-char v7, v4, v6

    .line 449
    move v12, v7

    goto :goto_4

    .line 441
    .end local v5    # "bufferCount":I
    .restart local v6    # "bufferCount":I
    :cond_d
    const/16 v21, 0x2d

    move/from16 v0, v21

    if-eq v7, v0, :cond_e

    const/16 v21, 0x3d

    move/from16 v0, v21

    if-ne v7, v0, :cond_c

    :cond_e
    if-ne v12, v7, :cond_c

    move v5, v6

    .line 444
    .end local v6    # "bufferCount":I
    .restart local v5    # "bufferCount":I
    goto :goto_4

    .end local v5    # "bufferCount":I
    .end local v7    # "c":C
    .restart local v6    # "bufferCount":I
    :cond_f
    move v5, v6

    .end local v6    # "bufferCount":I
    .restart local v5    # "bufferCount":I
    goto :goto_3
.end method

.method public static stringOrNullEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 723
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 725
    :cond_0
    :goto_0
    return v0

    .line 724
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 725
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static stripHtmlEntity(Ljava/lang/String;I[I)C
    .locals 12
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "skipCount"    # [I

    .prologue
    const/16 v0, 0x26

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 460
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 463
    .local v5, "length":I
    aput v9, p2, v9

    .line 465
    add-int/lit8 v1, p1, 0xa

    .line 466
    .local v1, "end":I
    const/4 v2, 0x0

    .line 468
    .local v2, "entity":Ljava/lang/String;
    move v4, p1

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    if-ge v4, v1, :cond_0

    .line 469
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3b

    if-ne v7, v8, :cond_2

    .line 470
    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 474
    :cond_0
    if-nez v2, :cond_3

    .line 503
    :cond_1
    :goto_1
    return v0

    .line 468
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 479
    :cond_3
    sget-object v7, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Character;

    .line 480
    .local v6, "mapping":Ljava/lang/Character;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 481
    .local v3, "entityLength":I
    if-eqz v6, :cond_4

    .line 482
    aput v3, p2, v9

    .line 483
    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v0

    goto :goto_1

    .line 484
    :cond_4
    if-le v3, v10, :cond_1

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x23

    if-ne v7, v8, :cond_1

    .line 486
    const/16 v0, 0x3f

    .line 489
    .local v0, "c":C
    const/4 v7, 0x2

    :try_start_0
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x78

    if-ne v7, v8, :cond_5

    if-le v3, v11, :cond_5

    .line 490
    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 494
    :goto_2
    int-to-char v0, v4

    .line 498
    :goto_3
    aput v3, p2, v9

    goto :goto_1

    .line 492
    :cond_5
    const/4 v7, 0x2

    :try_start_1
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_2

    .line 495
    :catch_0
    move-exception v7

    goto :goto_3
.end method

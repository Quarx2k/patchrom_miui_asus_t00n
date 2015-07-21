.class public Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;
.super Landroid/app/Activity;
.source "BluetoothOppLauncherActivity.java"


# static fields
.field private static final D:Z = true

.field private static final PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "BluetoothLauncherActivity"

.field private static final V:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "[<>&]| {2,}|\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->launchDevicePicker()V

    return-void
.end method

.method private creatFileForSharedContent(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/net/Uri;
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shareContent"    # Ljava/lang/CharSequence;

    .prologue
    .line 252
    if-nez p2, :cond_1

    .line 253
    const/4 v5, 0x0

    .line 340
    :cond_0
    :goto_0
    return-object v5

    .line 256
    :cond_1
    const/4 v5, 0x0

    .line 257
    .local v5, "fileUri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 259
    .local v10, "outStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const v17, 0x7f04006d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".html"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, "fileName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 265
    new-instance v13, Ljava/lang/StringBuffer;

    const-string v16, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/></head><body>"

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 268
    .local v13, "sb":Ljava/lang/StringBuffer;
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 271
    .local v14, "text":Ljava/lang/String;
    const-string v16, "(?i)(http|https)://"

    invoke-static/range {v16 .. v16}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 273
    .local v15, "webUrlProtocol":Ljava/util/regex/Pattern;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")|("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")|("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 278
    .local v11, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v11, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 279
    .local v8, "m":Ljava/util/regex/Matcher;
    :cond_2
    :goto_1
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 280
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    .line 281
    .local v9, "matchStr":Ljava/lang/String;
    const/4 v7, 0x0

    .line 284
    .local v7, "link":Ljava/lang/String;
    sget-object v16, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->matches()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 285
    invoke-virtual {v15, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 286
    .local v12, "proto":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 289
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 305
    .end local v12    # "proto":Ljava/util/regex/Matcher;
    :cond_3
    :goto_2
    if-eqz v7, :cond_2

    .line 306
    const-string v16, "<a href=\"%s\">%s</a>"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v7, v17, v18

    const/16 v18, 0x1

    aput-object v9, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 307
    .local v6, "href":Ljava/lang/String;
    invoke-virtual {v8, v13, v6}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 324
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v6    # "href":Ljava/lang/String;
    .end local v7    # "link":Ljava/lang/String;
    .end local v8    # "m":Ljava/util/regex/Matcher;
    .end local v9    # "matchStr":Ljava/lang/String;
    .end local v11    # "pattern":Ljava/util/regex/Pattern;
    .end local v13    # "sb":Ljava/lang/StringBuffer;
    .end local v14    # "text":Ljava/lang/String;
    .end local v15    # "webUrlProtocol":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v3

    .line 325
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v16, "BluetoothLauncherActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "FileNotFoundException: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    if-eqz v10, :cond_0

    .line 334
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 336
    :catch_1
    move-exception v3

    .line 337
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 294
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v7    # "link":Ljava/lang/String;
    .restart local v8    # "m":Ljava/util/regex/Matcher;
    .restart local v9    # "matchStr":Ljava/lang/String;
    .restart local v11    # "pattern":Ljava/util/regex/Pattern;
    .restart local v12    # "proto":Ljava/util/regex/Matcher;
    .restart local v13    # "sb":Ljava/lang/StringBuffer;
    .restart local v14    # "text":Ljava/lang/String;
    .restart local v15    # "webUrlProtocol":Ljava/util/regex/Pattern;
    :cond_4
    :try_start_3
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 298
    .end local v12    # "proto":Ljava/util/regex/Matcher;
    :cond_5
    sget-object v16, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->matches()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 299
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mailto:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 302
    :cond_6
    sget-object v16, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->matches()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 303
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "tel:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 310
    .end local v7    # "link":Ljava/lang/String;
    .end local v9    # "matchStr":Ljava/lang/String;
    :cond_7
    invoke-virtual {v8, v13}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 311
    const-string v16, "</body></html>"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 315
    .local v2, "byteBuff":[B
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v10

    .line 316
    if-eqz v10, :cond_8

    .line 317
    const/16 v16, 0x0

    array-length v0, v2

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v2, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 318
    new-instance v16, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 319
    if-eqz v5, :cond_8

    .line 320
    const-string v16, "BluetoothLauncherActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Created one file for shared content: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 333
    :cond_8
    if-eqz v10, :cond_0

    .line 334
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 336
    :catch_2
    move-exception v3

    goto/16 :goto_3

    .line 327
    .end local v2    # "byteBuff":[B
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v8    # "m":Ljava/util/regex/Matcher;
    .end local v11    # "pattern":Ljava/util/regex/Pattern;
    .end local v13    # "sb":Ljava/lang/StringBuffer;
    .end local v14    # "text":Ljava/lang/String;
    .end local v15    # "webUrlProtocol":Ljava/util/regex/Pattern;
    :catch_3
    move-exception v3

    .line 328
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_5
    const-string v16, "BluetoothLauncherActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "IOException: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 333
    if-eqz v10, :cond_0

    .line 334
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 336
    :catch_4
    move-exception v3

    goto/16 :goto_3

    .line 329
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 330
    .local v3, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v16, "BluetoothLauncherActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 333
    if-eqz v10, :cond_0

    .line 334
    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    .line 336
    :catch_6
    move-exception v3

    goto/16 :goto_3

    .line 332
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    .line 333
    if-eqz v10, :cond_9

    .line 334
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 332
    :cond_9
    :goto_4
    throw v16

    .line 336
    :catch_7
    move-exception v3

    .line 337
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method private static escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x20

    .line 350
    sget-object v6, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

    .line 351
    .local v6, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 353
    .local v3, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 354
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .local v5, "out":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 357
    .local v1, "end":I
    :cond_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    .line 358
    .local v7, "start":I
    invoke-virtual {p0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 360
    invoke-virtual {p0, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 361
    .local v0, "c":I
    if-ne v0, v9, :cond_4

    .line 363
    const/4 v2, 0x1

    .local v2, "i":I
    sub-int v4, v1, v7

    .local v4, "n":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 364
    const-string v8, "&nbsp;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 366
    :cond_1
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    .end local v2    # "i":I
    .end local v4    # "n":I
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_0

    .line 377
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 380
    .end local v0    # "c":I
    .end local v1    # "end":I
    .end local v5    # "out":Ljava/lang/StringBuilder;
    .end local v7    # "start":I
    :cond_3
    return-object p0

    .line 367
    .restart local v0    # "c":I
    .restart local v1    # "end":I
    .restart local v5    # "out":Ljava/lang/StringBuilder;
    .restart local v7    # "start":I
    :cond_4
    const/16 v8, 0xd

    if-eq v0, v8, :cond_5

    const/16 v8, 0xa

    if-ne v0, v8, :cond_6

    .line 368
    :cond_5
    const-string v8, "<br>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 369
    :cond_6
    const/16 v8, 0x3c

    if-ne v0, v8, :cond_7

    .line 370
    const-string v8, "&lt;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 371
    :cond_7
    const/16 v8, 0x3e

    if-ne v0, v8, :cond_8

    .line 372
    const-string v8, "&gt;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 373
    :cond_8
    const/16 v8, 0x26

    if-ne v0, v8, :cond_2

    .line 374
    const-string v8, "&amp;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private final isBluetoothAllowed()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 220
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 223
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string v8, "airplane_mode_on"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_1

    move v2, v6

    .line 225
    .local v2, "isAirplaneModeOn":Z
    :goto_0
    if-nez v2, :cond_2

    .line 248
    :cond_0
    :goto_1
    return v6

    .end local v2    # "isAirplaneModeOn":Z
    :cond_1
    move v2, v7

    .line 223
    goto :goto_0

    .line 230
    .restart local v2    # "isAirplaneModeOn":Z
    :cond_2
    const-string v8, "airplane_mode_radios"

    invoke-static {v5, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "airplaneModeRadios":Ljava/lang/String;
    if-nez v0, :cond_3

    move v3, v6

    .line 234
    .local v3, "isAirplaneSensitive":Z
    :goto_2
    if-eqz v3, :cond_0

    .line 239
    const-string v8, "airplane_mode_toggleable_radios"

    invoke-static {v5, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "airplaneModeToggleableRadios":Ljava/lang/String;
    if-nez v1, :cond_4

    move v4, v7

    .line 243
    .local v4, "isAirplaneToggleable":Z
    :goto_3
    if-nez v4, :cond_0

    move v6, v7

    .line 248
    goto :goto_1

    .line 232
    .end local v1    # "airplaneModeToggleableRadios":Ljava/lang/String;
    .end local v3    # "isAirplaneSensitive":Z
    .end local v4    # "isAirplaneToggleable":Z
    :cond_3
    const-string v8, "bluetooth"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_2

    .line 241
    .restart local v1    # "airplaneModeToggleableRadios":Ljava/lang/String;
    .restart local v3    # "isAirplaneSensitive":Z
    :cond_4
    const-string v8, "bluetooth"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    goto :goto_3
.end method

.method private final launchDevicePicker()V
    .locals 4

    .prologue
    .line 198
    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .local v0, "in":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 217
    .end local v0    # "in":Landroid/content/Intent;
    :goto_0
    return-void

    .line 205
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v1, "in1":Landroid/content/Intent;
    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 207
    const-string v2, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 208
    const-string v2, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    const-string v2, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    const-string v3, "com.android.bluetooth"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v2, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    const-class v3, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 78
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "action":Ljava/lang/String;
    const-string v12, "android.intent.action.SEND"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->isBluetoothAllowed()Z

    move-result v12

    if-nez v12, :cond_2

    .line 83
    new-instance v3, Landroid/content/Intent;

    const-class v12, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;

    invoke-direct {v3, p0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v3, "in":Landroid/content/Intent;
    const/high16 v12, 0x10000000

    invoke-virtual {v3, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    const-string v12, "title"

    const v13, 0x7f040016

    invoke-virtual {p0, v13}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v12, "content"

    const v13, 0x7f040017

    invoke-virtual {p0, v13}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    .line 188
    .end local v3    # "in":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 97
    :cond_2
    const-string v12, "android.intent.action.SEND"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 99
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    .line 100
    .local v9, "type":Ljava/lang/String;
    const-string v12, "android.intent.extra.STREAM"

    invoke-virtual {v4, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 101
    .local v7, "stream":Landroid/net/Uri;
    const-string v12, "android.intent.extra.TEXT"

    invoke-virtual {v4, v12}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 107
    .local v1, "extra_text":Ljava/lang/CharSequence;
    if-eqz v7, :cond_3

    if-eqz v9, :cond_3

    .line 112
    new-instance v8, Ljava/lang/Thread;

    new-instance v12, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$1;

    invoke-direct {v12, p0, v9, v7}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {v8, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 121
    .local v8, "t":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 123
    .end local v8    # "t":Ljava/lang/Thread;
    :cond_3
    if-eqz v1, :cond_5

    if-eqz v9, :cond_5

    .line 126
    invoke-direct {p0, p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->creatFileForSharedContent(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/net/Uri;

    move-result-object v2

    .line 127
    .local v2, "fileUri":Landroid/net/Uri;
    if-eqz v2, :cond_4

    .line 128
    new-instance v8, Ljava/lang/Thread;

    new-instance v12, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$2;

    invoke-direct {v12, p0, v9, v2}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$2;-><init>(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {v8, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 138
    .restart local v8    # "t":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 141
    .end local v8    # "t":Ljava/lang/Thread;
    :cond_4
    const-string v12, "BluetoothLauncherActivity"

    const-string v13, "Error trying to do set text...File not created!"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    goto :goto_0

    .line 146
    .end local v2    # "fileUri":Landroid/net/Uri;
    :cond_5
    const-string v12, "BluetoothLauncherActivity"

    const-string v13, "type is null; or sending file URI is null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    goto :goto_0

    .line 150
    .end local v1    # "extra_text":Ljava/lang/CharSequence;
    .end local v7    # "stream":Landroid/net/Uri;
    .end local v9    # "type":Ljava/lang/String;
    :cond_6
    const-string v12, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 151
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, "mimeType":Ljava/lang/String;
    const-string v12, "android.intent.extra.STREAM"

    invoke-virtual {v4, v12}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 153
    .local v11, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v6, :cond_7

    if-eqz v11, :cond_7

    .line 156
    new-instance v8, Ljava/lang/Thread;

    new-instance v12, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;

    invoke-direct {v12, p0, v6, v11}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;-><init>(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {v8, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 166
    .restart local v8    # "t":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 169
    .end local v8    # "t":Ljava/lang/Thread;
    :cond_7
    const-string v12, "BluetoothLauncherActivity"

    const-string v13, "type is null; or sending files URIs are null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    goto/16 :goto_0

    .line 174
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v11    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_8
    const-string v12, "android.btopp.intent.action.OPEN"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 175
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 178
    .local v10, "uri":Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 179
    .local v5, "intent1":Landroid/content/Intent;
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v12, "com.android.bluetooth"

    const-class v13, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    invoke-virtual {v5, v10}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v5}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    goto/16 :goto_0

    .line 185
    .end local v5    # "intent1":Landroid/content/Intent;
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_9
    const-string v12, "BluetoothLauncherActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unsupported action: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    goto/16 :goto_0
.end method

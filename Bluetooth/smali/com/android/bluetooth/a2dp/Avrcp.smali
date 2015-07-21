.class final Lcom/android/bluetooth/a2dp/Avrcp;
.super Ljava/lang/Object;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;,
        Lcom/android/bluetooth/a2dp/Avrcp$Metadata;,
        Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;,
        Lcom/android/bluetooth/a2dp/Avrcp$IRemoteControlDisplayWeak;,
        Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;,
        Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;
    }
.end annotation


# static fields
.field public static final ATTRIBUTE_EQUALIZER:I = 0x1

.field public static final ATTRIBUTE_REPEATMODE:I = 0x2

.field public static final ATTRIBUTE_SCANMODE:I = 0x4

.field public static final ATTRIBUTE_SHUFFLEMODE:I = 0x3

.field private static final AVRCP_BASE_VOLUME_STEP:I = 0x1

.field private static final AVRCP_MAX_VOL:I = 0x7f

.field private static final AVRC_ID_FAST_FOR:I = 0x49

.field private static final AVRC_ID_REWIND:I = 0x48

.field private static final AVRC_RSP_ACCEPT:I = 0x9

.field private static final AVRC_RSP_CHANGED:I = 0xd

.field private static final AVRC_RSP_IMPL_STBL:I = 0xc

.field private static final AVRC_RSP_INTERIM:I = 0xf

.field private static final AVRC_RSP_IN_TRANS:I = 0xb

.field private static final AVRC_RSP_NOT_IMPL:I = 0x8

.field private static final AVRC_RSP_REJ:I = 0xa

.field private static final BASE_SKIP_AMOUNT:I = 0x7d0

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final BTRC_FEAT_ABSOLUTE_VOLUME:I = 0x2

.field public static final BTRC_FEAT_BROWSE:I = 0x4

.field public static final BTRC_FEAT_METADATA:I = 0x1

.field private static final BUTTON_TIMEOUT_TIME:I = 0x7d0

.field static final CHARSET_ID_FIELD_LENGTH:S = 0x2s

.field static final CHAR_SET_UTF8:S = 0x6as

.field private static final CMDGET:Ljava/lang/String; = "get"

.field private static final CMDSET:Ljava/lang/String; = "set"

.field private static final CMD_TIMEOUT_DELAY:I = 0x7d0

.field private static final COMMAND:Ljava/lang/String; = "command"

.field private static final DEBUG:Z = true

.field static final DISPLAYABLE_NAME_LENGTH_FIELD_LENGTH:S = 0x2s

.field private static final ERR_ADDR_PLAYER_FAILS:I = 0x13

.field private static final ERR_ADDR_PLAYER_SUCCEEDS:I = 0x4

.field private static final ERR_INVALID_PLAYER_ID:I = 0x11

.field static final EVT_ADDRESSED_PLAYER_CHANGED:I = 0xb

.field static final EVT_APP_SETTINGS_CHANGED:I = 0x8

.field static final EVT_AVAILABLE_PLAYERS_CHANGED:I = 0xa

.field static final EVT_BATT_STATUS_CHANGED:I = 0x6

.field static final EVT_PLAY_POS_CHANGED:I = 0x5

.field static final EVT_PLAY_STATUS_CHANGED:I = 0x1

.field static final EVT_SYSTEM_STATUS_CHANGED:I = 0x7

.field static final EVT_TRACK_CHANGED:I = 0x2

.field static final EVT_TRACK_REACHED_END:I = 0x3

.field static final EVT_TRACK_REACHED_START:I = 0x4

.field private static final EXTRA_ATTIBUTE_ID_ARRAY:Ljava/lang/String; = "Attributes"

.field private static final EXTRA_ATTRIBUTE_ID:Ljava/lang/String; = "Attribute"

.field private static final EXTRA_ATTRIBUTE_STRING_ARRAY:Ljava/lang/String; = "AttributeStrings"

.field private static final EXTRA_ATTRIB_VALUE_PAIRS:Ljava/lang/String; = "AttribValuePairs"

.field private static final EXTRA_GET_COMMAND:Ljava/lang/String; = "commandExtra"

.field private static final EXTRA_GET_RESPONSE:Ljava/lang/String; = "Response"

.field private static final EXTRA_VALUE_ID_ARRAY:Ljava/lang/String; = "Values"

.field private static final EXTRA_VALUE_STRING_ARRAY:Ljava/lang/String; = "ValueStrings"

.field static final FEATURE_BITMASK_FIELD_LENGTH:S = 0x10s

.field static final FEATURE_MASK_0_BIT_NO:I = 0xe

.field static final FEATURE_MASK_0_MASK:I = 0x40

.field static final FEATURE_MASK_0_OFFSET:I = 0x1

.field static final FEATURE_MASK_1_BIT_NO:I = 0xf

.field static final FEATURE_MASK_1_MASK:I = 0x80

.field static final FEATURE_MASK_1_OFFSET:I = 0x1

.field static final FEATURE_MASK_2_BIT_NO:I = 0x10

.field static final FEATURE_MASK_2_MASK:I = 0x1

.field static final FEATURE_MASK_2_OFFSET:I = 0x2

.field static final FEATURE_MASK_3_BIT_NO:I = 0x11

.field static final FEATURE_MASK_3_MASK:I = 0x2

.field static final FEATURE_MASK_3_OFFSET:I = 0x2

.field static final FEATURE_MASK_4_BIT_NO:I = 0x12

.field static final FEATURE_MASK_4_MASK:I = 0x4

.field static final FEATURE_MASK_4_OFFSET:I = 0x2

.field static final FEATURE_MASK_5_BIT_NO:I = 0x13

.field static final FEATURE_MASK_5_MASK:I = 0x8

.field static final FEATURE_MASK_5_OFFSET:I = 0x2

.field static final FEATURE_MASK_6_BIT_NO:I = 0x14

.field static final FEATURE_MASK_6_MASK:I = 0x10

.field static final FEATURE_MASK_6_OFFSET:I = 0x2

.field static final FEATURE_MASK_7_BIT_NO:I = 0x15

.field static final FEATURE_MASK_7_MASK:I = 0x20

.field static final FEATURE_MASK_7_OFFSET:I = 0x2

.field static final FEATURE_MASK_8_BIT_NO:I = 0x16

.field static final FEATURE_MASK_8_MASK:I = 0x40

.field static final FEATURE_MASK_8_OFFSET:I = 0x2

.field static final FEATURE_MASK_9_BIT_NO:I = 0x17

.field static final FEATURE_MASK_9_MASK:I = 0x80

.field static final FEATURE_MASK_9_OFFSET:I = 0x2

.field static final FEATURE_MASK_ADD2NOWPLAY_BIT_NO:I = 0x3d

.field static final FEATURE_MASK_ADD2NOWPLAY_MASK:I = 0x20

.field static final FEATURE_MASK_ADD2NOWPLAY_OFFSET:I = 0x7

.field static final FEATURE_MASK_ADV_CTRL_BIT_NO:I = 0x3a

.field static final FEATURE_MASK_ADV_CTRL_MASK:I = 0x4

.field static final FEATURE_MASK_ADV_CTRL_OFFSET:I = 0x7

.field static final FEATURE_MASK_ANGLE_BIT_NO:I = 0x31

.field static final FEATURE_MASK_ANGLE_MASK:I = 0x2

.field static final FEATURE_MASK_ANGLE_OFFSET:I = 0x6

.field static final FEATURE_MASK_BACKWARD_BIT_NO:I = 0x30

.field static final FEATURE_MASK_BACKWARD_MASK:I = 0x1

.field static final FEATURE_MASK_BACKWARD_OFFSET:I = 0x6

.field static final FEATURE_MASK_BROWSE_BIT_NO:I = 0x3b

.field static final FEATURE_MASK_BROWSE_MASK:I = 0x8

.field static final FEATURE_MASK_BROWSE_OFFSET:I = 0x7

.field static final FEATURE_MASK_BR_WH_ADDR_BIT_NO:I = 0x3f

.field static final FEATURE_MASK_BR_WH_ADDR_MASK:I = 0x80

.field static final FEATURE_MASK_BR_WH_ADDR_OFFSET:I = 0x7

.field static final FEATURE_MASK_CHNL_DOWN_BIT_NO:I = 0x1c

.field static final FEATURE_MASK_CHNL_DOWN_MASK:I = 0x10

.field static final FEATURE_MASK_CHNL_DOWN_OFFSET:I = 0x3

.field static final FEATURE_MASK_CHNL_UP_BIT_NO:I = 0x1b

.field static final FEATURE_MASK_CHNL_UP_MASK:I = 0x8

.field static final FEATURE_MASK_CHNL_UP_OFFSET:I = 0x3

.field static final FEATURE_MASK_CLEAR_BIT_NO:I = 0x1a

.field static final FEATURE_MASK_CLEAR_MASK:I = 0x4

.field static final FEATURE_MASK_CLEAR_OFFSET:I = 0x3

.field static final FEATURE_MASK_CONTENTS_MENU_BIT_NO:I = 0xb

.field static final FEATURE_MASK_CONTENTS_MENU_MASK:I = 0x8

.field static final FEATURE_MASK_CONTENTS_MENU_OFFSET:I = 0x1

.field static final FEATURE_MASK_DISP_INFO_BIT_NO:I = 0x20

.field static final FEATURE_MASK_DISP_INFO_MASK:I = 0x1

.field static final FEATURE_MASK_DISP_INFO_OFFSET:I = 0x4

.field static final FEATURE_MASK_DOT_BIT_NO:I = 0x18

.field static final FEATURE_MASK_DOT_MASK:I = 0x1

.field static final FEATURE_MASK_DOT_OFFSET:I = 0x3

.field static final FEATURE_MASK_DOWN_BIT_NO:I = 0x2

.field static final FEATURE_MASK_DOWN_MASK:I = 0x4

.field static final FEATURE_MASK_DOWN_OFFSET:I = 0x0

.field static final FEATURE_MASK_EJECT_BIT_NO:I = 0x2e

.field static final FEATURE_MASK_EJECT_MASK:I = 0x40

.field static final FEATURE_MASK_EJECT_OFFSET:I = 0x5

.field static final FEATURE_MASK_ENTER_BIT_NO:I = 0x19

.field static final FEATURE_MASK_ENTER_MASK:I = 0x2

.field static final FEATURE_MASK_ENTER_OFFSET:I = 0x3

.field static final FEATURE_MASK_EXIT_BIT_NO:I = 0xd

.field static final FEATURE_MASK_EXIT_MASK:I = 0x20

.field static final FEATURE_MASK_EXIT_OFFSET:I = 0x1

.field static final FEATURE_MASK_F1_BIT_NO:I = 0x33

.field static final FEATURE_MASK_F1_MASK:I = 0x8

.field static final FEATURE_MASK_F1_OFFSET:I = 0x6

.field static final FEATURE_MASK_F2_BIT_NO:I = 0x34

.field static final FEATURE_MASK_F2_MASK:I = 0x10

.field static final FEATURE_MASK_F2_OFFSET:I = 0x6

.field static final FEATURE_MASK_F3_BIT_NO:I = 0x35

.field static final FEATURE_MASK_F3_MASK:I = 0x20

.field static final FEATURE_MASK_F3_OFFSET:I = 0x6

.field static final FEATURE_MASK_F4_BIT_NO:I = 0x36

.field static final FEATURE_MASK_F4_MASK:I = 0x40

.field static final FEATURE_MASK_F4_OFFSET:I = 0x6

.field static final FEATURE_MASK_F5_BIT_NO:I = 0x37

.field static final FEATURE_MASK_F5_MASK:I = 0x80

.field static final FEATURE_MASK_F5_OFFSET:I = 0x6

.field static final FEATURE_MASK_FAST_FWD_BIT_NO:I = 0x2d

.field static final FEATURE_MASK_FAST_FWD_MASK:I = 0x20

.field static final FEATURE_MASK_FAST_FWD_OFFSET:I = 0x5

.field static final FEATURE_MASK_FAVORITE_MENU_BIT_NO:I = 0xc

.field static final FEATURE_MASK_FAVORITE_MENU_MASK:I = 0x10

.field static final FEATURE_MASK_FAVORITE_MENU_OFFSET:I = 0x1

.field static final FEATURE_MASK_FORWARD_BIT_NO:I = 0x2f

.field static final FEATURE_MASK_FORWARD_MASK:I = 0x80

.field static final FEATURE_MASK_FORWARD_OFFSET:I = 0x5

.field static final FEATURE_MASK_GROUP_NAVI_BIT_NO:I = 0x39

.field static final FEATURE_MASK_GROUP_NAVI_MASK:I = 0x2

.field static final FEATURE_MASK_GROUP_NAVI_OFFSET:I = 0x7

.field static final FEATURE_MASK_HELP_BIT_NO:I = 0x21

.field static final FEATURE_MASK_HELP_MASK:I = 0x2

.field static final FEATURE_MASK_HELP_OFFSET:I = 0x4

.field static final FEATURE_MASK_INPUT_SEL_BIT_NO:I = 0x1f

.field static final FEATURE_MASK_INPUT_SEL_MASK:I = 0x80

.field static final FEATURE_MASK_INPUT_SEL_OFFSET:I = 0x3

.field static final FEATURE_MASK_LEFTDOWN_BIT_NO:I = 0x8

.field static final FEATURE_MASK_LEFTDOWN_MASK:I = 0x1

.field static final FEATURE_MASK_LEFTDOWN_OFFSET:I = 0x1

.field static final FEATURE_MASK_LEFTUP_BIT_NO:I = 0x7

.field static final FEATURE_MASK_LEFTUP_MASK:I = 0x80

.field static final FEATURE_MASK_LEFTUP_OFFSET:I = 0x0

.field static final FEATURE_MASK_LEFT_BIT_NO:I = 0x3

.field static final FEATURE_MASK_LEFT_MASK:I = 0x8

.field static final FEATURE_MASK_LEFT_OFFSET:I = 0x0

.field static final FEATURE_MASK_MUTE_BIT_NO:I = 0x27

.field static final FEATURE_MASK_MUTE_MASK:I = 0x80

.field static final FEATURE_MASK_MUTE_OFFSET:I = 0x4

.field static final FEATURE_MASK_NOW_PLAY_BIT_NO:I = 0x41

.field static final FEATURE_MASK_NOW_PLAY_MASK:I = 0x2

.field static final FEATURE_MASK_NOW_PLAY_OFFSET:I = 0x8

.field static final FEATURE_MASK_PAGE_DOWN_BIT_NO:I = 0x23

.field static final FEATURE_MASK_PAGE_DOWN_MASK:I = 0x8

.field static final FEATURE_MASK_PAGE_DOWN_OFFSET:I = 0x4

.field static final FEATURE_MASK_PAGE_UP_BIT_NO:I = 0x22

.field static final FEATURE_MASK_PAGE_UP_MASK:I = 0x4

.field static final FEATURE_MASK_PAGE_UP_OFFSET:I = 0x4

.field static final FEATURE_MASK_PAUSE_BIT_NO:I = 0x2a

.field static final FEATURE_MASK_PAUSE_MASK:I = 0x4

.field static final FEATURE_MASK_PAUSE_OFFSET:I = 0x5

.field static final FEATURE_MASK_PLAY_BIT_NO:I = 0x28

.field static final FEATURE_MASK_PLAY_MASK:I = 0x1

.field static final FEATURE_MASK_PLAY_OFFSET:I = 0x5

.field static final FEATURE_MASK_POWER_BIT_NO:I = 0x24

.field static final FEATURE_MASK_POWER_MASK:I = 0x10

.field static final FEATURE_MASK_POWER_OFFSET:I = 0x4

.field static final FEATURE_MASK_PREV_CHNL_BIT_NO:I = 0x1d

.field static final FEATURE_MASK_PREV_CHNL_MASK:I = 0x20

.field static final FEATURE_MASK_PREV_CHNL_OFFSET:I = 0x3

.field static final FEATURE_MASK_RECORD_BIT_NO:I = 0x2b

.field static final FEATURE_MASK_RECORD_MASK:I = 0x8

.field static final FEATURE_MASK_RECORD_OFFSET:I = 0x5

.field static final FEATURE_MASK_REWIND_BIT_NO:I = 0x2c

.field static final FEATURE_MASK_REWIND_MASK:I = 0x10

.field static final FEATURE_MASK_REWIND_OFFSET:I = 0x5

.field static final FEATURE_MASK_RIGHTDOWN_BIT_NO:I = 0x6

.field static final FEATURE_MASK_RIGHTDOWN_MASK:I = 0x40

.field static final FEATURE_MASK_RIGHTDOWN_OFFSET:I = 0x0

.field static final FEATURE_MASK_RIGHTUP_BIT_NO:I = 0x5

.field static final FEATURE_MASK_RIGHTUP_MASK:I = 0x20

.field static final FEATURE_MASK_RIGHTUP_OFFSET:I = 0x0

.field static final FEATURE_MASK_RIGHT_BIT_NO:I = 0x4

.field static final FEATURE_MASK_RIGHT_MASK:I = 0x10

.field static final FEATURE_MASK_RIGHT_OFFSET:I = 0x0

.field static final FEATURE_MASK_ROOT_MENU_BIT_NO:I = 0x9

.field static final FEATURE_MASK_ROOT_MENU_MASK:I = 0x2

.field static final FEATURE_MASK_ROOT_MENU_OFFSET:I = 0x1

.field static final FEATURE_MASK_SEARCH_BIT_NO:I = 0x3c

.field static final FEATURE_MASK_SEARCH_MASK:I = 0x10

.field static final FEATURE_MASK_SEARCH_OFFSET:I = 0x7

.field static final FEATURE_MASK_SEARCH_WH_ADDR_BIT_NO:I = 0x40

.field static final FEATURE_MASK_SEARCH_WH_ADDR_MASK:I = 0x1

.field static final FEATURE_MASK_SEARCH_WH_ADDR_OFFSET:I = 0x8

.field static final FEATURE_MASK_SELECT_BIT_NO:I = 0x0

.field static final FEATURE_MASK_SELECT_MASK:I = 0x1

.field static final FEATURE_MASK_SELECT_OFFSET:I = 0x0

.field static final FEATURE_MASK_SETUP_MENU_BIT_NO:I = 0xa

.field static final FEATURE_MASK_SETUP_MENU_MASK:I = 0x4

.field static final FEATURE_MASK_SETUP_MENU_OFFSET:I = 0x1

.field static final FEATURE_MASK_SOUND_SEL_BIT_NO:I = 0x1e

.field static final FEATURE_MASK_SOUND_SEL_MASK:I = 0x40

.field static final FEATURE_MASK_SOUND_SEL_OFFSET:I = 0x3

.field static final FEATURE_MASK_STOP_BIT_NO:I = 0x29

.field static final FEATURE_MASK_STOP_MASK:I = 0x2

.field static final FEATURE_MASK_STOP_OFFSET:I = 0x5

.field static final FEATURE_MASK_SUBPICTURE_BIT_NO:I = 0x32

.field static final FEATURE_MASK_SUBPICTURE_MASK:I = 0x4

.field static final FEATURE_MASK_SUBPICTURE_OFFSET:I = 0x6

.field static final FEATURE_MASK_UID_PERSIST_BIT_NO:I = 0x42

.field static final FEATURE_MASK_UID_PERSIST_MASK:I = 0x4

.field static final FEATURE_MASK_UID_PERSIST_OFFSET:I = 0x8

.field static final FEATURE_MASK_UID_UNIQUE_BIT_NO:I = 0x3e

.field static final FEATURE_MASK_UID_UNIQUE_MASK:I = 0x40

.field static final FEATURE_MASK_UID_UNIQUE_OFFSET:I = 0x7

.field static final FEATURE_MASK_UP_BIT_NO:I = 0x1

.field static final FEATURE_MASK_UP_MASK:I = 0x2

.field static final FEATURE_MASK_UP_OFFSET:I = 0x0

.field static final FEATURE_MASK_VENDOR_BIT_NO:I = 0x38

.field static final FEATURE_MASK_VENDOR_MASK:I = 0x1

.field static final FEATURE_MASK_VENDOR_OFFSET:I = 0x7

.field static final FEATURE_MASK_VOL_DOWN_BIT_NO:I = 0x26

.field static final FEATURE_MASK_VOL_DOWN_MASK:I = 0x40

.field static final FEATURE_MASK_VOL_DOWN_OFFSET:I = 0x4

.field static final FEATURE_MASK_VOL_UP_BIT_NO:I = 0x25

.field static final FEATURE_MASK_VOL_UP_MASK:I = 0x20

.field static final FEATURE_MASK_VOL_UP_OFFSET:I = 0x4

.field static final FOLDER_ITEM_COUNT_NONE:I = 0xff

.field private static final GET_ATTRIBUTE_IDS:I = 0x0

.field private static final GET_ATTRIBUTE_TEXT:I = 0x2

.field private static final GET_ATTRIBUTE_VALUES:I = 0x4

.field private static final GET_INVALID:I = 0xff

.field private static final GET_VALUE_IDS:I = 0x1

.field private static final GET_VALUE_TEXT:I = 0x3

.field static final ITEM_LENGTH_LENGTH:S = 0x2s

.field static final ITEM_PLAYER:B = 0x1t

.field static final ITEM_TYPE_LENGTH:S = 0x1s

.field private static final KEY_STATE_PRESS:I = 0x1

.field private static final KEY_STATE_RELEASE:I = 0x0

.field static final MAJOR_PLAYER_TYPE_FIELD_LENGTH:S = 0x1s

.field static final MAJOR_TYPE_AUDIO:B = 0x1t

.field static final MAJOR_TYPE_BC_AUDIO:B = 0x4t

.field static final MAJOR_TYPE_BC_VIDEO:B = 0x8t

.field static final MAJOR_TYPE_INVALID:S = 0xf0s

.field static final MAJOR_TYPE_VIDEO:B = 0x2t

.field private static final MAX_ERROR_RETRY_TIMES:I = 0x3

.field private static final MAX_MULTIPLIER_VALUE:J = 0x80L

.field static final MEDIA_ATTR_ALBUM:I = 0x3

.field static final MEDIA_ATTR_ARTIST:I = 0x2

.field static final MEDIA_ATTR_GENRE:I = 0x6

.field static final MEDIA_ATTR_NUM_TRACKS:I = 0x5

.field static final MEDIA_ATTR_PLAYING_TIME:I = 0x7

.field static final MEDIA_ATTR_TITLE:I = 0x1

.field static final MEDIA_ATTR_TRACK_NUM:I = 0x4

.field private static final MESSAGE_ABS_VOL_TIMEOUT:I = 0x9

.field private static final MESSAGE_ADJUST_VOLUME:I = 0x7

.field private static final MESSAGE_CHANGE_PLAY_POS:I = 0xc

.field private static final MESSAGE_FAST_FORWARD:I = 0xa

.field private static final MESSAGE_GET_ELEM_ATTRS:I = 0x3

.field private static final MESSAGE_GET_PLAY_STATUS:I = 0x2

.field private static final MESSAGE_GET_RC_FEATURES:I = 0x1

.field private static final MESSAGE_PLAYERSETTINGS_TIMEOUT:I = 0x25a

.field private static final MESSAGE_PLAY_INTERVAL_TIMEOUT:I = 0x5

.field private static final MESSAGE_REGISTER_NOTIFICATION:I = 0x4

.field private static final MESSAGE_REWIND:I = 0xb

.field private static final MESSAGE_SET_A2DP_AUDIO_STATE:I = 0xd

.field private static final MESSAGE_SET_ABSOLUTE_VOLUME:I = 0x8

.field private static final MESSAGE_SET_ADDR_PLAYER_REQ_TIMEOUT:I = 0xe

.field private static final MESSAGE_VOLUME_CHANGED:I = 0x6

.field private static final MSG_SET_ARTWORK:I = 0x67

.field private static final MSG_SET_GENERATION_ID:I = 0x68

.field private static final MSG_SET_METADATA:I = 0x65

.field private static final MSG_SET_TRANSPORT_CONTROLS:I = 0x66

.field private static final MSG_UPDATE_ADDRESSED_PLAYER:I = 0xca

.field private static final MSG_UPDATE_AVAILABLE_PLAYERS:I = 0xc9

.field private static final MSG_UPDATE_RCC_CHANGE:I = 0xcb

.field private static final MSG_UPDATE_STATE:I = 0x64

.field static final NOTIFICATION_TYPE_CHANGED:I = 0x1

.field static final NOTIFICATION_TYPE_INTERIM:I = 0x0

.field static final NOTIFICATION_TYPE_REJECT:I = 0x2

.field private static final NOTIFY_ATTRIBUTE_VALUES:I = 0x5

.field public static final NUMPLAYER_ATTRIBUTE:I = 0x2

.field private static final PLAYERSETTINGS_REQUEST:Ljava/lang/String; = "org.codeaurora.music.playersettingsrequest"

.field private static final PLAYERSETTINGS_RESPONSE:Ljava/lang/String; = "org.codeaurora.music.playersettingsresponse"

.field static final PLAYER_ID_FIELD_LENGTH:S = 0x2s

.field static final PLAYER_SUBTYPE_FIELD_LENGTH:S = 0x4s

.field static final PLAYSTATUS_ERROR:S = 0xffs

.field static final PLAYSTATUS_FWD_SEEK:B = 0x3t

.field static final PLAYSTATUS_PAUSED:B = 0x2t

.field static final PLAYSTATUS_PLAYING:B = 0x1t

.field static final PLAYSTATUS_REV_SEEK:B = 0x4t

.field static final PLAYSTATUS_STOPPED:B = 0x0t

.field static final PLAY_STATUS_FIELD_LENGTH:S = 0x1s

.field static final SCOPE_PLAYER_LIST:I = 0x0

.field private static final SET_ADDR_PLAYER_TIMEOUT:I = 0x7d0

.field private static final SET_ATTRIBUTE_VALUES:I = 0x6

.field private static final SKIP_DOUBLE_INTERVAL:I = 0xbb8

.field private static final SKIP_PERIOD:I = 0x190

.field static final SUB_TYPE_AUDIO_BOOK:I = 0x1

.field static final SUB_TYPE_INVALID:I = 0xfc

.field static final SUB_TYPE_NONE:I = 0x0

.field static final SUB_TYPE_PODCAST:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Avrcp"

.field static final TRACK_ID_SIZE:I = 0x8

.field public static final VALUE_INVALID:I = 0x0

.field public static final VALUE_REPEATMODE_ALL:I = 0x3

.field public static final VALUE_REPEATMODE_OFF:I = 0x1

.field public static final VALUE_REPEATMODE_SINGLE:I = 0x2

.field public static final VALUE_SHUFFLEMODE_ALL:I = 0x2

.field public static final VALUE_SHUFFLEMODE_OFF:I = 0x1


# instance fields
.field private final UPDATE_ATTRIBUTES:Ljava/lang/String;

.field private final UPDATE_ATTRIB_TEXT:Ljava/lang/String;

.field private final UPDATE_ATTRIB_VALUE:Ljava/lang/String;

.field private final UPDATE_VALUES:Ljava/lang/String;

.field private final UPDATE_VALUE_TEXT:Ljava/lang/String;

.field private def_attrib:[B

.field private keyPressState:I

.field private mAbsVolRetryTimes:I

.field private mAbsoluteVolume:I

.field private mAddressedPlayerChangedNT:I

.field private mAddressedPlayerId:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mAudioStreamMax:I

.field private mAvailablePlayersChangedNT:I

.field private mClientGeneration:I

.field private mContext:Landroid/content/Context;

.field private mCurrentPlayState:I

.field private mCurrentPosMs:J

.field private mFeatures:I

.field private mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastDirection:I

.field private mLastSetVolume:I

.field private mMediaPlayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

.field private mNextPosMs:J

.field private mPendingCmds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayPosChangedNT:I

.field private mPlayStartTimeMs:J

.field private mPlayStatusChangedNT:I

.field private mPlaybackIntervalMs:J

.field private mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

.field private mPlayerStatusChangeNT:I

.field private mPrevPosMs:J

.field private mRemoteControlDisplay:Lcom/android/bluetooth/a2dp/Avrcp$IRemoteControlDisplayWeak;

.field private mRequestedAddressedPlayerPackageName:Ljava/lang/String;

.field private mSkipAmount:I

.field private mSkipStartTime:J

.field private mSongLengthMs:J

.field private mTrackChangedNT:I

.field private mTrackNumber:J

.field private mTransportControlFlags:I

.field private mVolCmdInProgress:Z

.field private final mVolumeStep:I

.field private mediaPlayerInfo1:Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;

.field private mediaPlayerInfo2:Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;

.field private settingValues:Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;

.field private value_default:[B

.field private value_repmode:[B

.field private value_shufmode:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 237
    invoke-static {}, Lcom/android/bluetooth/a2dp/Avrcp;->classInitNative()V

    .line 238
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;-><init>(Lcom/android/bluetooth/a2dp/Avrcp;Lcom/android/bluetooth/a2dp/Avrcp$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    .line 184
    new-instance v0, Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;-><init>(Lcom/android/bluetooth/a2dp/Avrcp;Lcom/android/bluetooth/a2dp/Avrcp$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->settingValues:Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;

    .line 221
    new-array v0, v7, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->def_attrib:[B

    .line 222
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->value_repmode:[B

    .line 226
    new-array v0, v7, [B

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->value_shufmode:[B

    .line 228
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->value_default:[B

    .line 229
    const-string v0, "UpdateSupportedAttributes"

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->UPDATE_ATTRIBUTES:Ljava/lang/String;

    .line 230
    const-string v0, "UpdateSupportedValues"

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->UPDATE_VALUES:Ljava/lang/String;

    .line 231
    const-string v0, "UpdateCurrentValues"

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->UPDATE_ATTRIB_VALUE:Ljava/lang/String;

    .line 232
    const-string v0, "UpdateAttributesText"

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->UPDATE_ATTRIB_TEXT:Ljava/lang/String;

    .line 233
    const-string v0, "UpdateValuesText"

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->UPDATE_VALUE_TEXT:Ljava/lang/String;

    .line 295
    new-instance v0, Lcom/android/bluetooth/a2dp/Avrcp$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/a2dp/Avrcp$1;-><init>(Lcom/android/bluetooth/a2dp/Avrcp;)V

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    .line 241
    const-string v0, "Avrcp"

    const-string v1, "Avrcp"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v0, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;-><init>(Lcom/android/bluetooth/a2dp/Avrcp;)V

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    .line 243
    iput v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    .line 244
    iput v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayStatusChangedNT:I

    .line 245
    iput v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mTrackChangedNT:I

    .line 246
    iput v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerStatusChangeNT:I

    .line 247
    iput v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAddressedPlayerChangedNT:I

    .line 248
    iput v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAvailablePlayersChangedNT:I

    .line 249
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mTrackNumber:J

    .line 250
    iput-wide v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPosMs:J

    .line 251
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayStartTimeMs:J

    .line 252
    iput-wide v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mSongLengthMs:J

    .line 253
    iput-wide v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlaybackIntervalMs:J

    .line 254
    iput v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAddressedPlayerId:I

    .line 255
    iput v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    .line 256
    iput v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mFeatures:I

    .line 257
    iput v6, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAbsoluteVolume:I

    .line 258
    iput v6, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mLastSetVolume:I

    .line 259
    iput v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mLastDirection:I

    .line 260
    iput-boolean v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mVolCmdInProgress:Z

    .line 261
    iput v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAbsVolRetryTimes:I

    .line 262
    iput v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->keyPressState:I

    .line 263
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mContext:Landroid/content/Context;

    .line 265
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->initNative()V

    .line 267
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    .line 268
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAudioStreamMax:I

    .line 269
    const/16 v0, 0x7f

    iget v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAudioStreamMax:I

    div-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mVolumeStep:I

    .line 270
    return-void

    .line 221
    nop

    :array_0
    .array-data 1
        0x2t
        0x3t
    .end array-data

    .line 222
    nop

    :array_1
    .array-data 1
        0x1t
        0x2t
        0x3t
    .end array-data

    .line 226
    :array_2
    .array-data 1
        0x1t
        0x2t
    .end array-data
.end method

.method private native SendCurrentPlayerValueRspNative(B[B)Z
.end method

.method private native SendSetPlayerAppRspNative()Z
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/a2dp/Avrcp;B[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # B
    .param p2, "x2"    # [B

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/Avrcp;->SendCurrentPlayerValueRspNative(B[B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/a2dp/Avrcp;)Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/a2dp/Avrcp;I[BI[Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B
    .param p3, "x3"    # I
    .param p4, "x4"    # [Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/a2dp/Avrcp;->sendSettingsTextRspNative(I[BI[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/a2dp/Avrcp;I[BI[Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B
    .param p3, "x3"    # I
    .param p4, "x4"    # [Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/a2dp/Avrcp;->sendValueTextRspNative(I[BI[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/a2dp/Avrcp;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->def_attrib:[B

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/a2dp/Avrcp;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->value_repmode:[B

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/a2dp/Avrcp;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->value_shufmode:[B

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/a2dp/Avrcp;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->value_default:[B

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/a2dp/Avrcp;)Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->settingValues:Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/a2dp/Avrcp;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->SendSetPlayerAppRspNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/a2dp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mClientGeneration:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/bluetooth/a2dp/Avrcp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mClientGeneration:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/a2dp/Avrcp;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/Avrcp;->updatePlayPauseState(IJ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/bluetooth/a2dp/Avrcp;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->updateMetadata(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/bluetooth/a2dp/Avrcp;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->updateAvailableMediaPlayers()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/bluetooth/a2dp/Avrcp;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->updateAddressedMediaPlayer(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/bluetooth/a2dp/Avrcp;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->updateTransportControls(I)V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/bluetooth/a2dp/Avrcp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mFeatures:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/bluetooth/a2dp/Avrcp;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/bluetooth/a2dp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/bluetooth/a2dp/Avrcp;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->convertPlayStateToPlayStatus(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/a2dp/Avrcp;)Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/bluetooth/a2dp/Avrcp;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mSongLengthMs:J

    return-wide v0
.end method

.method static synthetic access$3100(Lcom/android/bluetooth/a2dp/Avrcp;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->getPlayPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3200(Lcom/android/bluetooth/a2dp/Avrcp;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/Avrcp;->getPlayStatusRspNative(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/bluetooth/a2dp/Avrcp;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->getAttributeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/bluetooth/a2dp/Avrcp;B[I[Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # B
    .param p2, "x2"    # [I
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/Avrcp;->getElementAttrRspNative(B[I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/bluetooth/a2dp/Avrcp;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/Avrcp;->processRegisterNotification(II)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/bluetooth/a2dp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    return v0
.end method

.method static synthetic access$3602(Lcom/android/bluetooth/a2dp/Avrcp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    return p1
.end method

.method static synthetic access$3700(Lcom/android/bluetooth/a2dp/Avrcp;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/Avrcp;->registerNotificationRspPlayPosNative(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/bluetooth/a2dp/Avrcp;B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # B

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->setAdressedPlayerRspNative(B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3902(Lcom/android/bluetooth/a2dp/Avrcp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mRequestedAddressedPlayerPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/bluetooth/a2dp/Avrcp;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPendingCmds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/bluetooth/a2dp/Avrcp;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mVolCmdInProgress:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/bluetooth/a2dp/Avrcp;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mVolCmdInProgress:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/bluetooth/a2dp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAbsVolRetryTimes:I

    return v0
.end method

.method static synthetic access$4102(Lcom/android/bluetooth/a2dp/Avrcp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAbsVolRetryTimes:I

    return p1
.end method

.method static synthetic access$4112(Lcom/android/bluetooth/a2dp/Avrcp;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iget v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAbsVolRetryTimes:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAbsVolRetryTimes:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/bluetooth/a2dp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAbsoluteVolume:I

    return v0
.end method

.method static synthetic access$4202(Lcom/android/bluetooth/a2dp/Avrcp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAbsoluteVolume:I

    return p1
.end method

.method static synthetic access$4300(Lcom/android/bluetooth/a2dp/Avrcp;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->notifyVolumeChanged(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/bluetooth/a2dp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mVolumeStep:I

    return v0
.end method

.method static synthetic access$4500(Lcom/android/bluetooth/a2dp/Avrcp;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->setVolumeNative(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4602(Lcom/android/bluetooth/a2dp/Avrcp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mLastDirection:I

    return p1
.end method

.method static synthetic access$4700(Lcom/android/bluetooth/a2dp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mLastSetVolume:I

    return v0
.end method

.method static synthetic access$4702(Lcom/android/bluetooth/a2dp/Avrcp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mLastSetVolume:I

    return p1
.end method

.method static synthetic access$4800(Lcom/android/bluetooth/a2dp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mSkipAmount:I

    return v0
.end method

.method static synthetic access$4802(Lcom/android/bluetooth/a2dp/Avrcp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mSkipAmount:I

    return p1
.end method

.method static synthetic access$4902(Lcom/android/bluetooth/a2dp/Avrcp;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # J

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mSkipStartTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/bluetooth/a2dp/Avrcp;B[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # B
    .param p2, "x2"    # [B

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/Avrcp;->getListPlayerappAttrRspNative(B[B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/bluetooth/a2dp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->getSkipMultiplier()I

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/android/bluetooth/a2dp/Avrcp;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # J

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/Avrcp;->changePositionBy(J)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/bluetooth/a2dp/Avrcp;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/Avrcp;->processRCCStateChange(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/bluetooth/a2dp/Avrcp;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->updateA2dpAudioState(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/bluetooth/a2dp/Avrcp;B[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # B
    .param p2, "x2"    # [B

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/Avrcp;->getPlayerAppValueRspNative(B[B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/a2dp/Avrcp;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # [B

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->updateLocalPlayerSettings([B)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/bluetooth/a2dp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerStatusChangeNT:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/bluetooth/a2dp/Avrcp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerStatusChangeNT:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/bluetooth/a2dp/Avrcp;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->sendPlayerAppChangedRsp(I)V

    return-void
.end method

.method private changePositionBy(J)V
    .locals 8
    .param p1, "amount"    # J

    .prologue
    .line 1299
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->getPlayPosition()J

    move-result-wide v0

    .line 1300
    .local v0, "currentPosMs":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 1304
    :goto_0
    return-void

    .line 1301
    :cond_0
    const-wide/16 v4, 0x0

    add-long v6, v0, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1302
    .local v2, "newPosMs":J
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mClientGeneration:I

    invoke-virtual {v4, v5, v2, v3}, Landroid/media/AudioManager;->setRemoteControlClientPlaybackPosition(IJ)V

    goto :goto_0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private convertPlayStateToPlayStatus(I)I
    .locals 1
    .param p1, "playState"    # I

    .prologue
    .line 1395
    const/16 v0, 0xff

    .line 1396
    .local v0, "playStatus":I
    packed-switch p1, :pswitch_data_0

    .line 1426
    :goto_0
    return v0

    .line 1399
    :pswitch_0
    const/4 v0, 0x1

    .line 1400
    goto :goto_0

    .line 1404
    :pswitch_1
    const/4 v0, 0x0

    .line 1405
    goto :goto_0

    .line 1408
    :pswitch_2
    const/4 v0, 0x2

    .line 1409
    goto :goto_0

    .line 1413
    :pswitch_3
    const/4 v0, 0x3

    .line 1414
    goto :goto_0

    .line 1418
    :pswitch_4
    const/4 v0, 0x4

    .line 1419
    goto :goto_0

    .line 1422
    :pswitch_5
    const/16 v0, 0xff

    goto :goto_0

    .line 1396
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private convertToAudioStreamVolume(I)I
    .locals 4
    .param p1, "volume"    # I

    .prologue
    .line 1489
    int-to-double v0, p1

    iget v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAudioStreamMax:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide v2, 0x405fc00000000000L    # 127.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private convertToAvrcpVolume(I)I
    .locals 4
    .param p1, "volume"    # I

    .prologue
    .line 1493
    int-to-double v0, p1

    const-wide v2, 0x405fc00000000000L    # 127.0

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAudioStreamMax:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private fastForward(I)V
    .locals 4
    .param p1, "keyState"    # I

    .prologue
    .line 1277
    iget v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->keyPressState:I

    if-ne p1, v1, :cond_0

    if-nez p1, :cond_0

    .line 1278
    const-string v1, "Avrcp"

    const-string v2, "Ignore key release event"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :goto_0
    return-void

    .line 1281
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1282
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1283
    iput p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->keyPressState:I

    goto :goto_0
.end method

.method private getAttributeString(I)Ljava/lang/String;
    .locals 5
    .param p1, "attrId"    # I

    .prologue
    .line 1355
    const/4 v0, 0x0

    .line 1356
    .local v0, "attrStr":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1387
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1388
    new-instance v0, Ljava/lang/String;

    .end local v0    # "attrStr":Ljava/lang/String;
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 1390
    .restart local v0    # "attrStr":Ljava/lang/String;
    :cond_1
    const-string v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAttributeString:attrId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " str="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    return-object v0

    .line 1358
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->access$5500(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v0

    .line 1359
    goto :goto_0

    .line 1362
    :pswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->artist:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->access$5400(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v0

    .line 1363
    goto :goto_0

    .line 1366
    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->access$5600(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v0

    .line 1367
    goto :goto_0

    .line 1370
    :pswitch_3
    iget-wide v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mSongLengthMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1371
    iget-wide v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mSongLengthMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1376
    :pswitch_4
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->tracknum:J
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->access$5800(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 1377
    goto :goto_0

    .line 1380
    :pswitch_5
    iget-wide v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mTrackNumber:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 1381
    goto :goto_0

    .line 1384
    :pswitch_6
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->genre:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->access$5700(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1356
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method

.method private getElementAttr(B[I)V
    .locals 6
    .param p1, "numAttr"    # B
    .param p2, "attrs"    # [I

    .prologue
    .line 1065
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1066
    .local v0, "attrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 1067
    aget v3, p2, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1066
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1069
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5, v0}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1070
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1071
    return-void
.end method

.method private native getElementAttrRspNative(B[I[Ljava/lang/String;)Z
.end method

.method private getFolderItems(BIII)V
    .locals 14
    .param p1, "scope"    # B
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "attrCnt"    # I

    .prologue
    .line 1111
    const-string v1, "Avrcp"

    const-string v2, "getFolderItems"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    if-nez p1, :cond_3

    .line 1113
    move/from16 v0, p4

    new-array v5, v0, [B

    .line 1114
    .local v5, "folderItems":[B
    const/16 v1, 0x20

    new-array v6, v1, [I

    .line 1115
    .local v6, "folderItemLengths":[I
    const/4 v4, 0x0

    .line 1116
    .local v4, "availableMediaPlayers":I
    const/4 v8, 0x0

    .line 1117
    .local v8, "count":I
    const/4 v12, 0x0

    .line 1118
    .local v12, "positionItemStart":I
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1119
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 1120
    .local v13, "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1121
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;

    .line 1122
    .local v9, "di":Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;
    invoke-virtual {v9}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->GetPlayerAvailablility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1123
    invoke-virtual {v9}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->RetrievePlayerItemEntry()[B

    move-result-object v11

    .line 1124
    .local v11, "playerEntry":[B
    invoke-virtual {v9}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->RetrievePlayerEntryLength()I

    move-result v10

    .line 1125
    .local v10, "length":I
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "availableMediaPlayers":I
    .local v7, "availableMediaPlayers":I
    aput v10, v6, v4

    .line 1126
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v10, :cond_1

    .line 1127
    add-int v1, v12, v8

    aget-byte v2, v11, v8

    aput-byte v2, v5, v1

    .line 1126
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1129
    :cond_1
    add-int/2addr v12, v10

    move v4, v7

    .end local v7    # "availableMediaPlayers":I
    .restart local v4    # "availableMediaPlayers":I
    goto :goto_0

    .line 1133
    .end local v9    # "di":Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;
    .end local v10    # "length":I
    .end local v11    # "playerEntry":[B
    .end local v13    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;>;"
    :cond_2
    const-string v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of available MediaPlayers = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const/4 v2, 0x4

    const/16 v3, 0x1357

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/bluetooth/a2dp/Avrcp;->getFolderItemsRspNative(BII[B[I)Z

    .line 1136
    .end local v4    # "availableMediaPlayers":I
    .end local v5    # "folderItems":[B
    .end local v6    # "folderItemLengths":[I
    .end local v8    # "count":I
    .end local v12    # "positionItemStart":I
    :cond_3
    return-void
.end method

.method private native getFolderItemsRspNative(BII[B[I)Z
.end method

.method private native getListPlayerappAttrRspNative(B[B)Z
.end method

.method private getMdLong(Landroid/os/Bundle;I)J
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "id"    # I

    .prologue
    .line 973
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getMdString(Landroid/os/Bundle;I)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "id"    # I

    .prologue
    .line 969
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPlayPosition()J
    .locals 6

    .prologue
    .line 1341
    const-wide/16 v0, -0x1

    .line 1342
    .local v0, "songPosition":J
    iget-wide v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPosMs:J

    const-wide v4, -0x7fe688e67fe67d00L

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1343
    iget v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1344
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayStartTimeMs:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPosMs:J

    add-long v0, v2, v4

    .line 1350
    :cond_0
    :goto_0
    const-string v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    return-wide v0

    .line 1347
    :cond_1
    iget-wide v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPosMs:J

    goto :goto_0
.end method

.method private getPlayStatus()V
    .locals 3

    .prologue
    .line 1059
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1060
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1061
    return-void
.end method

.method private native getPlayStatusRspNative(III)Z
.end method

.method private native getPlayerAppValueRspNative(B[B)Z
.end method

.method private getRcFeatures([BI)V
    .locals 5
    .param p1, "address"    # [B
    .param p2, "features"    # I

    .prologue
    .line 1053
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, p2, v3, v4}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1055
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1056
    return-void
.end method

.method private getSkipMultiplier()I
    .locals 10

    .prologue
    .line 1307
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1308
    .local v0, "currentTime":J
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-wide v6, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mSkipStartTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0xbb8

    div-long/2addr v6, v8

    long-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v2, v4

    .line 1309
    .local v2, "multi":J
    const-wide/16 v4, 0x80

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    return v4
.end method

.method private getplayerattribute_text(B[B)V
    .locals 7
    .param p1, "attr"    # B
    .param p2, "attrIds"    # [B

    .prologue
    const/4 v6, 0x2

    .line 1593
    const-string v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getplayerattribute_text"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "attrIDsNum"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    new-instance v1, Landroid/content/Intent;

    const-string v3, "org.codeaurora.music.playersettingsrequest"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1595
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v3}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 1596
    .local v2, "msg":Landroid/os/Message;
    const-string v3, "command"

    const-string v4, "get"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1597
    const-string v3, "commandExtra"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1598
    const-string v3, "Attributes"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1599
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    new-array v4, p1, [B

    iput-object v4, v3, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;->attrIds:[B

    .line 1600
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 1601
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    iget-object v3, v3, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;->attrIds:[B

    aget-byte v4, p2, v0

    aput-byte v4, v3, v0

    .line 1600
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1602
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1603
    const/16 v3, 0x25a

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1604
    iput v6, v2, Landroid/os/Message;->arg1:I

    .line 1605
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPendingCmds:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1606
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const-wide/16 v4, 0x82

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1607
    return-void
.end method

.method private getplayervalue_text(BB[B)V
    .locals 7
    .param p1, "attr_id"    # B
    .param p2, "num_value"    # B
    .param p3, "value"    # [B

    .prologue
    const/4 v6, 0x3

    .line 1612
    const-string v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getplayervalue_text id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "num_value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "value.lenght"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    new-instance v1, Landroid/content/Intent;

    const-string v3, "org.codeaurora.music.playersettingsrequest"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1615
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v3}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 1616
    .local v2, "msg":Landroid/os/Message;
    const-string v3, "command"

    const-string v4, "get"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1617
    const-string v3, "commandExtra"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1618
    const-string v3, "Attribute"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1619
    const-string v3, "Values"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1620
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    new-array v4, p2, [B

    iput-object v4, v3, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;->attrIds:[B

    .line 1622
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 1623
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    iget-object v3, v3, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;->attrIds:[B

    aget-byte v4, p3, v0

    aput-byte v4, v3, v0

    .line 1622
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1624
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1625
    const/16 v3, 0x25a

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1626
    iput v6, v2, Landroid/os/Message;->arg1:I

    .line 1627
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPendingCmds:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1628
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const-wide/16 v4, 0x82

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1629
    return-void
.end method

.method private handlePassthroughCmd(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "keyState"    # I

    .prologue
    .line 1266
    packed-switch p1, :pswitch_data_0

    .line 1274
    :goto_0
    return-void

    .line 1268
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dp/Avrcp;->rewind(I)V

    goto :goto_0

    .line 1271
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dp/Avrcp;->fastForward(I)V

    goto :goto_0

    .line 1266
    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private native initNative()V
.end method

.method private isPlayingState(I)Z
    .locals 1
    .param p1, "playState"    # I

    .prologue
    .line 1430
    const/4 v0, 0x0

    .line 1431
    .local v0, "isPlaying":Z
    sparse-switch p1, :sswitch_data_0

    .line 1437
    const/4 v0, 0x0

    .line 1440
    :goto_0
    return v0

    .line 1434
    :sswitch_0
    const/4 v0, 0x1

    .line 1435
    goto :goto_0

    .line 1431
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method static make(Landroid/content/Context;)Lcom/android/bluetooth/a2dp/Avrcp;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 418
    const-string v1, "Avrcp"

    const-string v2, "make"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    new-instance v0, Lcom/android/bluetooth/a2dp/Avrcp;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/a2dp/Avrcp;-><init>(Landroid/content/Context;)V

    .line 420
    .local v0, "ar":Lcom/android/bluetooth/a2dp/Avrcp;
    invoke-direct {v0}, Lcom/android/bluetooth/a2dp/Avrcp;->start()V

    .line 421
    return-object v0
.end method

.method private notifyVolumeChanged(I)V
    .locals 3
    .param p1, "volume"    # I

    .prologue
    .line 1482
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->convertToAudioStreamVolume(I)I

    move-result p1

    .line 1483
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/16 v2, 0x41

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1485
    return-void
.end method

.method private onGetPlayerAttributeValues(B[I)V
    .locals 8
    .param p1, "attr"    # B
    .param p2, "arr"    # [I

    .prologue
    const/4 v7, 0x4

    .line 1549
    const-string v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGetPlayerAttributeValues"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    new-array v0, p1, [B

    .line 1552
    .local v0, "barray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 1553
    aget v4, p2, v1

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 1552
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1554
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    new-array v5, p1, [B

    iput-object v5, v4, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;->attrIds:[B

    .line 1555
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    .line 1556
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    iget-object v4, v4, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;->attrIds:[B

    aget-byte v5, v0, v1

    aput-byte v5, v4, v1

    .line 1555
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1557
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "org.codeaurora.music.playersettingsrequest"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1558
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "command"

    const-string v5, "get"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1559
    const-string v4, "commandExtra"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1560
    const-string v4, "Attributes"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1561
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH"

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1562
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v4}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 1563
    .local v3, "msg":Landroid/os/Message;
    const/16 v4, 0x25a

    iput v4, v3, Landroid/os/Message;->what:I

    .line 1564
    iput v7, v3, Landroid/os/Message;->arg1:I

    .line 1565
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPendingCmds:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Integer;

    iget v6, v3, Landroid/os/Message;->arg1:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1566
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const-wide/16 v5, 0x82

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1567
    return-void
.end method

.method private onListPlayerAttributeRequest()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1518
    const-string v2, "Avrcp"

    const-string v3, "onListPlayerAttributeRequest"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    new-instance v0, Landroid/content/Intent;

    const-string v2, "org.codeaurora.music.playersettingsrequest"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1520
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "get"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1521
    const-string v2, "commandExtra"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1522
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1524
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/16 v3, 0x25a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1525
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPendingCmds:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1526
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const-wide/16 v3, 0x82

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1527
    return-void
.end method

.method private onListPlayerAttributeValues(B)V
    .locals 5
    .param p1, "attr"    # B

    .prologue
    const/4 v4, 0x1

    .line 1531
    const-string v2, "Avrcp"

    const-string v3, "onListPlayerAttributeValues"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    new-instance v0, Landroid/content/Intent;

    const-string v2, "org.codeaurora.music.playersettingsrequest"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1533
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "get"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1534
    const-string v2, "commandExtra"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1535
    const-string v2, "Attribute"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1536
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1537
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    iput-byte p1, v2, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;->attr:B

    .line 1538
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v2}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1539
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x25a

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1540
    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 1541
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPendingCmds:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1542
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const-wide/16 v3, 0x82

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1543
    return-void
.end method

.method private processRCCStateChange(Ljava/lang/String;II)V
    .locals 11
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "isFocussed"    # I
    .param p3, "isAvailable"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1142
    const-string v5, "Avrcp"

    const-string v6, "processRCCStateChange"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    const/4 v0, 0x0

    .line 1144
    .local v0, "available":Z
    const/4 v2, 0x0

    .line 1145
    .local v2, "focussed":Z
    const/4 v3, 0x0

    .line 1147
    .local v3, "isResetFocusRequired":Z
    if-ne p2, v10, :cond_0

    .line 1148
    const/4 v2, 0x1

    .line 1149
    :cond_0
    if-ne p3, v10, :cond_1

    .line 1150
    const/4 v0, 0x1

    .line 1152
    :cond_1
    if-eqz v2, :cond_2

    .line 1153
    const/4 v3, 0x1

    .line 1154
    iget-object v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mRequestedAddressedPlayerPackageName:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 1155
    iget-object v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mRequestedAddressedPlayerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1156
    iget-object v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 1157
    const-string v5, "Avrcp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SetAddressedPlayer succeeds for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mRequestedAddressedPlayerPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mRequestedAddressedPlayerPackageName:Ljava/lang/String;

    .line 1160
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/android/bluetooth/a2dp/Avrcp;->setAdressedPlayerRspNative(B)Z

    .line 1170
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 1171
    iget-object v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1172
    .local v4, "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1173
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;

    .line 1174
    .local v1, "di":Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;
    invoke-virtual {v1}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->RetrievePlayerPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1175
    invoke-virtual {v1}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->GetPlayerAvailablility()Z

    move-result v5

    if-eq v5, v0, :cond_4

    .line 1176
    invoke-virtual {v1, v0}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->SetPlayerAvailablility(Z)V

    .line 1177
    const-string v5, "Avrcp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " availability: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    iget-object v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    if-eqz v5, :cond_4

    .line 1179
    const-string v5, "Avrcp"

    const-string v6, "Send MSG_UPDATE_AVAILABLE_PLAYERS"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iget-object v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/16 v6, 0xc9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v9, v9, v7}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1183
    :cond_4
    invoke-virtual {v1}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->GetPlayerFocus()Z

    move-result v5

    if-eq v5, v2, :cond_5

    .line 1184
    invoke-virtual {v1, v2}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->SetPlayerFocus(Z)V

    .line 1185
    const-string v5, "Avrcp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " focus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    if-eqz v3, :cond_5

    .line 1187
    iget-object v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    if-eqz v5, :cond_5

    .line 1188
    const-string v5, "Avrcp"

    const-string v6, "Send MSG_UPDATE_ADDRESSED_PLAYER"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    iget-object v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/16 v6, 0xca

    invoke-virtual {v1}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->RetrievePlayerId()S

    move-result v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v9, v8}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1198
    .end local v1    # "di":Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;
    .end local v4    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;>;"
    :cond_5
    const-string v5, "Avrcp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isResetFocusRequired: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    if-eqz v3, :cond_9

    .line 1201
    iget-object v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v10, :cond_9

    .line 1202
    iget-object v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1203
    .restart local v4    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;>;"
    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1204
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;

    .line 1205
    .restart local v1    # "di":Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;
    invoke-virtual {v1}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->RetrievePlayerPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1206
    const-string v5, "Avrcp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " focus: false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    invoke-virtual {v1, v9}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->SetPlayerFocus(Z)V

    goto :goto_1

    .line 1162
    .end local v1    # "di":Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;
    .end local v4    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;>;"
    :cond_7
    const-string v5, "Avrcp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SetaddressedPlayer package mismatch with: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mRequestedAddressedPlayerPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1166
    :cond_8
    const-string v5, "Avrcp"

    const-string v6, "SetaddressedPlayer request is not in progress"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1212
    :cond_9
    return-void
.end method

.method private processRegisterNotification(II)V
    .locals 7
    .param p1, "eventId"    # I
    .param p2, "param"    # I

    .prologue
    const/4 v6, 0x0

    .line 1214
    packed-switch p1, :pswitch_data_0

    .line 1260
    :pswitch_0
    const-string v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processRegisterNotification: Unhandled Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :goto_0
    return-void

    .line 1216
    :pswitch_1
    iput v6, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayStatusChangedNT:I

    .line 1217
    iget v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayStatusChangedNT:I

    iget v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    invoke-direct {p0, v4}, Lcom/android/bluetooth/a2dp/Avrcp;->convertPlayStateToPlayStatus(I)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/a2dp/Avrcp;->registerNotificationRspPlayStatusNative(II)Z

    goto :goto_0

    .line 1222
    :pswitch_2
    iput v6, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mTrackChangedNT:I

    .line 1223
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->sendTrackChangedRsp()V

    goto :goto_0

    .line 1227
    :pswitch_3
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->getPlayPosition()J

    move-result-wide v1

    .line 1228
    .local v1, "songPosition":J
    iput v6, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    .line 1229
    int-to-long v3, p2

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlaybackIntervalMs:J

    .line 1230
    iget-wide v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPosMs:J

    const-wide v5, -0x7fe688e67fe67d00L

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 1231
    iget-wide v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlaybackIntervalMs:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mNextPosMs:J

    .line 1232
    iget-wide v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlaybackIntervalMs:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPrevPosMs:J

    .line 1233
    iget v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1234
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1235
    .local v0, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    iget-wide v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlaybackIntervalMs:J

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1238
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    iget v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    long-to-int v4, v1

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/a2dp/Avrcp;->registerNotificationRspPlayPosNative(II)Z

    goto :goto_0

    .line 1243
    .end local v1    # "songPosition":J
    :pswitch_4
    iput v6, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerStatusChangeNT:I

    .line 1244
    iget v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerStatusChangeNT:I

    invoke-direct {p0, v3}, Lcom/android/bluetooth/a2dp/Avrcp;->sendPlayerAppChangedRsp(I)V

    goto :goto_0

    .line 1248
    :pswitch_5
    const-string v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Process EVT_ADDRESSED_PLAYER_CHANGED Interim: Player ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAddressedPlayerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    iput v6, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAddressedPlayerChangedNT:I

    .line 1250
    iget v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAddressedPlayerChangedNT:I

    iget v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAddressedPlayerId:I

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/a2dp/Avrcp;->registerNotificationRspAddressedPlayerChangedNative(II)Z

    goto :goto_0

    .line 1254
    :pswitch_6
    const-string v3, "Avrcp"

    const-string v4, "Process EVT_AVAILABLE_PLAYERS_CHANGED Interim"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    iput v6, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAvailablePlayersChangedNT:I

    .line 1256
    iget v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAvailablePlayersChangedNT:I

    invoke-direct {p0, v3}, Lcom/android/bluetooth/a2dp/Avrcp;->registerNotificationRspAvailablePlayersChangedNative(I)Z

    goto/16 :goto_0

    .line 1214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private registerMediaPlayers()V
    .locals 23

    .prologue
    .line 378
    const-string v1, "Avrcp"

    const-string v2, "registerMediaPlayers"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/16 v1, 0x10

    new-array v11, v1, [I

    fill-array-data v11, :array_0

    .line 380
    .local v11, "featureMasks":[I
    const/4 v1, 0x5

    new-array v9, v1, [B

    fill-array-data v9, :array_1

    .line 381
    .local v9, "playerName1":[B
    const/4 v1, 0x6

    new-array v0, v1, [B

    move-object/from16 v20, v0

    fill-array-data v20, :array_2

    .line 383
    .local v20, "playerName2":[B
    const/4 v1, 0x5

    const/4 v2, 0x5

    aget v2, v11, v2

    or-int/lit8 v2, v2, 0x1

    aput v2, v11, v1

    .line 384
    const/4 v1, 0x5

    const/4 v2, 0x5

    aget v2, v11, v2

    or-int/lit8 v2, v2, 0x4

    aput v2, v11, v1

    .line 385
    const/4 v1, 0x5

    const/4 v2, 0x5

    aget v2, v11, v2

    or-int/lit8 v2, v2, 0x2

    aput v2, v11, v1

    .line 386
    const/4 v1, 0x4

    const/4 v2, 0x4

    aget v2, v11, v2

    or-int/lit8 v2, v2, 0x4

    aput v2, v11, v1

    .line 387
    const/4 v1, 0x4

    const/4 v2, 0x4

    aget v2, v11, v2

    or-int/lit8 v2, v2, 0x8

    aput v2, v11, v1

    .line 388
    const/4 v1, 0x5

    const/4 v2, 0x5

    aget v2, v11, v2

    or-int/lit8 v2, v2, 0x10

    aput v2, v11, v1

    .line 389
    const/4 v1, 0x5

    const/4 v2, 0x5

    aget v2, v11, v2

    or-int/lit8 v2, v2, 0x20

    aput v2, v11, v1

    .line 390
    const/4 v1, 0x7

    const/4 v2, 0x7

    aget v2, v11, v2

    or-int/lit8 v2, v2, 0x1

    aput v2, v11, v1

    .line 391
    const/4 v1, 0x7

    const/4 v2, 0x7

    aget v2, v11, v2

    or-int/lit8 v2, v2, 0x4

    aput v2, v11, v1

    .line 393
    new-instance v1, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v7, 0x6a

    const/4 v8, 0x5

    const-string v10, "com.android.music"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;-><init>(Lcom/android/bluetooth/a2dp/Avrcp;SBIBSS[BLjava/lang/String;[I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/bluetooth/a2dp/Avrcp;->mediaPlayerInfo1:Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;

    .line 403
    new-instance v12, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x6a

    const/16 v19, 0x6

    const-string v21, "com.google.android.music"

    move-object/from16 v13, p0

    move-object/from16 v22, v11

    invoke-direct/range {v12 .. v22}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;-><init>(Lcom/android/bluetooth/a2dp/Avrcp;SBIBSS[BLjava/lang/String;[I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/bluetooth/a2dp/Avrcp;->mediaPlayerInfo2:Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;

    .line 413
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/a2dp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/a2dp/Avrcp;->mediaPlayerInfo1:Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/a2dp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/a2dp/Avrcp;->mediaPlayerInfo2:Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    return-void

    .line 379
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 380
    :array_1
    .array-data 1
        0x4dt
        0x75t
        0x73t
        0x69t
        0x63t
    .end array-data

    .line 381
    nop

    :array_2
    .array-data 1
        0x4dt
        0x75t
        0x73t
        0x69t
        0x63t
        0x32t
    .end array-data
.end method

.method private registerNotification(II)V
    .locals 3
    .param p1, "eventId"    # I
    .param p2, "param"    # I

    .prologue
    .line 1138
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1139
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1140
    return-void
.end method

.method private native registerNotificationPlayerAppRspNative(IB[B)Z
.end method

.method private native registerNotificationRspAddressedPlayerChangedNative(II)Z
.end method

.method private native registerNotificationRspAvailablePlayersChangedNative(I)Z
.end method

.method private native registerNotificationRspPlayPosNative(II)Z
.end method

.method private native registerNotificationRspPlayStatusNative(II)Z
.end method

.method private native registerNotificationRspTrackChangeNative(I[B)Z
.end method

.method private resetAndSendPlayerStatusReject()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    .line 922
    const-string v2, "Avrcp"

    const-string v3, "resetAndSendPlayerStatusReject"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayStatusChangedNT:I

    if-nez v2, :cond_0

    .line 925
    const-string v2, "Avrcp"

    const-string v3, "send Play Status reject to stack"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iput v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayStatusChangedNT:I

    .line 927
    iget v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayStatusChangedNT:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/a2dp/Avrcp;->registerNotificationRspPlayStatusNative(II)Z

    .line 929
    :cond_0
    iget v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    if-nez v2, :cond_1

    .line 930
    const-string v2, "Avrcp"

    const-string v3, "send Play Position reject to stack"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iput v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    .line 932
    iget v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/a2dp/Avrcp;->registerNotificationRspPlayPosNative(II)Z

    .line 933
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 935
    :cond_1
    iget v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mTrackChangedNT:I

    if-nez v2, :cond_3

    .line 936
    const-string v2, "Avrcp"

    const-string v3, "send Track Changed reject to stack"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iput v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mTrackChangedNT:I

    .line 938
    new-array v1, v5, [B

    .line 940
    .local v1, "track":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 941
    iget-wide v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mTrackNumber:J

    mul-int/lit8 v4, v0, 0x8

    rsub-int/lit8 v4, v4, 0x38

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 940
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 943
    :cond_2
    iget v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mTrackChangedNT:I

    invoke-direct {p0, v2, v1}, Lcom/android/bluetooth/a2dp/Avrcp;->registerNotificationRspTrackChangeNative(I[B)Z

    .line 945
    .end local v0    # "i":I
    .end local v1    # "track":[B
    :cond_3
    return-void
.end method

.method private rewind(I)V
    .locals 4
    .param p1, "keyState"    # I

    .prologue
    .line 1288
    iget v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->keyPressState:I

    if-ne p1, v1, :cond_0

    if-nez p1, :cond_0

    .line 1289
    const-string v1, "Avrcp"

    const-string v2, "Ignore key release event"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :goto_0
    return-void

    .line 1292
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1293
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1294
    iput p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->keyPressState:I

    goto :goto_0
.end method

.method private sendPlayerAppChangedRsp(I)V
    .locals 5
    .param p1, "rsptype"    # I

    .prologue
    .line 1330
    const/4 v1, 0x0

    .line 1331
    .local v1, "j":I
    const/4 v0, 0x4

    .line 1332
    .local v0, "i":B
    new-array v3, v0, [B

    .line 1333
    .local v3, "retVal":[B
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .local v2, "j":I
    const/4 v4, 0x2

    aput-byte v4, v3, v1

    .line 1334
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->settingValues:Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;

    iget-byte v4, v4, Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;->repeat_value:B

    aput-byte v4, v3, v2

    .line 1335
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    const/4 v4, 0x3

    aput-byte v4, v3, v1

    .line 1336
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->settingValues:Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;

    iget-byte v4, v4, Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;->shuffle_value:B

    aput-byte v4, v3, v2

    .line 1337
    invoke-direct {p0, p1, v0, v3}, Lcom/android/bluetooth/a2dp/Avrcp;->registerNotificationPlayerAppRspNative(IB[B)Z

    .line 1338
    return-void
.end method

.method private native sendSettingsTextRspNative(I[BI[Ljava/lang/String;)Z
.end method

.method private sendTrackChangedRsp()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 1313
    new-array v3, v7, [B

    .line 1314
    .local v3, "track":[B
    const-wide/16 v0, -0x1

    .line 1316
    .local v0, "TrackNumberRsp":J
    const-string v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentPlayState"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    iget v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 1321
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->tracknum:J
    invoke-static {v4}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->access$5800(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;)J

    move-result-wide v0

    .line 1323
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v7, :cond_1

    .line 1324
    mul-int/lit8 v4, v2, 0x8

    rsub-int/lit8 v4, v4, 0x38

    shr-long v4, v0, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 1323
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1326
    :cond_1
    iget v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mTrackChangedNT:I

    invoke-direct {p0, v4, v3}, Lcom/android/bluetooth/a2dp/Avrcp;->registerNotificationRspTrackChangeNative(I[B)Z

    .line 1327
    return-void
.end method

.method private native sendValueTextRspNative(I[BI[Ljava/lang/String;)Z
.end method

.method private setAddressedPlayer(I)V
    .locals 9
    .param p1, "playerId"    # I

    .prologue
    .line 1074
    const-string v6, "Avrcp"

    const-string v7, "setAddressedPlayer"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    const/4 v4, 0x0

    .line 1076
    .local v4, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mRequestedAddressedPlayerPackageName:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 1077
    const-string v6, "Avrcp"

    const-string v7, "setAddressedPlayer: Request in progress, Reject this Request"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    const/16 v6, 0x13

    invoke-direct {p0, v6}, Lcom/android/bluetooth/a2dp/Avrcp;->setAdressedPlayerRspNative(B)Z

    .line 1109
    :goto_0
    return-void

    .line 1081
    :cond_0
    iget-object v6, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 1082
    iget-object v6, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1083
    .local v5, "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;>;"
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1084
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;

    .line 1085
    .local v0, "di":Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->RetrievePlayerId()S

    move-result v6

    if-ne v6, p1, :cond_1

    .line 1086
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->RetrievePlayerPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1090
    .end local v0    # "di":Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;
    .end local v5    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;>;"
    :cond_2
    if-eqz v4, :cond_4

    .line 1091
    iget v6, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAddressedPlayerId:I

    if-ne p1, v6, :cond_3

    .line 1092
    const-string v6, "Avrcp"

    const-string v7, "setAddressedPlayer: Already addressed, sending success"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/android/bluetooth/a2dp/Avrcp;->setAdressedPlayerRspNative(B)Z

    goto :goto_0

    .line 1096
    :cond_3
    const-string v6, "com.android"

    const-string v7, "org.codeaurora"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1097
    .local v3, "newPackageName":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".setaddressedplayer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1098
    .local v1, "mediaIntent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1099
    iget-object v6, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1100
    const-string v6, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Intent Broadcasted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".setaddressedplayer"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iput-object v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mRequestedAddressedPlayerPackageName:Ljava/lang/String;

    .line 1102
    iget-object v6, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1103
    .local v2, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const-wide/16 v7, 0x7d0

    invoke-virtual {v6, v2, v7, v8}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1104
    const-string v6, "Avrcp"

    const-string v7, "Post MESSAGE_SET_ADDR_PLAYER_REQ_TIMEOUT"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1106
    .end local v1    # "mediaIntent":Landroid/content/Intent;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "newPackageName":Ljava/lang/String;
    :cond_4
    const-string v6, "Avrcp"

    const-string v7, "setAddressedPlayer fails: No such media player available"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const/16 v6, 0x11

    invoke-direct {p0, v6}, Lcom/android/bluetooth/a2dp/Avrcp;->setAdressedPlayerRspNative(B)Z

    goto/16 :goto_0
.end method

.method private native setAdressedPlayerRspNative(B)Z
.end method

.method private setPlayerAppSetting(B[B[B)V
    .locals 7
    .param p1, "num"    # B
    .param p2, "attr_id"    # [B
    .param p3, "attr_val"    # [B

    .prologue
    .line 1572
    const-string v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPlayerAppSetting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    mul-int/lit8 v4, p1, 0x2

    new-array v0, v4, [B

    .line 1574
    .local v0, "array":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 1576
    aget-byte v4, p2, v1

    aput-byte v4, v0, v1

    .line 1577
    add-int/lit8 v4, v1, 0x1

    aget-byte v5, p3, v1

    aput-byte v5, v0, v4

    .line 1574
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1579
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "org.codeaurora.music.playersettingsrequest"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1580
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "command"

    const-string v5, "set"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1581
    const-string v4, "AttribValuePairs"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1582
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH"

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1583
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v4}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 1584
    .local v3, "msg":Landroid/os/Message;
    const/16 v4, 0x25a

    iput v4, v3, Landroid/os/Message;->what:I

    .line 1585
    const/4 v4, 0x6

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 1586
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPendingCmds:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Integer;

    iget v6, v3, Landroid/os/Message;->arg1:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1587
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const-wide/16 v5, 0x82

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1588
    return-void
.end method

.method private native setVolumeNative(I)Z
.end method

.method private start()V
    .locals 7

    .prologue
    .line 273
    const-string v4, "Avrcp"

    const-string v5, "start"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "BluetoothAvrcpHandler"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 275
    .local v3, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 276
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 277
    .local v2, "looper":Landroid/os/Looper;
    new-instance v4, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v2, v5}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;-><init>(Lcom/android/bluetooth/a2dp/Avrcp;Landroid/os/Looper;Lcom/android/bluetooth/a2dp/Avrcp$1;)V

    iput-object v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    .line 278
    new-instance v4, Lcom/android/bluetooth/a2dp/Avrcp$IRemoteControlDisplayWeak;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-direct {v4, v5}, Lcom/android/bluetooth/a2dp/Avrcp$IRemoteControlDisplayWeak;-><init>(Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mRemoteControlDisplay:Lcom/android/bluetooth/a2dp/Avrcp$IRemoteControlDisplayWeak;

    .line 279
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mRemoteControlDisplay:Lcom/android/bluetooth/a2dp/Avrcp$IRemoteControlDisplayWeak;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 280
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mRemoteControlDisplay:Lcom/android/bluetooth/a2dp/Avrcp$IRemoteControlDisplayWeak;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/media/AudioManager;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V

    .line 282
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPendingCmds:Ljava/util/ArrayList;

    .line 283
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 284
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "org.codeaurora.bluetooth.RCC_CHANGED_ACTION"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v4, "org.codeaurora.music.playersettingsresponse"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->registerMediaPlayers()V

    .line 292
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Avrcp"

    const-string v5, "Unable to register Avrcp receiver"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateA2dpAudioState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 797
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    .line 798
    .local v0, "isPlaying":Z
    :goto_0
    iget v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    invoke-direct {p0, v1}, Lcom/android/bluetooth/a2dp/Avrcp;->isPlayingState(I)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 799
    if-eqz v0, :cond_2

    const/4 v1, 0x3

    :goto_1
    const-wide/16 v2, -0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/bluetooth/a2dp/Avrcp;->updatePlayPauseState(IJ)V

    .line 803
    :cond_0
    return-void

    .line 797
    .end local v0    # "isPlaying":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 799
    .restart local v0    # "isPlaying":Z
    :cond_2
    const/4 v1, 0x2

    goto :goto_1
.end method

.method private updateAddressedMediaPlayer(I)V
    .locals 4
    .param p1, "playerId"    # I

    .prologue
    .line 906
    const-string v1, "Avrcp"

    const-string v2, "updateAddressedMediaPlayer"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAddressedPlayerId:I

    .line 908
    .local v0, "previousAddressedPlayerId":I
    iget v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAddressedPlayerChangedNT:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAddressedPlayerId:I

    if-eq v1, p1, :cond_1

    .line 909
    const-string v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send AddressedMediaPlayer to stack: playerId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iput p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAddressedPlayerId:I

    .line 911
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAddressedPlayerChangedNT:I

    .line 912
    iget v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAddressedPlayerChangedNT:I

    iget v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAddressedPlayerId:I

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/a2dp/Avrcp;->registerNotificationRspAddressedPlayerChangedNative(II)Z

    .line 913
    if-eqz v0, :cond_0

    .line 914
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->resetAndSendPlayerStatusReject()V

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAddressedPlayerId:I

    goto :goto_0
.end method

.method private updateAvailableMediaPlayers()V
    .locals 2

    .prologue
    .line 898
    const-string v0, "Avrcp"

    const-string v1, "updateAvailableMediaPlayers"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAvailablePlayersChangedNT:I

    if-nez v0, :cond_0

    .line 900
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAvailablePlayersChangedNT:I

    .line 901
    const-string v0, "Avrcp"

    const-string v1, "send AvailableMediaPlayers to stack"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAvailablePlayersChangedNT:I

    invoke-direct {p0, v0}, Lcom/android/bluetooth/a2dp/Avrcp;->registerNotificationRspAvailablePlayersChangedNative(I)Z

    .line 904
    :cond_0
    return-void
.end method

.method private updateLocalPlayerSettings([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 1498
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1499
    aget-byte v1, p1, v0

    packed-switch v1, :pswitch_data_0

    .line 1498
    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1501
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->settingValues:Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    iput-byte v2, v1, Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;->eq_value:B

    goto :goto_1

    .line 1504
    :pswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->settingValues:Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    iput-byte v2, v1, Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;->repeat_value:B

    goto :goto_1

    .line 1507
    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->settingValues:Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    iput-byte v2, v1, Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;->shuffle_value:B

    goto :goto_1

    .line 1510
    :pswitch_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->settingValues:Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    iput-byte v2, v1, Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;->scan_value:B

    goto :goto_1

    .line 1514
    :cond_0
    return-void

    .line 1499
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateMetadata(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 990
    const-string v3, "Avrcp"

    const-string v4, "updateMetadata"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 992
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 993
    .local v2, "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 994
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;

    .line 995
    .local v0, "di":Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->GetPlayerFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 996
    const-string v3, "Avrcp"

    const-string v4, "resetting current MetaData"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->GetMetadata()Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    .line 1002
    .end local v0    # "di":Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;
    .end local v2    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    invoke-virtual {v3}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1003
    .local v1, "oldMetadata":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    const/16 v4, 0xd

    invoke-direct {p0, p1, v4}, Lcom/android/bluetooth/a2dp/Avrcp;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->artist:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->access$5402(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 1004
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    const/4 v4, 0x7

    invoke-direct {p0, p1, v4}, Lcom/android/bluetooth/a2dp/Avrcp;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->access$5502(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 1005
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    invoke-direct {p0, p1, v7}, Lcom/android/bluetooth/a2dp/Avrcp;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->access$5602(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 1006
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    const/4 v4, 0x6

    invoke-direct {p0, p1, v4}, Lcom/android/bluetooth/a2dp/Avrcp;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->genre:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->access$5702(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 1007
    const/16 v3, 0xa

    invoke-direct {p0, p1, v3}, Lcom/android/bluetooth/a2dp/Avrcp;->getMdLong(Landroid/os/Bundle;I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mTrackNumber:J

    .line 1008
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/android/bluetooth/a2dp/Avrcp;->getMdLong(Landroid/os/Bundle;I)J

    move-result-wide v4

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->tracknum:J
    invoke-static {v3, v4, v5}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->access$5802(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;J)J

    .line 1010
    const-string v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMetadata.toString() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    invoke-virtual {v5}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1013
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1014
    .restart local v2    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1015
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;

    .line 1016
    .restart local v0    # "di":Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->GetPlayerFocus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1017
    const-string v3, "Avrcp"

    const-string v4, "updating List MetaData"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->SetMetadata(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;)V

    .line 1023
    .end local v0    # "di":Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;
    .end local v2    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;>;"
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    invoke-virtual {v3}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1024
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->updateTrackNumber()V

    .line 1025
    const-string v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new mMetadata, mTrackNumber update to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mTrackNumber:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mTrackChangedNT:I

    if-nez v3, :cond_4

    .line 1028
    iput v7, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mTrackChangedNT:I

    .line 1029
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->sendTrackChangedRsp()V

    .line 1032
    :cond_4
    iget-wide v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPosMs:J

    const-wide v5, -0x7fe688e67fe67d00L

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 1033
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPosMs:J

    .line 1034
    iget v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 1035
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayStartTimeMs:J

    .line 1039
    :cond_5
    iget v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    if-nez v3, :cond_6

    .line 1040
    iput v7, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    .line 1041
    iget v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->getPlayPosition()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/a2dp/Avrcp;->registerNotificationRspPlayPosNative(II)Z

    .line 1043
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 1046
    :cond_6
    const-string v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMetadata="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    invoke-virtual {v5}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const/16 v3, 0x9

    invoke-direct {p0, p1, v3}, Lcom/android/bluetooth/a2dp/Avrcp;->getMdLong(Landroid/os/Bundle;I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mSongLengthMs:J

    .line 1049
    const-string v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mSongLengthMs:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    return-void
.end method

.method private updatePlayPauseState(IJ)V
    .locals 13
    .param p1, "state"    # I
    .param p2, "currentPosMs"    # J

    .prologue
    .line 806
    const-string v9, "Avrcp"

    const-string v10, "updatePlayPauseState"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-wide v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPosMs:J

    const-wide v11, -0x7fe688e67fe67d00L

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    const/4 v5, 0x1

    .line 809
    .local v5, "oldPosValid":Z
    :goto_0
    const/4 v9, 0x3

    if-ne p1, v9, :cond_1

    .line 810
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 811
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 812
    .local v8, "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;>;"
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 813
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;

    .line 814
    .local v0, "di":Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->GetPlayerFocus()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 815
    const-string v9, "Avrcp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reset "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->getPlayerPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " playbackState as: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->GetPlayState()B

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->GetPlayState()B

    move-result v9

    iput v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    .line 822
    .end local v0    # "di":Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;
    .end local v8    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;>;"
    :cond_1
    const-string v9, "Avrcp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "old state = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", new state= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    invoke-direct {p0, v9}, Lcom/android/bluetooth/a2dp/Avrcp;->convertPlayStateToPlayStatus(I)I

    move-result v4

    .line 824
    .local v4, "oldPlayStatus":I
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->convertPlayStateToPlayStatus(I)I

    move-result v2

    .line 826
    .local v2, "newPlayStatus":I
    iget v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    iget v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    if-eq v9, p1, :cond_2

    if-eqz v5, :cond_2

    .line 828
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->getPlayPosition()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPosMs:J

    .line 831
    :cond_2
    const/4 v9, 0x3

    if-ne p1, v9, :cond_3

    iget v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    if-eq v9, p1, :cond_3

    .line 832
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayStartTimeMs:J

    .line 833
    const-string v9, "Avrcp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Update mPlayStartTimeMs to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayStartTimeMs:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_3
    iput p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    .line 838
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 839
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 840
    .restart local v8    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;>;"
    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 841
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;

    .line 842
    .restart local v0    # "di":Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;
    const/4 v9, 0x3

    if-ne p1, v9, :cond_7

    .line 843
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->GetPlayerFocus()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 844
    const-string v9, "Avrcp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->getPlayerPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " playbackState as: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    int-to-byte v9, v9

    invoke-virtual {v0, v9}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->SetPlayState(B)V

    goto :goto_1

    .line 807
    .end local v0    # "di":Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;
    .end local v2    # "newPlayStatus":I
    .end local v4    # "oldPlayStatus":I
    .end local v5    # "oldPosValid":Z
    .end local v8    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;>;"
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 847
    .restart local v0    # "di":Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;
    .restart local v2    # "newPlayStatus":I
    .restart local v4    # "oldPlayStatus":I
    .restart local v5    # "oldPosValid":Z
    .restart local v8    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;>;"
    :cond_6
    const-string v9, "Avrcp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->getPlayerPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " playbackState as: Paused"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->SetPlayState(B)V

    goto :goto_1

    .line 851
    :cond_7
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->GetPlayerFocus()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 852
    const-string v9, "Avrcp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->getPlayerPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " playbackState as: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    int-to-byte v9, v9

    invoke-virtual {v0, v9}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->SetPlayState(B)V

    .line 860
    .end local v0    # "di":Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;
    .end local v8    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;>;"
    :cond_8
    const/4 v9, 0x3

    iget v10, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    if-ne v9, v10, :cond_9

    iget v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    if-ne v9, p1, :cond_9

    iget-wide v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPosMs:J

    cmp-long v9, v9, p2

    if-eqz v9, :cond_a

    .line 862
    :cond_9
    const-wide/16 v9, -0x1

    cmp-long v9, p2, v9

    if-eqz v9, :cond_a

    .line 863
    iput-wide p2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPosMs:J

    .line 864
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayStartTimeMs:J

    .line 865
    const-string v9, "Avrcp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Update mPlayStartTimeMs: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayStartTimeMs:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mCurrentPosMs: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPosMs:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_a
    iget-wide v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPosMs:J

    const-wide v11, -0x7fe688e67fe67d00L

    cmp-long v9, v9, v11

    if-eqz v9, :cond_f

    const/4 v3, 0x1

    .line 872
    .local v3, "newPosValid":Z
    :goto_2
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->getPlayPosition()J

    move-result-wide v6

    .line 873
    .local v6, "playPosition":J
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 875
    iget v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    if-nez v9, :cond_c

    if-ne v4, v2, :cond_b

    if-ne v5, v3, :cond_b

    if-eqz v3, :cond_c

    iget-wide v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mNextPosMs:J

    cmp-long v9, v6, v9

    if-gez v9, :cond_b

    iget-wide v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPrevPosMs:J

    cmp-long v9, v6, v9

    if-gtz v9, :cond_c

    .line 878
    :cond_b
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    .line 879
    iget v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    long-to-int v10, v6

    invoke-direct {p0, v9, v10}, Lcom/android/bluetooth/a2dp/Avrcp;->registerNotificationRspPlayPosNative(II)Z

    .line 881
    :cond_c
    iget v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    if-nez v9, :cond_d

    if-eqz v3, :cond_d

    const/4 v9, 0x3

    if-ne p1, v9, :cond_d

    .line 883
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 884
    .local v1, "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    iget-wide v10, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mNextPosMs:J

    sub-long/2addr v10, v6

    invoke-virtual {v9, v1, v10, v11}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 887
    .end local v1    # "msg":Landroid/os/Message;
    :cond_d
    iget v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayStatusChangedNT:I

    if-nez v9, :cond_e

    if-eq v4, v2, :cond_e

    .line 888
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayStatusChangedNT:I

    .line 889
    iget v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayStatusChangedNT:I

    invoke-direct {p0, v9, v2}, Lcom/android/bluetooth/a2dp/Avrcp;->registerNotificationRspPlayStatusNative(II)Z

    .line 891
    :cond_e
    return-void

    .line 870
    .end local v3    # "newPosValid":Z
    .end local v6    # "playPosition":J
    :cond_f
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private updateTrackNumber()V
    .locals 4

    .prologue
    .line 977
    const-string v2, "Avrcp"

    const-string v3, "updateTrackNumber"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 979
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 980
    .local v1, "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 981
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;

    .line 982
    .local v0, "di":Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->GetPlayerFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 983
    iget-wide v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mTrackNumber:J

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;->SetTrackNumber(J)V

    .line 988
    .end local v0    # "di":Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;
    .end local v1    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/a2dp/Avrcp$MediaPlayerInfo;>;"
    :cond_1
    return-void
.end method

.method private updateTransportControls(I)V
    .locals 0
    .param p1, "transportControlFlags"    # I

    .prologue
    .line 894
    iput p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mTransportControlFlags:I

    .line 895
    return-void
.end method

.method private volumeChangeCallback(II)V
    .locals 3
    .param p1, "volume"    # I
    .param p2, "ctype"    # I

    .prologue
    .line 1477
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1478
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1479
    return-void
.end method


# virtual methods
.method public adjustVolume(I)V
    .locals 4
    .param p1, "direction"    # I

    .prologue
    .line 1456
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1457
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1458
    return-void
.end method

.method public cleanup()V
    .locals 2

    .prologue
    .line 447
    const-string v0, "Avrcp"

    const-string v1, "cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->cleanupNative()V

    .line 449
    return-void
.end method

.method public doQuit()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xe

    .line 425
    const-string v2, "Avrcp"

    const-string v3, "doQuit"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 427
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v2}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 428
    .local v1, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_0

    .line 429
    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 431
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mRemoteControlDisplay:Lcom/android/bluetooth/a2dp/Avrcp$IRemoteControlDisplayWeak;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 433
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 438
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v2, v4}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 439
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v2, v4}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 440
    iput-object v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mRequestedAddressedPlayerPackageName:Ljava/lang/String;

    .line 441
    const-string v2, "Avrcp"

    const-string v3, "Addressed player message cleanup as part of doQuit"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->keyPressState:I

    .line 444
    return-void

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Avrcp"

    const-string v3, "Unable to unregister Avrcp receiver"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isAbsoluteVolumeSupported()Z
    .locals 1

    .prologue
    .line 1448
    iget v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mFeatures:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setA2dpAudioState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 1635
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1636
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1637
    return-void
.end method

.method public setAbsoluteVolume(I)V
    .locals 5
    .param p1, "volume"    # I

    .prologue
    const/4 v4, 0x0

    .line 1461
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->convertToAvrcpVolume(I)I

    move-result v0

    .line 1462
    .local v0, "avrcpVolume":I
    const/16 v2, 0x7f

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1463
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 1464
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1465
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1467
    return-void
.end method

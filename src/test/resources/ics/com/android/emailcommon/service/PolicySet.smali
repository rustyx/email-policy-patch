.class public Lcom/android/emailcommon/service/PolicySet;
.super Ljava/lang/Object;
.source "PolicySet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/service/PolicySet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAllowBluetoothMode:I

.field public mAllowBrowser:Z

.field public mAllowCamera:Z

.field public mAllowDesktopSync:Z

.field public mAllowHTMLEmail:Z

.field public mAllowInternetSharing:Z

.field public mAllowIrDA:Z

.field public mAllowPOPIMAPEmail:Z

.field public mAllowSMIMEEncryptionAlgorithmNegotiation:I

.field public mAllowSMIMESoftCerts:Z

.field public mAllowStorageCard:Z

.field public mAllowTextMessaging:Z

.field public mAllowWifi:Z

.field public mAttachmentsEnabled:Z

.field public mDeviceEncryptionEnabled:Z

.field public mMaxAttachmentSize:I

.field public mMaxCalendarAgeFilter:I

.field public mMaxEmailAgeFilter:I

.field public mMaxEmailBodyTruncationSize:I

.field public mMaxEmailHtmlBodyTruncationSize:I

.field public mMaxPasswordFails:I

.field public mMaxScreenLockTime:I

.field public mMinPasswordLength:I

.field public mPasswordComplexChars:I

.field public mPasswordExpirationDays:I

.field public mPasswordHistory:I

.field public mPasswordMode:I

.field public mPasswordRecoverable:Z

.field public mRequireEncryptedSMIMEMessages:Z

.field public mRequireEncryption:Z

.field public mRequireEncryptionSMIMEAlgorithm:I

.field public mRequireManualSyncWhenRoaming:Z

.field public mRequireRemoteWipe:Z

.field public mRequireSignedSMIMEAlgorithm:I

.field public mRequireSignedSMIMEMessages:Z

.field public mSimplePasswordEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 837
    new-instance v0, Lcom/android/emailcommon/service/PolicySet$1;

    invoke-direct {v0}, Lcom/android/emailcommon/service/PolicySet$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/service/PolicySet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIZZIIZIZZZZZZZZZIIIIIIZZIIIZZZZZZ)V
    .registers 40
    .parameter "minPasswordLength"
    .parameter "passwordMode"
    .parameter "maxPasswordFails"
    .parameter "maxScreenLockTime"
    .parameter "requireRemoteWipe"
    .parameter "passwordRecoverable"
    .parameter "passwordExpirationDays"
    .parameter "passwordHistory"
    .parameter "attachmentsEnabled"
    .parameter "maxAttachmentSize"
    .parameter "allowStorageCard"
    .parameter "allowCamera"
    .parameter "allowWifi"
    .parameter "allowTextMessaging"
    .parameter "allowPOPIMAPEmail"
    .parameter "allowHTMLEmail"
    .parameter "allowBrowser"
    .parameter "allowInternetSharing"
    .parameter "requireManualSyncWhenRoaming"
    .parameter "allowBluetoothMode"
    .parameter "passwordComplexChars"
    .parameter "maxCalendarAgeFilter"
    .parameter "maxEmailAgeFilter"
    .parameter "maxEmailBodyTruncationSize"
    .parameter "maxEmailHtmlBodyTruncationSize"
    .parameter "requireSignedSMIMEMessages"
    .parameter "requireEncryptedSMIMEMessages"
    .parameter "requireSignedSMIMEAlgorithm"
    .parameter "requireEncryptionSMIMEAlgorithm"
    .parameter "allowSMIMEEncryptionAlgorithmNegotiation"
    .parameter "allowSMIMESoftCerts"
    .parameter "allowDesktopSync"
    .parameter "allowIrDA"
    .parameter "requireEncryption"
    .parameter "deviceEncryptionEnabled"
    .parameter "simplePasswordEnabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 308
    if-nez p2, :cond_90

    .line 309
    const/4 p3, 0x0

    .line 310
    const/4 p4, 0x0

    .line 311
    const/4 p1, 0x0

    .line 312
    const/16 p21, 0x0

    .line 313
    const/4 p8, 0x0

    .line 314
    const/4 p7, 0x0

    .line 351
    :cond_c
    :goto_c
    iput p1, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    .line 352
    const/16 v1, 0x40

    if-ne p2, v1, :cond_ea

    const/4 v1, 0x1

    move/from16 v0, p21

    if-le v0, v1, :cond_ea

    .line 353
    const/16 v1, 0x60

    iput v1, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    .line 356
    :goto_1b
    iput p3, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    .line 357
    iput p4, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    .line 358
    iput-boolean p5, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    .line 359
    iput p7, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    .line 360
    iput p8, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    .line 361
    move/from16 v0, p21

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    .line 362
    move/from16 v0, p34

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    .line 363
    move/from16 v0, p35

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mDeviceEncryptionEnabled:Z

    .line 375
    iput-boolean p6, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    .line 377
    iput-boolean p9, p0, Lcom/android/emailcommon/service/PolicySet;->mAttachmentsEnabled:Z

    .line 378
    move/from16 v0, p36

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mSimplePasswordEnabled:Z

    .line 379
    iput p10, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxAttachmentSize:I

    .line 383
    iput-boolean p11, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowStorageCard:Z

    .line 384
    iput-boolean p12, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowCamera:Z

    .line 385
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowWifi:Z

    .line 386
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowTextMessaging:Z

    .line 387
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowPOPIMAPEmail:Z

    .line 388
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    .line 389
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBrowser:Z

    .line 390
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowInternetSharing:Z

    .line 391
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    .line 392
    move/from16 v0, p20

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    .line 394
    move/from16 v0, p22

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    .line 395
    move/from16 v0, p23

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    .line 396
    move/from16 v0, p24

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    .line 397
    move/from16 v0, p25

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    .line 398
    move/from16 v0, p26

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    .line 399
    move/from16 v0, p27

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    .line 400
    move/from16 v0, p28

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    .line 401
    move/from16 v0, p29

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    .line 402
    move/from16 v0, p30

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    .line 403
    move/from16 v0, p31

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    .line 404
    move/from16 v0, p32

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowDesktopSync:Z

    .line 405
    move/from16 v0, p33

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowIrDA:Z

    .line 407
    return-void

    .line 316
    :cond_90
    const/16 v1, 0x20

    if-eq p2, v1, :cond_a4

    const/16 v1, 0x40

    if-eq p2, v1, :cond_a4

    const/16 v1, 0x60

    if-eq p2, v1, :cond_a4

    .line 318
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password mode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    :cond_a4
    const/16 v1, 0x20

    if-ne p2, v1, :cond_aa

    .line 324
    const/16 p21, 0x0

    .line 328
    :cond_aa
    const/16 v1, 0x1e

    if-le p1, v1, :cond_b6

    .line 329
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 331
    :cond_b6
    const/16 v1, 0x3ff

    if-le p7, v1, :cond_c2

    .line 332
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password expiration"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 334
    :cond_c2
    const/16 v1, 0xff

    if-le p8, v1, :cond_ce

    .line 335
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password history"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 337
    :cond_ce
    const/16 v1, 0x1f

    move/from16 v0, p21

    if-le v0, v1, :cond_dc

    .line 338
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "complex chars"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_dc
    const/16 v1, 0x1f

    if-le p3, v1, :cond_e2

    .line 343
    const/16 p3, 0x1f

    .line 347
    :cond_e2
    const/16 v1, 0x7ff

    if-le p4, v1, :cond_c

    .line 348
    const/16 p4, 0x7ff

    goto/16 :goto_c

    .line 355
    :cond_ea
    iput p2, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    goto/16 :goto_1b
.end method

.method public constructor <init>(J)V
    .registers 10
    .parameter "flags"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 534
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 535
    const-wide/16 v3, 0x1f

    and-long/2addr v3, p1

    shr-long/2addr v3, v2

    long-to-int v0, v3

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    .line 536
    const-wide/16 v3, 0x1e0

    and-long/2addr v3, p1

    long-to-int v0, v3

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    .line 537
    const-wide/16 v3, 0x3e00

    and-long/2addr v3, p1

    const/16 v0, 0x9

    shr-long/2addr v3, v0

    long-to-int v0, v3

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    .line 538
    const-wide/32 v3, 0x1ffc000

    and-long/2addr v3, p1

    const/16 v0, 0xe

    shr-long/2addr v3, v0

    long-to-int v0, v3

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    .line 539
    const-wide/32 v3, 0x2000000

    and-long/2addr v3, p1

    cmp-long v0, v5, v3

    if-eqz v0, :cond_60

    move v0, v1

    :goto_30
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    .line 540
    const-wide v3, 0xffc000000L

    and-long/2addr v3, p1

    const/16 v0, 0x1a

    shr-long/2addr v3, v0

    long-to-int v0, v3

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    .line 541
    const-wide v3, 0xff000000000L

    and-long/2addr v3, p1

    const/16 v0, 0x24

    shr-long/2addr v3, v0

    long-to-int v0, v3

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    .line 542
    const-wide v3, 0x1f00000000000L

    and-long/2addr v3, p1

    const/16 v0, 0x2c

    shr-long/2addr v3, v0

    long-to-int v0, v3

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    .line 543
    const-wide/high16 v3, 0x2

    and-long/2addr v3, p1

    cmp-long v0, v5, v3

    if-eqz v0, :cond_62

    :goto_5d
    iput-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    .line 544
    return-void

    :cond_60
    move v0, v2

    .line 539
    goto :goto_30

    :cond_62
    move v1, v2

    .line 543
    goto :goto_5d
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 16
    .parameter "context"
    .parameter "account"

    .prologue
    .line 414
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 418
    if-eqz p2, :cond_7

    if-nez p1, :cond_f

    .line 419
    :cond_7
    const-string v0, "SecurityPolicy"

    const-string v1, "PolicySet(): account is null or context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_e
    :goto_e
    return-void

    .line 423
    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 426
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "account_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v11, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 431
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_e

    .line 432
    :cond_32
    :goto_32
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2a1

    .line 433
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 434
    .local v7, name:Ljava/lang/String;
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 435
    .local v8, type:Ljava/lang/String;
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 437
    .local v10, value:Ljava/lang/String;
    const-string v0, "Integer"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_161

    .line 438
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 439
    .local v9, val:Ljava/lang/Integer;
    const-string v0, "PasswordMode"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 440
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    goto :goto_32

    .line 441
    :cond_75
    const-string v0, "MaxDevicePasswordFailedAttempts"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 442
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    goto :goto_32

    .line 443
    :cond_84
    const-string v0, "MinDevicePasswordLength"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 444
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    goto :goto_32

    .line 445
    :cond_93
    const-string v0, "MaxInactivityTime"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 446
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    goto :goto_32

    .line 447
    :cond_a2
    const-string v0, "MaxAttachmentSize"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 448
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxAttachmentSize:I

    goto :goto_32

    .line 449
    :cond_b1
    const-string v0, "DevicePasswordExpiration"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 450
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    goto/16 :goto_32

    .line 451
    :cond_c1
    const-string v0, "DevicePasswordHistory"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 452
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    goto/16 :goto_32

    .line 456
    :cond_d1
    const-string v0, "AllowBluetoothMode"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 457
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    goto/16 :goto_32

    .line 458
    :cond_e1
    const-string v0, "MinPasswordComplexCharacters"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 459
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    goto/16 :goto_32

    .line 460
    :cond_f1
    const-string v0, "MaxCalendarAgeFilter"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 461
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    goto/16 :goto_32

    .line 462
    :cond_101
    const-string v0, "MaxEmailAgeFilter"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_111

    .line 463
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    goto/16 :goto_32

    .line 464
    :cond_111
    const-string v0, "MaxEmailBodyTruncationSize"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 465
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    goto/16 :goto_32

    .line 466
    :cond_121
    const-string v0, "MaxEmailHtmlBodyTruncationSize"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 467
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    goto/16 :goto_32

    .line 470
    :cond_131
    const-string v0, "RequireSignedSMIMEAlgorithm"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 471
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    goto/16 :goto_32

    .line 472
    :cond_141
    const-string v0, "RequireEncryptionSMIMEAlgorithm"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_151

    .line 473
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    goto/16 :goto_32

    .line 474
    :cond_151
    const-string v0, "AllowSMIMEEncryptionAlgorithmNegotiation"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 475
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    goto/16 :goto_32

    .line 479
    .end local v9           #val:Ljava/lang/Integer;
    :cond_161
    const-string v0, "Boolean"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 480
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 481
    .local v9, val:Ljava/lang/Boolean;
    const-string v0, "PasswordRecoveryEnabled"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_181

    .line 482
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    goto/16 :goto_32

    .line 483
    :cond_181
    const-string v0, "RequireDeviceEncryption"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_191

    .line 484
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    goto/16 :goto_32

    .line 485
    :cond_191
    const-string v0, "AttachmentsEnabled"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a1

    .line 486
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAttachmentsEnabled:Z

    goto/16 :goto_32

    .line 487
    :cond_1a1
    const-string v0, "RemoteWipe"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b1

    .line 488
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    goto/16 :goto_32

    .line 489
    :cond_1b1
    const-string v0, "AllowSimpleDevicePassword"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    .line 490
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mSimplePasswordEnabled:Z

    goto/16 :goto_32

    .line 493
    :cond_1c1
    const-string v0, "AllowStorageCard"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d1

    .line 494
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowStorageCard:Z

    goto/16 :goto_32

    .line 495
    :cond_1d1
    const-string v0, "AllowCamera"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e1

    .line 496
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowCamera:Z

    goto/16 :goto_32

    .line 497
    :cond_1e1
    const-string v0, "AllowWifi"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f1

    .line 498
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowWifi:Z

    goto/16 :goto_32

    .line 499
    :cond_1f1
    const-string v0, "AllowTextMessaging"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_201

    .line 500
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowTextMessaging:Z

    goto/16 :goto_32

    .line 501
    :cond_201
    const-string v0, "AllowPOPIMAPEmail"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_211

    .line 502
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowPOPIMAPEmail:Z

    goto/16 :goto_32

    .line 503
    :cond_211
    const-string v0, "AllowHTMLEmail"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_221

    .line 504
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    goto/16 :goto_32

    .line 505
    :cond_221
    const-string v0, "AllowBrowser"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_231

    .line 506
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBrowser:Z

    goto/16 :goto_32

    .line 507
    :cond_231
    const-string v0, "AllowInternetSharing"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_241

    .line 508
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowInternetSharing:Z

    goto/16 :goto_32

    .line 509
    :cond_241
    const-string v0, "RequireManualSyncWhenRoaming"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_251

    .line 510
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    goto/16 :goto_32

    .line 511
    :cond_251
    const-string v0, "RequireSignedSMIMEMessages"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_261

    .line 512
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    goto/16 :goto_32

    .line 513
    :cond_261
    const-string v0, "RequireEncryptedSMIMEMessages"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_271

    .line 514
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    goto/16 :goto_32

    .line 515
    :cond_271
    const-string v0, "AllowSMIMESoftCerts"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_281

    .line 516
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    goto/16 :goto_32

    .line 517
    :cond_281
    const-string v0, "AllowDesktopSync"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_291

    .line 518
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowDesktopSync:Z

    goto/16 :goto_32

    .line 519
    :cond_291
    const-string v0, "AllowIrDA"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 520
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowIrDA:Z

    goto/16 :goto_32

    .line 526
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #type:Ljava/lang/String;
    .end local v9           #val:Ljava/lang/Boolean;
    .end local v10           #value:Ljava/lang/String;
    :cond_2a1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_e
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 896
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 897
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    .line 898
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    .line 899
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    .line 900
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    .line 901
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_119

    move v0, v1

    :goto_24
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    .line 902
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    .line 903
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    .line 904
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    .line 905
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_11c

    move v0, v1

    :goto_3f
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    .line 906
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_11f

    move v0, v1

    :goto_48
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    .line 907
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_122

    move v0, v1

    :goto_51
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mDeviceEncryptionEnabled:Z

    .line 908
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_125

    move v0, v1

    :goto_5a
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mSimplePasswordEnabled:Z

    .line 911
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_128

    move v0, v1

    :goto_63
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAttachmentsEnabled:Z

    .line 912
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxAttachmentSize:I

    .line 913
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    .line 914
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    .line 915
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_12b

    move v0, v1

    :goto_7e
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    .line 916
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    .line 917
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    .line 918
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_12e

    move v0, v1

    :goto_93
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    .line 919
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_131

    move v0, v1

    :goto_9c
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    .line 920
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_134

    move v0, v1

    :goto_a5
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    .line 921
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    .line 922
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    .line 923
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    .line 926
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_137

    move v0, v1

    :goto_c0
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowStorageCard:Z

    .line 927
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_139

    move v0, v1

    :goto_c9
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowCamera:Z

    .line 928
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_13b

    move v0, v1

    :goto_d2
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowWifi:Z

    .line 929
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_13d

    move v0, v1

    :goto_db
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowTextMessaging:Z

    .line 930
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_13f

    move v0, v1

    :goto_e4
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowPOPIMAPEmail:Z

    .line 931
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_141

    move v0, v1

    :goto_ed
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBrowser:Z

    .line 932
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_143

    move v0, v1

    :goto_f6
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowInternetSharing:Z

    .line 933
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_145

    move v0, v1

    :goto_ff
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    .line 934
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_147

    move v0, v1

    :goto_108
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowDesktopSync:Z

    .line 935
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_149

    :goto_110
    iput-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowIrDA:Z

    .line 936
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    .line 937
    return-void

    :cond_119
    move v0, v2

    .line 901
    goto/16 :goto_24

    :cond_11c
    move v0, v2

    .line 905
    goto/16 :goto_3f

    :cond_11f
    move v0, v2

    .line 906
    goto/16 :goto_48

    :cond_122
    move v0, v2

    .line 907
    goto/16 :goto_51

    :cond_125
    move v0, v2

    .line 908
    goto/16 :goto_5a

    :cond_128
    move v0, v2

    .line 911
    goto/16 :goto_63

    :cond_12b
    move v0, v2

    .line 915
    goto/16 :goto_7e

    :cond_12e
    move v0, v2

    .line 918
    goto/16 :goto_93

    :cond_131
    move v0, v2

    .line 919
    goto/16 :goto_9c

    :cond_134
    move v0, v2

    .line 920
    goto/16 :goto_a5

    :cond_137
    move v0, v2

    .line 926
    goto :goto_c0

    :cond_139
    move v0, v2

    .line 927
    goto :goto_c9

    :cond_13b
    move v0, v2

    .line 928
    goto :goto_d2

    :cond_13d
    move v0, v2

    .line 929
    goto :goto_db

    :cond_13f
    move v0, v2

    .line 930
    goto :goto_e4

    :cond_141
    move v0, v2

    .line 931
    goto :goto_ed

    :cond_143
    move v0, v2

    .line 932
    goto :goto_f6

    :cond_145
    move v0, v2

    .line 933
    goto :goto_ff

    :cond_147
    move v0, v2

    .line 934
    goto :goto_108

    :cond_149
    move v1, v2

    .line 935
    goto :goto_110
.end method

.method private populateHash(Ljava/util/HashMap;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x7

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 769
    const-string v3, "PasswordMode"

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    iget v3, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    if-eqz v3, :cond_5f

    .line 772
    const-string v3, "PasswordRecoveryEnabled"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    const-string v3, "MaxDevicePasswordFailedAttempts"

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    const-string v3, "DevicePasswordExpiration"

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    const-string v3, "DevicePasswordHistory"

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    const-string v3, "MinPasswordComplexCharacters"

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    const-string v3, "MinDevicePasswordLength"

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    const-string v3, "RequireDeviceEncryption"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    :cond_5f
    const-string v3, "MaxAttachmentSize"

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxAttachmentSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    const-string v3, "AttachmentsEnabled"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAttachmentsEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    const-string v3, "AllowSimpleDevicePassword"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mSimplePasswordEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    const-string v3, "DeviceEncryptionEnabled"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mDeviceEncryptionEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    .line 789
    .local v0, inactivityTime:I
    const-string v3, "MaxInactivityTime"

    const/16 v4, 0x270f

    if-lt v0, v4, :cond_94

    move v0, v1

    .end local v0           #inactivityTime:I
    :cond_94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    const-string v3, "RemoteWipe"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    const-string v3, "AllowStorageCard"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowStorageCard:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    const-string v3, "AllowCamera"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowCamera:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    const-string v3, "AllowWifi"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowWifi:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    const-string v3, "AllowTextMessaging"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowTextMessaging:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    const-string v3, "AllowPOPIMAPEmail"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowPOPIMAPEmail:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    const-string v3, "AllowHTMLEmail"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    const-string v3, "AllowBrowser"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBrowser:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    const-string v3, "AllowInternetSharing"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowInternetSharing:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    const-string v3, "RequireManualSyncWhenRoaming"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    const-string v3, "AllowBluetoothMode"

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    if-ltz v4, :cond_113

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    if-le v4, v2, :cond_1b2

    :cond_113
    :goto_113
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    const-string v3, "MaxCalendarAgeFilter"

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    if-ltz v2, :cond_124

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    if-le v2, v5, :cond_1b6

    :cond_124
    move v2, v1

    :goto_125
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    const-string v3, "MaxEmailAgeFilter"

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    if-ltz v2, :cond_136

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    if-le v2, v5, :cond_1ba

    :cond_136
    move v2, v1

    :goto_137
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    const-string v3, "MaxEmailBodyTruncationSize"

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    if-gez v2, :cond_1be

    move v2, v1

    :goto_145
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    const-string v2, "MaxEmailHtmlBodyTruncationSize"

    iget v3, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    if-gez v3, :cond_1c1

    :goto_152
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    const-string v1, "RequireSignedSMIMEMessages"

    iget-boolean v2, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    const-string v1, "RequireEncryptedSMIMEMessages"

    iget-boolean v2, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    const-string v1, "RequireSignedSMIMEAlgorithm"

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    const-string v1, "RequireEncryptionSMIMEAlgorithm"

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    const-string v1, "AllowSMIMEEncryptionAlgorithmNegotiation"

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    const-string v1, "AllowSMIMESoftCerts"

    iget-boolean v2, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    const-string v1, "AllowDesktopSync"

    iget-boolean v2, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowDesktopSync:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    const-string v1, "AllowIrDA"

    iget-boolean v2, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowIrDA:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    return-void

    .line 801
    :cond_1b2
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    goto/16 :goto_113

    .line 805
    :cond_1b6
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    goto/16 :goto_125

    .line 808
    :cond_1ba
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    goto/16 :goto_137

    .line 810
    :cond_1be
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    goto :goto_145

    .line 812
    :cond_1c1
    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    goto :goto_152
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 831
    const/4 v0, 0x0

    return v0
.end method

.method public getDPManagerPasswordExpirationTimeout()J
    .registers 7

    .prologue
    .line 573
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    int-to-long v2, v2

    const-wide/32 v4, 0x5265c00

    mul-long v0, v2, v4

    .line 580
    .local v0, result:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_12

    .line 581
    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    .line 583
    :cond_12
    return-wide v0
.end method

.method public getDPManagerPasswordQuality()I
    .registers 2

    .prologue
    .line 551
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    sparse-switch v0, :sswitch_data_10

    .line 564
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 553
    :sswitch_7
    const/high16 v0, 0x1

    goto :goto_6

    .line 555
    :sswitch_a
    const/high16 v0, 0x5

    goto :goto_6

    .line 562
    :sswitch_d
    const/high16 v0, 0x6

    goto :goto_6

    .line 551
    :sswitch_data_10
    .sparse-switch
        0x20 -> :sswitch_7
        0x40 -> :sswitch_a
        0x60 -> :sswitch_d
    .end sparse-switch
.end method

.method public getMaxPasswordFailsForTest()I
    .registers 2

    .prologue
    .line 258
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    return v0
.end method

.method public getMaxScreenLockTimeForTest()I
    .registers 2

    .prologue
    .line 262
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    return v0
.end method

.method public getMinPasswordLengthForTest()I
    .registers 2

    .prologue
    .line 250
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    return v0
.end method

.method public getPasswordModeForTest()I
    .registers 2

    .prologue
    .line 254
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    return v0
.end method

.method public getSecurityCode()J
    .registers 6

    .prologue
    .line 946
    const-wide/16 v0, 0x0

    .line 947
    .local v0, flags:J
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    int-to-long v2, v2

    const/4 v4, 0x0

    shl-long v0, v2, v4

    .line 948
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 949
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    int-to-long v2, v2

    const/16 v4, 0x9

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 950
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    int-to-long v2, v2

    const/16 v4, 0xe

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 951
    iget-boolean v2, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    if-eqz v2, :cond_22

    .line 952
    const-wide/32 v2, 0x2000000

    or-long/2addr v0, v2

    .line 953
    :cond_22
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    int-to-long v2, v2

    const/16 v4, 0x24

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 954
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    int-to-long v2, v2

    const/16 v4, 0x1a

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 955
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    int-to-long v2, v2

    const/16 v4, 0x2c

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 956
    iget-boolean v2, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    if-eqz v2, :cond_3e

    .line 957
    const-wide/high16 v2, 0x2

    or-long/2addr v0, v2

    .line 958
    :cond_3e
    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 941
    invoke-virtual {p0}, Lcom/android/emailcommon/service/PolicySet;->getSecurityCode()J

    move-result-wide v0

    .line 942
    .local v0, code:J
    long-to-int v2, v0

    return v2
.end method

.method public isRequireEncryptionForTest()Z
    .registers 2

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    return v0
.end method

.method public isRequireRemoteWipeForTest()Z
    .registers 2

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    return v0
.end method

.method public removePolicyRules(Landroid/content/Context;J)V
    .registers 10
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 757
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "account_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 761
    return-void
.end method

.method public storePolicyRules(Landroid/content/Context;J)V
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 726
    const-class v2, Lcom/android/emailcommon/service/PolicySet;

    monitor-enter v2

    .line 727
    :try_start_3
    const-string v0, "SecurityPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storePolicyRules() - accountId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 730
    invoke-direct {p0, v0}, Lcom/android/emailcommon/service/PolicySet;->populateHash(Ljava/util/HashMap;)V

    .line 732
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 734
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/emailcommon/service/PolicySet;->removePolicyRules(Landroid/content/Context;J)V

    .line 735
    const-string v1, "SecurityPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " storePolicyRules: removed policies for accountId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4a
    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 737
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 738
    new-instance v5, Lcom/android/emailcommon/provider/EmailContent$Policies;

    invoke-direct {v5}, Lcom/android/emailcommon/provider/EmailContent$Policies;-><init>()V

    .line 739
    iput-wide p2, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mAccountId:J

    .line 740
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 741
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 742
    sget-boolean v1, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v1, :cond_9f

    .line 743
    const-string v1, "SecurityPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "policy Name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", policyValue:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_9f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 747
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Lcom/android/emailcommon/provider/EmailContent$Policies;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_4a

    .line 750
    :catchall_b7
    move-exception v0

    monitor-exit v2
    :try_end_b9
    .catchall {:try_start_3 .. :try_end_b9} :catchall_b7

    throw v0

    :cond_ba
    :try_start_ba
    monitor-exit v2
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b7

    .line 751
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ pw-len-min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pw-mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pw-fails-max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenlock-max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remote-wipe-req="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pw-expiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pw-history="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pw-complex-chars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recoveryEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", require-encryption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", require-SD-encryption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mDeviceEncryptionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attachmentsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAttachmentsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxAttachmentsSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxAttachmentSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowHTML="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requireManualSyncWhenRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxCalendarAgeFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxEmailAgeFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxEmailBodyTruncationSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxEmailHtmlBodyTruncationSize= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requireSignMessage= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requireEncryptMessage= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowEncryptionNegotiation= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signAlgorithm= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encryptAlgorithm= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowCamera= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowCamera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowSDcard= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowStorageCard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowWiFi= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowSMS= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowTextMessaging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowPopImap= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowPOPIMAPEmail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowIrDA= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowIrDA:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowBrowser= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBrowser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowInternetSharing= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowInternetSharing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowBT= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowKIES= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowDesktopSync:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowSMIMEsoftCert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeAccount(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;ZLandroid/content/Context;)Z
    .registers 19
    .parameter "account"
    .parameter "syncKey"
    .parameter "update"
    .parameter "context"

    .prologue
    .line 601
    new-instance v7, Lcom/android/emailcommon/service/PolicySet;

    move-object/from16 v0, p4

    invoke-direct {v7, v0, p1}, Lcom/android/emailcommon/service/PolicySet;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 602
    .local v7, oldPolicy:Lcom/android/emailcommon/service/PolicySet;
    invoke-virtual {p0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16a

    const/4 v4, 0x1

    .line 607
    .local v4, dirty:Z
    :goto_e
    move-object/from16 v0, p2

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 608
    if-eqz p3, :cond_169

    .line 613
    const/4 v1, 0x0

    .line 614
    .local v1, changedValues:Z
    sget v11, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-static {v11}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parse(I)Lcom/android/emailcommon/EasRefs$EmailDataSize;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->toEas12Value()I

    move-result v2

    .line 622
    .local v2, currentSize:I
    iget v8, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    .line 623
    .local v8, plainTextSize:I
    const-string v11, "SecurityPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "plainTextSize = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget v11, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    div-int/lit16 v5, v11, 0x400

    .line 630
    .local v5, htmlSize:I
    const-string v11, "SecurityPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "htmlSize = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-boolean v6, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    .line 632
    .local v6, isHtmlAllowed:Z
    const-string v11, "SecurityPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isHtmlAllowed = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    if-eqz v6, :cond_16d

    if-lez v5, :cond_16d

    .line 634
    move v9, v5

    .line 642
    .local v9, restrictedSize:I
    :goto_74
    if-lez v9, :cond_170

    .line 643
    mul-int/lit16 v9, v9, 0x400

    .line 647
    :goto_78
    if-ge v9, v2, :cond_ad

    .line 648
    const-string v11, "SecurityPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exchange IT Policy has restricted SyncSize, CurrentSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Bytes, restrictedSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Bytes"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    sget v11, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    if-lez v11, :cond_ac

    .line 651
    invoke-static {v9}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parseToByte(I)B

    move-result v11

    sput v11, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    .line 653
    :cond_ac
    const/4 v1, 0x1

    .line 656
    :cond_ad
    const/4 v10, 0x6

    .line 657
    .local v10, restrictedWindow:I
    iget v10, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    .line 658
    if-gtz v10, :cond_b3

    .line 659
    const/4 v10, 0x6

    .line 661
    :cond_b3
    iget v11, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    if-ge v10, v11, :cond_de

    .line 662
    const-string v11, "AccountSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exchange IT Policy has restricted SyncLookback, current:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", restricted="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iput v10, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    .line 665
    const/4 v1, 0x1

    .line 669
    :cond_de
    iget v10, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    .line 670
    if-lez v10, :cond_111

    iget v11, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    if-eqz v11, :cond_ea

    iget v11, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    if-ge v10, v11, :cond_111

    .line 672
    :cond_ea
    const-string v11, "AccountSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exchange IT Policy has restricted CalendarSyncLookback, current:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", restricted="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iput v10, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 677
    const/4 v1, 0x1

    .line 681
    :cond_111
    iget-boolean v11, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    if-eqz v11, :cond_11d

    .line 682
    iget v11, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    const v12, 0x8000

    or-int/2addr v11, v12

    iput v11, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 686
    :cond_11d
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->isSaved()Z

    move-result v11

    if-eqz v11, :cond_175

    .line 687
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 690
    .local v3, cv:Landroid/content/ContentValues;
    const-string v11, "securitySyncKey"

    iget-object v12, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    if-eqz v1, :cond_15d

    .line 697
    const-string v11, "isDefault"

    iget-boolean v12, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 698
    const-string v11, "emailsize"

    sget v12, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 699
    const-string v11, "syncLookback"

    iget v12, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 701
    const-string v11, "calendarSyncLookback"

    iget v12, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 705
    :cond_15d
    move-object/from16 v0, p4

    invoke-virtual {p1, v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 713
    .end local v3           #cv:Landroid/content/ContentValues;
    :goto_162
    iget-wide v11, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v11, v12}, Lcom/android/emailcommon/service/PolicySet;->storePolicyRules(Landroid/content/Context;J)V

    .line 716
    .end local v1           #changedValues:Z
    .end local v2           #currentSize:I
    .end local v5           #htmlSize:I
    .end local v6           #isHtmlAllowed:Z
    .end local v8           #plainTextSize:I
    .end local v9           #restrictedSize:I
    .end local v10           #restrictedWindow:I
    :cond_169
    return v4

    .line 602
    .end local v4           #dirty:Z
    :cond_16a
    const/4 v4, 0x0

    goto/16 :goto_e

    .line 638
    .restart local v1       #changedValues:Z
    .restart local v2       #currentSize:I
    .restart local v4       #dirty:Z
    .restart local v5       #htmlSize:I
    .restart local v6       #isHtmlAllowed:Z
    .restart local v8       #plainTextSize:I
    :cond_16d
    move v9, v8

    .restart local v9       #restrictedSize:I
    goto/16 :goto_74

    .line 646
    :cond_170
    const v9, 0x7fffffff

    goto/16 :goto_78

    .line 707
    .restart local v10       #restrictedWindow:I
    :cond_175
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_162
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 851
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 855
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    if-eqz v0, :cond_f2

    move v0, v1

    :goto_1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 857
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 858
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    if-eqz v0, :cond_f5

    move v0, v1

    :goto_32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    if-eqz v0, :cond_f8

    move v0, v1

    :goto_3a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mDeviceEncryptionEnabled:Z

    if-eqz v0, :cond_fb

    move v0, v1

    :goto_42
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 862
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mSimplePasswordEnabled:Z

    if-eqz v0, :cond_fe

    move v0, v1

    :goto_4a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 865
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAttachmentsEnabled:Z

    if-eqz v0, :cond_101

    move v0, v1

    :goto_52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 866
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxAttachmentSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 868
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 869
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    if-eqz v0, :cond_104

    move v0, v1

    :goto_69
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 870
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 871
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 872
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    if-eqz v0, :cond_107

    move v0, v1

    :goto_7b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 873
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    if-eqz v0, :cond_10a

    move v0, v1

    :goto_83
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 874
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    if-eqz v0, :cond_10d

    move v0, v1

    :goto_8b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 876
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 877
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 880
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowStorageCard:Z

    if-eqz v0, :cond_110

    move v0, v1

    :goto_a2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowCamera:Z

    if-eqz v0, :cond_112

    move v0, v1

    :goto_aa
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 882
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowWifi:Z

    if-eqz v0, :cond_114

    move v0, v1

    :goto_b2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 883
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowTextMessaging:Z

    if-eqz v0, :cond_116

    move v0, v1

    :goto_ba
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 884
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowPOPIMAPEmail:Z

    if-eqz v0, :cond_118

    move v0, v1

    :goto_c2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBrowser:Z

    if-eqz v0, :cond_11a

    move v0, v1

    :goto_ca
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 886
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowInternetSharing:Z

    if-eqz v0, :cond_11c

    move v0, v1

    :goto_d2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    if-eqz v0, :cond_11e

    move v0, v1

    :goto_da
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 888
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowDesktopSync:Z

    if-eqz v0, :cond_120

    move v0, v1

    :goto_e2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowIrDA:Z

    if-eqz v0, :cond_122

    :goto_e9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    return-void

    :cond_f2
    move v0, v2

    .line 855
    goto/16 :goto_1b

    :cond_f5
    move v0, v2

    .line 859
    goto/16 :goto_32

    :cond_f8
    move v0, v2

    .line 860
    goto/16 :goto_3a

    :cond_fb
    move v0, v2

    .line 861
    goto/16 :goto_42

    :cond_fe
    move v0, v2

    .line 862
    goto/16 :goto_4a

    :cond_101
    move v0, v2

    .line 865
    goto/16 :goto_52

    :cond_104
    move v0, v2

    .line 869
    goto/16 :goto_69

    :cond_107
    move v0, v2

    .line 872
    goto/16 :goto_7b

    :cond_10a
    move v0, v2

    .line 873
    goto/16 :goto_83

    :cond_10d
    move v0, v2

    .line 874
    goto/16 :goto_8b

    :cond_110
    move v0, v2

    .line 880
    goto :goto_a2

    :cond_112
    move v0, v2

    .line 881
    goto :goto_aa

    :cond_114
    move v0, v2

    .line 882
    goto :goto_b2

    :cond_116
    move v0, v2

    .line 883
    goto :goto_ba

    :cond_118
    move v0, v2

    .line 884
    goto :goto_c2

    :cond_11a
    move v0, v2

    .line 885
    goto :goto_ca

    :cond_11c
    move v0, v2

    .line 886
    goto :goto_d2

    :cond_11e
    move v0, v2

    .line 887
    goto :goto_da

    :cond_120
    move v0, v2

    .line 888
    goto :goto_e2

    :cond_122
    move v1, v2

    .line 889
    goto :goto_e9
.end method

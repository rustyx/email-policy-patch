.class public Lcom/android/email/SecurityPolicy;
.super Ljava/lang/Object;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/SecurityPolicy$PolicyAdmin;,
        Lcom/android/email/SecurityPolicy$PolicySet;
    }
.end annotation


# static fields
.field private static final ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

.field static final NO_POLICY_SET:Lcom/android/email/SecurityPolicy$PolicySet;

.field public static final PASSWORD_POLICIES:[Ljava/lang/String;

.field private static sInstance:Lcom/android/email/SecurityPolicy;


# instance fields
.field private mAdminName:Landroid/content/ComponentName;

.field private mAggregatePolicy:Lcom/android/email/SecurityPolicy$PolicySet;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 36

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    .line 173
    new-instance v0, Lcom/android/email/SecurityPolicy$PolicySet;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, -0x1

    const/16 v29, -0x1

    const/16 v30, -0x1

    const/16 v31, 0x1

    const/16 v32, 0x1

    const/16 v33, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v0 .. v35}, Lcom/android/email/SecurityPolicy$PolicySet;-><init>(IIIIZZIIZIZZZZZZZZZIIIIIIZZIIIZZZZZ)V

    sput-object v0, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/email/SecurityPolicy$PolicySet;

    .line 239
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PasswordMode"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PasswordRecoveryEnabled"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MaxDevicePasswordFailedAttempts"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "DevicePasswordExpiration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "DevicePasswordHistory"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "MinDevicePasswordLength"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MinPasswordComplexCharacters"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/SecurityPolicy;->PASSWORD_POLICIES:[Ljava/lang/String;

    .line 271
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "securityFlags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/SecurityPolicy;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 312
    iput-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 313
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/email/SecurityPolicy$PolicyAdmin;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    .line 314
    iput-object v2, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/email/SecurityPolicy$PolicySet;

    .line 317
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 319
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->setAdminPermissions(Landroid/content/ComponentName;)V

    .line 321
    :cond_24
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 337
    sget-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    sget-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    goto :goto_5
.end method

.method private declared-synchronized getDPM()Landroid/app/admin/DevicePolicyManager;
    .registers 3

    .prologue
    .line 630
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_11

    .line 631
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 633
    :cond_11
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    .line 630
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;
    .registers 3
    .parameter "context"

    .prologue
    .line 301
    const-class v0, Lcom/android/email/SecurityPolicy;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    if-nez v1, :cond_e

    .line 302
    new-instance v1, Lcom/android/email/SecurityPolicy;

    invoke-direct {v1, p0}, Lcom/android/email/SecurityPolicy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    .line 304
    :cond_e
    sget-object v1, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 301
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public IsAllowHTMLEmailSetted()Z
    .registers 3

    .prologue
    .line 1113
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 1115
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowHTMLEmail(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1116
    const/4 v1, 0x1

    .line 1119
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public IsAllowPOPIMAPEmailSetted()Z
    .registers 3

    .prologue
    .line 1087
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 1089
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1090
    const/4 v1, 0x1

    .line 1094
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public checkDeviceEnryptionOnPasswordChanged(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 2279
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/exchange/security/ode/ODEService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2280
    const-string v1, "startProc"

    const-string v2, "onPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2281
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2282
    return-void
.end method

.method public clearAccountHoldFlags()V
    .registers 13

    .prologue
    const/4 v3, 0x0

    .line 1289
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1291
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/SecurityPolicy;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1296
    .local v8, c:Landroid/database/Cursor;
    :cond_11
    :goto_11
    :try_start_11
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1298
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1299
    .local v6, accountId:J
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v7}, Lcom/android/email/provider/EmailContent$Policies;->getNumberOfPoliciesForAccount(Landroid/content/Context;J)I

    move-result v1

    if-lez v1, :cond_11

    .line 1300
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1301
    .local v10, flags:I
    and-int/lit8 v1, v10, 0x20

    if-eqz v1, :cond_11

    .line 1302
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1303
    .local v9, cv:Landroid/content/ContentValues;
    const-string v1, "flags"

    and-int/lit8 v2, v10, -0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1304
    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 1305
    .local v11, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v9, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_11 .. :try_end_48} :catchall_49

    goto :goto_11

    .line 1311
    .end local v6           #accountId:J
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v10           #flags:I
    .end local v11           #uri:Landroid/net/Uri;
    :catchall_49
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_4e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1313
    return-void
.end method

.method public clearNotification(J)V
    .registers 6
    .parameter "accountId"

    .prologue
    .line 1367
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1369
    .local v0, notificationManager:Landroid/app/NotificationManager;
    sget v1, Lcom/android/email/service/MailService;->NOTIFICATION_ID_SECURITY_NEEDED:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1370
    return-void
.end method

.method computeAggregatePolicy()Lcom/android/email/SecurityPolicy$PolicySet;
    .registers 44

    .prologue
    .line 375
    const/16 v41, 0x0

    .line 376
    .local v41, policiesFound:Z
    const/high16 v3, -0x8000

    .line 377
    .local v3, minPasswordLength:I
    const/high16 v4, -0x8000

    .line 378
    .local v4, passwordMode:I
    const v5, 0x7fffffff

    .line 379
    .local v5, maxPasswordFails:I
    const v6, 0x7fffffff

    .line 380
    .local v6, maxScreenLockTime:I
    const/4 v7, 0x0

    .line 382
    .local v7, requireRemoteWipe:Z
    const/4 v8, 0x0

    .line 383
    .local v8, passwordRecoverable:Z
    const/4 v9, 0x0

    .line 384
    .local v9, passwordExpires:I
    const/4 v10, 0x0

    .line 385
    .local v10, passwordHistory:I
    const/4 v11, 0x1

    .line 386
    .local v11, attachmentsEnabled:Z
    const v12, 0x7fffffff

    .line 388
    .local v12, maxAttachmentSize:I
    const/4 v13, 0x1

    .line 389
    .local v13, allowStorageCard:Z
    const/4 v14, 0x1

    .line 390
    .local v14, allowCamera:Z
    const/4 v15, 0x1

    .line 391
    .local v15, allowWifi:Z
    const/16 v16, 0x1

    .line 392
    .local v16, allowTextMessaging:Z
    const/16 v17, 0x1

    .line 393
    .local v17, allowPOPIMAPEmail:Z
    const/16 v18, 0x1

    .line 394
    .local v18, allowHTMLEmail:Z
    const/16 v19, 0x1

    .line 395
    .local v19, allowBrowser:Z
    const/16 v20, 0x1

    .line 396
    .local v20, allowInternetSharing:Z
    const/16 v21, 0x0

    .line 397
    .local v21, requireManualSyncWhenRoaming:Z
    const/16 v22, 0x2

    .line 399
    .local v22, allowBluetoothMode:I
    const/16 v23, 0x0

    .line 400
    .local v23, minPasswordComplexChars:I
    const/16 v24, 0x0

    .line 401
    .local v24, maxCalendarAgeFilter:I
    const/16 v25, 0x0

    .line 402
    .local v25, maxEmailAgeFilter:I
    const v26, 0x7fffffff

    .line 406
    .local v26, maxEmailBodyTruncationSize:I
    const v27, 0x7fffffff

    .line 411
    .local v27, maxEmailHtmlBodyTruncationSize:I
    const/16 v28, 0x0

    .line 412
    .local v28, requireSignedSMIMEMessages:Z
    const/16 v29, 0x0

    .line 413
    .local v29, requireEncryptedSMIMEMessages:Z
    const/16 v30, -0x1

    .line 414
    .local v30, requireSignedSMIMEAlgorithm:I
    const/16 v31, -0x1

    .line 415
    .local v31, requireEncryptionSMIMEAlgorithm:I
    const/16 v32, -0x1

    .line 416
    .local v32, allowSMIMEEncryptionAlgorithmNegotiation:I
    const/16 v33, 0x1

    .line 417
    .local v33, allowSMIMESoftCerts:Z
    const/16 v34, 0x1

    .line 418
    .local v34, allowDesktopSync:Z
    const/16 v35, 0x1

    .line 419
    .local v35, allowIrDA:Z
    const/16 v36, 0x0

    .line 420
    .local v36, requireDeviceEncryption:Z
    const/16 v37, 0x0

    .line 422
    .local v37, requireStorageCardEncryption:Z
    new-instance v40, Lcom/android/exchange/PoliciesMultiplexer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object v2, v0

    move-object/from16 v0, v40

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/android/exchange/PoliciesMultiplexer;-><init>(Landroid/content/Context;)V

    .line 423
    .local v40, pm:Lcom/android/exchange/PoliciesMultiplexer;
    invoke-virtual/range {v40 .. v40}, Lcom/android/exchange/PoliciesMultiplexer;->computeAggregatePolicy()Ljava/util/HashMap;

    move-result-object v42

    .line 425
    .local v42, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v42, :cond_22b

    invoke-virtual/range {v42 .. v42}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22b

    .line 426
    const/16 v41, 0x1

    .line 428
    const/16 v39, 0x0

    .line 429
    .local v39, intValue:Ljava/lang/Integer;
    const/16 v38, 0x0

    .line 431
    .local v38, boolValue:Ljava/lang/Boolean;
    const-string v2, "PasswordMode"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_299

    .line 433
    :goto_71
    const-string v2, "MinDevicePasswordLength"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_2a0

    .line 436
    :goto_7e
    const-string v2, "MaxDevicePasswordFailedAttempts"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_2a7

    .line 439
    :goto_8b
    const-string v2, "MaxInactivityTime"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_2ae

    .line 442
    :goto_98
    const-string v2, "RemoteWipe"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_2b5

    .line 445
    :goto_a5
    const-string v2, "PasswordRecoveryEnabled"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_2bc

    .line 448
    :goto_b2
    const-string v2, "DevicePasswordExpiration"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_2c3

    .line 451
    :goto_bf
    const-string v2, "DevicePasswordHistory"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_2ca

    .line 454
    :goto_cc
    const-string v2, "AttachmentsEnabled"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_2d1

    .line 457
    :goto_d9
    const-string v2, "MaxAttachmentSize"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_2d8

    .line 461
    :goto_e6
    const-string v2, "AllowStorageCard"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_2df

    .line 464
    :goto_f3
    const-string v2, "AllowCamera"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_2e6

    .line 466
    :goto_100
    const-string v2, "AllowWifi"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_2ed

    .line 468
    :goto_10d
    const-string v2, "AllowTextMessaging"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_2f4

    .line 471
    :goto_11a
    const-string v2, "AllowPOPIMAPEmail"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_2fc

    .line 474
    :goto_127
    const-string v2, "AllowHTMLEmail"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_304

    .line 477
    :goto_134
    const-string v2, "AllowBrowser"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_30c

    .line 479
    :goto_141
    const-string v2, "AllowInternetSharing"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_314

    .line 482
    :goto_14e
    const-string v2, "RequireManualSyncWhenRoaming"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_31c

    .line 485
    :goto_15b
    const-string v2, "AllowBluetoothMode"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_324

    .line 488
    :goto_168
    const-string v2, "MinPasswordComplexCharacters"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_32c

    .line 491
    :goto_175
    const-string v2, "MaxCalendarAgeFilter"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_334

    .line 494
    :goto_182
    const-string v2, "MaxEmailAgeFilter"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_33c

    .line 497
    :goto_18f
    const-string v2, "MaxEmailBodyTruncationSize"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_344

    .line 500
    :goto_19c
    const-string v2, "MaxEmailHtmlBodyTruncationSize"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_34c

    .line 503
    :goto_1a9
    const-string v2, "RequireSignedSMIMEMessages"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_354

    .line 506
    :goto_1b6
    const-string v2, "RequireEncryptedSMIMEMessages"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_35c

    .line 510
    :goto_1c3
    const-string v2, "RequireSignedSMIMEAlgorithm"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_364

    .line 513
    :goto_1d0
    const-string v2, "RequireEncryptionSMIMEAlgorithm"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_36c

    .line 516
    :goto_1dd
    const-string v2, "AllowSMIMEEncryptionAlgorithmNegotiation"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_374

    .line 520
    :goto_1ea
    const-string v2, "AllowSMIMESoftCerts"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_37c

    .line 523
    :goto_1f7
    const-string v2, "AllowDesktopSync"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_384

    .line 526
    :goto_204
    const-string v2, "AllowIrDA"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_38c

    .line 528
    :goto_211
    const-string v2, "RequireDeviceEncryption"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_394

    .line 531
    :goto_21e
    const-string v2, "RequireStorageCardEncryption"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_39c

    .line 564
    .end local v38           #boolValue:Ljava/lang/Boolean;
    .end local v39           #intValue:Ljava/lang/Integer;
    :cond_22b
    :goto_22b
    if-eqz v41, :cond_3a4

    .line 567
    const/high16 v2, -0x8000

    if-ne v3, v2, :cond_232

    .line 568
    const/4 v3, 0x0

    .line 569
    :cond_232
    const/high16 v2, -0x8000

    if-ne v4, v2, :cond_237

    .line 570
    const/4 v4, 0x0

    .line 571
    :cond_237
    const v2, 0x7fffffff

    if-ne v5, v2, :cond_23d

    .line 572
    const/4 v5, 0x0

    .line 573
    :cond_23d
    const v2, 0x7fffffff

    if-ne v6, v2, :cond_243

    .line 574
    const/4 v6, 0x0

    .line 576
    :cond_243
    const v2, 0x7fffffff

    if-ne v12, v2, :cond_249

    .line 577
    const/4 v12, 0x0

    .line 578
    :cond_249
    const v2, 0x7fffffff

    if-eq v9, v2, :cond_252

    const/high16 v2, -0x8000

    if-ne v9, v2, :cond_253

    .line 579
    :cond_252
    const/4 v9, 0x0

    .line 580
    :cond_253
    const v2, 0x7fffffff

    if-eq v10, v2, :cond_25c

    const/high16 v2, -0x8000

    if-ne v10, v2, :cond_25d

    .line 581
    :cond_25c
    const/4 v10, 0x0

    .line 583
    :cond_25d
    const v2, 0x7fffffff

    move/from16 v0, v26

    move v1, v2

    if-eq v0, v1, :cond_267

    if-gez v26, :cond_269

    .line 584
    :cond_267
    const/16 v26, 0x0

    .line 585
    :cond_269
    const v2, 0x7fffffff

    move/from16 v0, v27

    move v1, v2

    if-eq v0, v1, :cond_273

    if-gez v27, :cond_275

    .line 587
    :cond_273
    const/16 v27, 0x0

    .line 589
    :cond_275
    const v2, 0x7fffffff

    move/from16 v0, v30

    move v1, v2

    if-ne v0, v1, :cond_27f

    .line 590
    const/16 v30, -0x1

    .line 591
    :cond_27f
    const v2, 0x7fffffff

    move/from16 v0, v31

    move v1, v2

    if-ne v0, v1, :cond_289

    .line 592
    const/16 v31, -0x1

    .line 593
    :cond_289
    const v2, 0x7fffffff

    move/from16 v0, v32

    move v1, v2

    if-ne v0, v1, :cond_293

    .line 594
    const/16 v32, -0x1

    .line 597
    :cond_293
    new-instance v2, Lcom/android/email/SecurityPolicy$PolicySet;

    invoke-direct/range {v2 .. v37}, Lcom/android/email/SecurityPolicy$PolicySet;-><init>(IIIIZZIIZIZZZZZZZZZIIIIIIZZIIIZZZZZ)V

    .line 611
    :goto_298
    return-object v2

    .line 431
    .restart local v38       #boolValue:Ljava/lang/Boolean;
    .restart local v39       #intValue:Ljava/lang/Integer;
    :cond_299
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v4, v2

    goto/16 :goto_71

    .line 433
    :cond_2a0
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v3, v2

    goto/16 :goto_7e

    .line 436
    :cond_2a7
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v5, v2

    goto/16 :goto_8b

    .line 439
    :cond_2ae
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v6, v2

    goto/16 :goto_98

    .line 442
    :cond_2b5
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v7, v2

    goto/16 :goto_a5

    .line 445
    :cond_2bc
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v8, v2

    goto/16 :goto_b2

    .line 448
    :cond_2c3
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v9, v2

    goto/16 :goto_bf

    .line 451
    :cond_2ca
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v10, v2

    goto/16 :goto_cc

    .line 454
    :cond_2d1
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v11, v2

    goto/16 :goto_d9

    .line 457
    :cond_2d8
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v12, v2

    goto/16 :goto_e6

    .line 461
    :cond_2df
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v13, v2

    goto/16 :goto_f3

    .line 464
    :cond_2e6
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v14, v2

    goto/16 :goto_100

    .line 466
    :cond_2ed
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v15, v2

    goto/16 :goto_10d

    .line 468
    :cond_2f4
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v16, v2

    goto/16 :goto_11a

    .line 471
    :cond_2fc
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v17, v2

    goto/16 :goto_127

    .line 474
    :cond_304
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v18, v2

    goto/16 :goto_134

    .line 477
    :cond_30c
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v19, v2

    goto/16 :goto_141

    .line 479
    :cond_314
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v20, v2

    goto/16 :goto_14e

    .line 482
    :cond_31c
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v21, v2

    goto/16 :goto_15b

    .line 485
    :cond_324
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v22, v2

    goto/16 :goto_168

    .line 488
    :cond_32c
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v23, v2

    goto/16 :goto_175

    .line 491
    :cond_334
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v24, v2

    goto/16 :goto_182

    .line 494
    :cond_33c
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v25, v2

    goto/16 :goto_18f

    .line 497
    :cond_344
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v26, v2

    goto/16 :goto_19c

    .line 500
    :cond_34c
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v27, v2

    goto/16 :goto_1a9

    .line 503
    :cond_354
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v28, v2

    goto/16 :goto_1b6

    .line 506
    :cond_35c
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v29, v2

    goto/16 :goto_1c3

    .line 510
    :cond_364
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v30, v2

    goto/16 :goto_1d0

    .line 513
    :cond_36c
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v31, v2

    goto/16 :goto_1dd

    .line 516
    :cond_374
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v32, v2

    goto/16 :goto_1ea

    .line 520
    :cond_37c
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v33, v2

    goto/16 :goto_1f7

    .line 523
    :cond_384
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v34, v2

    goto/16 :goto_204

    .line 526
    :cond_38c
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v35, v2

    goto/16 :goto_211

    .line 528
    :cond_394
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v36, v2

    goto/16 :goto_21e

    .line 531
    :cond_39c
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v37, v2

    goto/16 :goto_22b

    .line 611
    .end local v38           #boolValue:Ljava/lang/Boolean;
    .end local v39           #intValue:Ljava/lang/Integer;
    :cond_3a4
    sget-object v2, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/email/SecurityPolicy$PolicySet;

    goto/16 :goto_298
.end method

.method public getAdminComponent()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public declared-synchronized getAggregatePolicy()Lcom/android/email/SecurityPolicy$PolicySet;
    .registers 2

    .prologue
    .line 619
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/email/SecurityPolicy$PolicySet;

    if-nez v0, :cond_b

    .line 620
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->computeAggregatePolicy()Lcom/android/email/SecurityPolicy$PolicySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/email/SecurityPolicy$PolicySet;

    .line 622
    :cond_b
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/email/SecurityPolicy$PolicySet;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 619
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isActive(Lcom/android/email/SecurityPolicy$PolicySet;)Z
    .registers 14
    .parameter "policies"

    .prologue
    const/4 v7, 0x0

    const-string v11, "Email"

    const-string v10, ", value:"

    const-string v9, ", return false"

    const-string v8, " is stronger than device value:"

    .line 717
    if-nez p1, :cond_f

    .line 718
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/email/SecurityPolicy$PolicySet;

    move-result-object p1

    .line 721
    :cond_f
    sget-object v3, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/email/SecurityPolicy$PolicySet;

    invoke-virtual {p1, v3}, Lcom/android/email/SecurityPolicy$PolicySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 722
    const/4 v3, 0x1

    .line 1081
    :goto_18
    return v3

    .line 724
    :cond_19
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 725
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_989

    .line 727
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    if-lez v3, :cond_35

    .line 728
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v3

    iget v4, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    if-ge v3, v4, :cond_35

    move v3, v7

    .line 729
    goto :goto_18

    .line 732
    :cond_35
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    if-lez v3, :cond_4f

    .line 733
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v3

    invoke-virtual {p1}, Lcom/android/email/SecurityPolicy$PolicySet;->getDPManagerPasswordQuality()I

    move-result v4

    if-ge v3, v4, :cond_47

    move v3, v7

    .line 734
    goto :goto_18

    .line 736
    :cond_47
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v3

    if-nez v3, :cond_4f

    move v3, v7

    .line 737
    goto :goto_18

    .line 740
    :cond_4f
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    if-lez v3, :cond_64

    .line 742
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    iget v5, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_64

    move v3, v7

    .line 743
    goto :goto_18

    .line 751
    :cond_64
    new-instance v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;

    invoke-direct {v1}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;-><init>()V

    .line 752
    .local v1, ps:Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    new-instance v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;

    invoke-direct {v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;-><init>()V

    .line 753
    .local v2, psAnother:Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    const-string v3, "MaxDevicePasswordFailedAttempts"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 754
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 755
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxPasswordFails:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 756
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 757
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_cf

    .line 758
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 760
    goto/16 :goto_18

    .line 763
    :cond_cf
    const-string v3, "DevicePasswordExpiration"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 764
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 765
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordExpires:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 766
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpires(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 767
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_130

    .line 768
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 770
    goto/16 :goto_18

    .line 773
    :cond_130
    const-string v3, "DevicePasswordHistory"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 774
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 775
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordHistory:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 776
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 777
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_191

    .line 778
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 780
    goto/16 :goto_18

    .line 783
    :cond_191
    const-string v3, "AttachmentsEnabled"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 784
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 785
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAttachmentsEnabled:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 786
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAttachmentsEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 787
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_1f2

    .line 788
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 790
    goto/16 :goto_18

    .line 793
    :cond_1f2
    const-string v3, "MaxAttachmentSize"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 794
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 795
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxAttachmentSize:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 796
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaxAttachmentSize(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 797
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_253

    .line 798
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 800
    goto/16 :goto_18

    .line 803
    :cond_253
    const-string v3, "PasswordRecoveryEnabled"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 804
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 805
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordRecoverable:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 806
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 807
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_2b4

    .line 808
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 810
    goto/16 :goto_18

    .line 815
    :cond_2b4
    const-string v3, "AllowStorageCard"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 816
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 817
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowStorageCard:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 818
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowStorageCard(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 819
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_315

    .line 820
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 822
    goto/16 :goto_18

    .line 825
    :cond_315
    const-string v3, "AllowCamera"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 826
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 827
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowCamera:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 828
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 829
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_376

    .line 830
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 832
    goto/16 :goto_18

    .line 835
    :cond_376
    const-string v3, "AllowWifi"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 836
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 837
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowWifi:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 838
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 839
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_3d7

    .line 840
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 842
    goto/16 :goto_18

    .line 845
    :cond_3d7
    const-string v3, "AllowTextMessaging"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 846
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 847
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowTextMessaging:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 848
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 849
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_438

    .line 850
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 852
    goto/16 :goto_18

    .line 855
    :cond_438
    const-string v3, "AllowPOPIMAPEmail"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 856
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 857
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowPOPIMAPEmail:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 858
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 859
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_499

    .line 860
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 862
    goto/16 :goto_18

    .line 865
    :cond_499
    const-string v3, "AllowHTMLEmail"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 866
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 867
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowHTMLEmail:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 868
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowHTMLEmail(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 869
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_4fa

    .line 870
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 872
    goto/16 :goto_18

    .line 875
    :cond_4fa
    const-string v3, "AllowBrowser"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 876
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 877
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBrowser:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 878
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowBrowser(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 879
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_55b

    .line 880
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 882
    goto/16 :goto_18

    .line 885
    :cond_55b
    const-string v3, "AllowInternetSharing"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 886
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 887
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowInternetSharing:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 888
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 889
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_5bc

    .line 890
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 892
    goto/16 :goto_18

    .line 895
    :cond_5bc
    const-string v3, "RequireManualSyncWhenRoaming"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 896
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 897
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireManualSyncWhenRoaming:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 898
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getRequireManualSyncRoaming(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 899
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_61d

    .line 900
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 902
    goto/16 :goto_18

    .line 905
    :cond_61d
    const-string v3, "AllowBluetoothMode"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 906
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 907
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBluetoothMode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 908
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 909
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_67e

    .line 910
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 912
    goto/16 :goto_18

    .line 915
    :cond_67e
    const-string v3, "MinPasswordComplexCharacters"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 916
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 917
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordComplexChars:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 918
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMinPasswordComplexChars(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 919
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_6df

    .line 920
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 922
    goto/16 :goto_18

    .line 925
    :cond_6df
    const-string v3, "MaxCalendarAgeFilter"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 926
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 927
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 928
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaxCalendarAge(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 929
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_740

    .line 930
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 932
    goto/16 :goto_18

    .line 935
    :cond_740
    const-string v3, "MaxEmailAgeFilter"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 936
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 937
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 938
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaxEmailAge(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 939
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_7a1

    .line 940
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 942
    goto/16 :goto_18

    .line 945
    :cond_7a1
    const-string v3, "MaxEmailBodyTruncationSize"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 946
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 947
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 948
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaxEmailBodyTruncSize(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 949
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_802

    .line 950
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 952
    goto/16 :goto_18

    .line 955
    :cond_802
    const-string v3, "MaxEmailHtmlBodyTruncationSize"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 956
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 957
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 958
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 959
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_863

    .line 960
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 962
    goto/16 :goto_18

    .line 966
    :cond_863
    const-string v3, "RequireDeviceEncryption"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 967
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 968
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireDeviceEncryption:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 969
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getRequireDeviceEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 970
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_8c4

    .line 971
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 973
    goto/16 :goto_18

    .line 976
    :cond_8c4
    const-string v3, "RequireStorageCardEncryption"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 977
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 978
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireStorageCardEncryption:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 979
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 980
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_925

    .line 981
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 983
    goto/16 :goto_18

    .line 987
    :cond_925
    const-string v3, "AllowDesktopSync"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 988
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 989
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowDesktopSync:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 990
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowDesktopSync(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 991
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_986

    .line 992
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 994
    goto/16 :goto_18

    .line 1078
    :cond_986
    const/4 v3, 0x1

    goto/16 :goto_18

    .end local v1           #ps:Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    .end local v2           #psAnother:Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    :cond_989
    move v3, v7

    .line 1081
    goto/16 :goto_18
.end method

.method public isActiveAdmin()Z
    .registers 3

    .prologue
    .line 2225
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 2226
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method onAdminEnabled(Z)V
    .registers 10
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 2241
    if-nez p1, :cond_61

    .line 2247
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2248
    const-string v1, "securityFlags"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2249
    const-string v1, "securitySyncKey"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2250
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2251
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/email/SecurityPolicy;->updatePolicies(J)V

    .line 2253
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->setActivePoliciesAtSystemProperties()V

    .line 2260
    :try_start_2a
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_62

    move-result-object v0

    .line 2262
    :try_start_3a
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_5c

    .line 2263
    const-string v1, "SecurityPolicy"

    const-string v2, "Last account removed!! informing DEM to decrypt the device"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/exchange/security/ode/ODEService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2265
    const-string v2, "startProc"

    const-string v3, "encryptionDisable"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2266
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_5c
    .catchall {:try_start_3a .. :try_end_5c} :catchall_6a

    .line 2269
    :cond_5c
    if-eqz v0, :cond_61

    .line 2270
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2275
    :cond_61
    return-void

    .line 2269
    :catchall_62
    move-exception v0

    move-object v1, v6

    :goto_64
    if-eqz v1, :cond_69

    .line 2270
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_69
    throw v0

    .line 2269
    :catchall_6a
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_64
.end method

.method public policiesRequired(J)V
    .registers 27
    .parameter "accountId"

    .prologue
    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v5

    .line 1328
    .local v5, account:Lcom/android/email/provider/EmailContent$Account;
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/email/SecurityPolicy;->setAccountHoldFlag(Lcom/android/email/provider/EmailContent$Account;Z)V

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f07075c

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 1332
    .local v16, tickerText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0705cb

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1333
    .local v8, contentTitle:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    .line 1334
    .local v7, contentText:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getRingtone()Ljava/lang/String;

    move-result-object v15

    .line 1335
    .local v15, ringtoneString:Ljava/lang/String;
    if-nez v15, :cond_118

    const/16 v19, 0x0

    move-object/from16 v14, v19

    .line 1336
    .local v14, ringTone:Landroid/net/Uri;
    :goto_50
    move-object v0, v5

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_120

    const/16 v19, 0x1

    move/from16 v17, v19

    .line 1337
    .local v17, vibrate:Z
    :goto_5d
    move-object v0, v5

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x40

    if-eqz v19, :cond_126

    const/16 v19, 0x1

    move/from16 v18, v19

    .line 1338
    .local v18, vibrateWhenSilent:Z
    :goto_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v9

    .line 1339
    .local v9, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x800

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object v2, v9

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 1341
    .local v13, pending:Landroid/app/PendingIntent;
    new-instance v10, Landroid/app/Notification;

    const v19, 0x7f020229

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object v0, v10

    move/from16 v1, v19

    move-object/from16 v2, v16

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1343
    .local v10, notification:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object v0, v10

    move-object/from16 v1, v19

    move-object v2, v8

    move-object v3, v7

    move-object v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "audio"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 1347
    .local v6, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12c

    const/16 v19, 0x1

    move/from16 v12, v19

    .line 1348
    .local v12, nowSilent:Z
    :goto_cd
    iput-object v14, v10, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1349
    if-nez v17, :cond_d5

    if-eqz v18, :cond_dc

    if-eqz v12, :cond_dc

    .line 1351
    :cond_d5
    const/16 v19, 0xf

    move/from16 v0, v19

    move-object v1, v10

    iput v0, v1, Landroid/app/Notification;->haptic:I

    .line 1353
    :cond_dc
    move-object v0, v10

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object v1, v10

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 1355
    move-object v0, v10

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    move-object v1, v10

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 1356
    move-object v0, v10

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x4

    move/from16 v0, v19

    move-object v1, v10

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "notification"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 1359
    .local v11, notificationManager:Landroid/app/NotificationManager;
    sget v19, Lcom/android/email/service/MailService;->NOTIFICATION_ID_SECURITY_NEEDED:I

    move-object v0, v11

    move/from16 v1, v19

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1360
    return-void

    .line 1335
    .end local v6           #audioManager:Landroid/media/AudioManager;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #notification:Landroid/app/Notification;
    .end local v11           #notificationManager:Landroid/app/NotificationManager;
    .end local v12           #nowSilent:Z
    .end local v13           #pending:Landroid/app/PendingIntent;
    .end local v14           #ringTone:Landroid/net/Uri;
    .end local v17           #vibrate:Z
    .end local v18           #vibrateWhenSilent:Z
    :cond_118
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v14, v19

    goto/16 :goto_50

    .line 1336
    .restart local v14       #ringTone:Landroid/net/Uri;
    :cond_120
    const/16 v19, 0x0

    move/from16 v17, v19

    goto/16 :goto_5d

    .line 1337
    .restart local v17       #vibrate:Z
    :cond_126
    const/16 v19, 0x0

    move/from16 v18, v19

    goto/16 :goto_6a

    .line 1347
    .restart local v6       #audioManager:Landroid/media/AudioManager;
    .restart local v9       #intent:Landroid/content/Intent;
    .restart local v10       #notification:Landroid/app/Notification;
    .restart local v13       #pending:Landroid/app/PendingIntent;
    .restart local v18       #vibrateWhenSilent:Z
    :cond_12c
    const/16 v19, 0x0

    move/from16 v12, v19

    goto :goto_cd
.end method

.method public reducePolicies()V
    .registers 3

    .prologue
    .line 678
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/email/SecurityPolicy;->updatePolicies(J)V

    .line 679
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->setActivePolicies()V

    .line 680
    return-void
.end method

.method public reducePolicies(Z)V
    .registers 5
    .parameter

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->reducePolicies()V

    .line 691
    if-eqz p1, :cond_26

    .line 692
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 693
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/exchange/security/ode/ODEService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 694
    const-string v1, "startProc"

    const-string v2, "onPolicyChanged"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 698
    :cond_26
    return-void
.end method

.method public remoteWipe()V
    .registers 4

    .prologue
    .line 1377
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 1378
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1379
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    .line 1383
    :goto_10
    return-void

    .line 1381
    :cond_11
    const-string v1, "Email"

    const-string v2, "Could not remote wipe because not device admin."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method sendRecoveryPassword()V
    .registers 3

    .prologue
    .line 1387
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.security.intent.action.PASSWORD_RECOVERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1388
    .local v0, i:Landroid/content/Intent;
    invoke-static {}, Lcom/android/email/SecurityPolicy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1389
    return-void
.end method

.method public setAccountHoldFlag(Lcom/android/email/provider/EmailContent$Account;Z)V
    .registers 6
    .parameter "account"
    .parameter "newState"

    .prologue
    .line 1274
    if-eqz p2, :cond_1e

    .line 1275
    iget v1, p1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    .line 1279
    :goto_8
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1280
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "flags"

    iget v2, p1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1281
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Lcom/android/email/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1282
    return-void

    .line 1277
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_1e
    iget v1, p1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    goto :goto_8
.end method

.method public setActivePolicies()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1162
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 1164
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/email/SecurityPolicy$PolicySet;

    move-result-object v1

    .line 1166
    .local v1, policies:Lcom/android/email/SecurityPolicy$PolicySet;
    sget-object v2, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/email/SecurityPolicy$PolicySet;

    invoke-virtual {v1, v2}, Lcom/android/email/SecurityPolicy$PolicySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {}, Lcom/android/exchange/SyncManager;->exchangeAccountsExist()Z

    move-result v2

    if-nez v2, :cond_22

    .line 1170
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v5}, Landroid/app/admin/DevicePolicyManager;->setAllowCamera(Landroid/content/ComponentName;Z)V

    .line 1173
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 1258
    :goto_21
    return-void

    .line 1174
    :cond_22
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_100

    .line 1177
    :try_start_2a
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->notifyChanges(Landroid/content/ComponentName;Z)V

    .line 1181
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Lcom/android/email/SecurityPolicy$PolicySet;->getDPManagerPasswordQuality()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 1182
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 1184
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 1186
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxPasswordFails:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 1188
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordRecoverable:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordRecoverable(Landroid/content/ComponentName;Z)V

    .line 1189
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordExpires:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordExpires(Landroid/content/ComponentName;I)V

    .line 1190
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordHistory:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordHistory(Landroid/content/ComponentName;I)V

    .line 1191
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAttachmentsEnabled:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAttachmentsEnabled(Landroid/content/ComponentName;Z)V

    .line 1192
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxAttachmentSize:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMaxAttachmentSize(Landroid/content/ComponentName;I)V

    .line 1196
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowStorageCard:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowStorageCard(Landroid/content/ComponentName;Z)V

    .line 1197
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowCamera:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowCamera(Landroid/content/ComponentName;Z)V

    .line 1198
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowWifi:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowWifi(Landroid/content/ComponentName;Z)V

    .line 1199
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowTextMessaging:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowTextMessaging(Landroid/content/ComponentName;Z)V

    .line 1200
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowPOPIMAPEmail:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowPOPIMAPEmail(Landroid/content/ComponentName;Z)V

    .line 1201
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowHTMLEmail:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowHTMLEmail(Landroid/content/ComponentName;Z)V

    .line 1202
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBrowser:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowBrowser(Landroid/content/ComponentName;Z)V

    .line 1203
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowInternetSharing:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowInternetSharing(Landroid/content/ComponentName;Z)V

    .line 1204
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireManualSyncWhenRoaming:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setRequireManualSyncRoaming(Landroid/content/ComponentName;Z)V

    .line 1206
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBluetoothMode:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowBluetoothMode(Landroid/content/ComponentName;I)V

    .line 1207
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordComplexChars:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMinPasswordComplexChars(Landroid/content/ComponentName;I)V

    .line 1209
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMaxCalendarAge(Landroid/content/ComponentName;I)V

    .line 1211
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMaxEmailAge(Landroid/content/ComponentName;I)V

    .line 1213
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMaxEmailBodyTruncSize(Landroid/content/ComponentName;I)V

    .line 1215
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;I)V

    .line 1219
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireDeviceEncryption:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setRequireDeviceEncryption(Landroid/content/ComponentName;Z)V

    .line 1220
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireStorageCardEncryption:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V

    .line 1242
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowDesktopSync:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowDesktopSync(Landroid/content/ComponentName;Z)V
    :try_end_f2
    .catchall {:try_start_2a .. :try_end_f2} :catchall_f9

    .line 1248
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v5}, Landroid/app/admin/DevicePolicyManager;->notifyChanges(Landroid/content/ComponentName;Z)V

    goto/16 :goto_21

    :catchall_f9
    move-exception v2

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3, v5}, Landroid/app/admin/DevicePolicyManager;->notifyChanges(Landroid/content/ComponentName;Z)V

    throw v2

    .line 1254
    :cond_100
    const-string v2, "Email"

    const-string v3, "setActivePolicies() : noActiveAdmin case :  dpm.setAllowCamera : true"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v5}, Landroid/app/admin/DevicePolicyManager;->setAllowCamera(Landroid/content/ComponentName;Z)V

    goto/16 :goto_21
.end method

.method public setActivePoliciesAtSystemProperties()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const-string v4, "Email"

    .line 1124
    const-string v2, "Email"

    const-string v2, "setActivePoliciesAtSystemProperties()"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 1127
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_11

    .line 1154
    :goto_10
    return-void

    .line 1132
    :cond_11
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/email/SecurityPolicy$PolicySet;

    move-result-object v1

    .line 1134
    .local v1, policies:Lcom/android/email/SecurityPolicy$PolicySet;
    if-eqz v1, :cond_25

    sget-object v2, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/email/SecurityPolicy$PolicySet;

    invoke-virtual {v1, v2}, Lcom/android/email/SecurityPolicy$PolicySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-static {}, Lcom/android/exchange/SyncManager;->exchangeAccountsExist()Z

    move-result v2

    if-nez v2, :cond_32

    .line 1136
    :cond_25
    const-string v2, "Email"

    const-string v2, "setActivePoliciesAtSystemProperties() : no policy exists case : dpm.setAllowCamera : true"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowCamera(Landroid/content/ComponentName;Z)V

    goto :goto_10

    .line 1140
    :cond_32
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 1141
    const-string v2, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActivePoliciesAtSystemProperties() : AdminActive  case : dpm.setAllowCamera : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowCamera:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :try_start_54
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowCamera:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowCamera(Landroid/content/ComponentName;Z)V
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_5c

    goto :goto_10

    .line 1146
    :catchall_5c
    move-exception v2

    throw v2

    .line 1149
    :cond_5e
    const-string v2, "Email"

    const-string v2, "setActivePoliciesAtSystemProperties() : noActiveAdmin case :  dpm.setAllowCamera : true"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowCamera(Landroid/content/ComponentName;Z)V

    goto :goto_10
.end method

.method setContext(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 328
    return-void
.end method

.method public setRecoverPasswordState(Z)V
    .registers 5
    .parameter "result"

    .prologue
    .line 1262
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 1263
    .local v0, mDPM:Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setRecoveryPasswordState(Landroid/content/ComponentName;Z)V

    .line 1264
    return-void
.end method

.method public declared-synchronized updatePolicies(J)V
    .registers 4
    .parameter "accountId"

    .prologue
    .line 668
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/email/SecurityPolicy$PolicySet;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 669
    monitor-exit p0

    return-void

    .line 668
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

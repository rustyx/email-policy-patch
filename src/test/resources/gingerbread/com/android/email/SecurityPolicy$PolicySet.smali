.class public Lcom/android/email/SecurityPolicy$PolicySet;
.super Ljava/lang/Object;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/SecurityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicySet"
.end annotation


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

.field public mMaxAttachmentSize:I

.field public mMaxCalendarAgeFilter:I

.field public mMaxEmailAgeFilter:I

.field public mMaxEmailBodyTruncationSize:I

.field public mMaxEmailHtmlBodyTruncationSize:I

.field public mMaxPasswordFails:I

.field public mMaxScreenLockTime:I

.field public mMinPasswordComplexChars:I

.field public mMinPasswordLength:I

.field public mPasswordExpires:I

.field public mPasswordHistory:I

.field public mPasswordMode:I

.field public mPasswordRecoverable:Z

.field public mRequireDeviceEncryption:Z

.field public mRequireEncryptedSMIMEMessages:Z

.field public mRequireEncryptionSMIMEAlgorithm:I

.field public mRequireManualSyncWhenRoaming:Z

.field public mRequireRemoteWipe:Z

.field public mRequireSignedSMIMEAlgorithm:I

.field public mRequireSignedSMIMEMessages:Z

.field public mRequireStorageCardEncryption:Z


# direct methods
.method public constructor <init>(IIIIZZIIZIZZZZZZZZZIIIIIIZZIIIZZZZZ)V
    .registers 40
    .parameter "minPasswordLength"
    .parameter "passwordMode"
    .parameter "maxPasswordFails"
    .parameter "maxScreenLockTime"
    .parameter "requireRemoteWipe"
    .parameter "passwordRecoverable"
    .parameter "passwordExpires"
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
    .parameter "minPasswordComplexChars"
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
    .parameter "requireDeviceEncryption"
    .parameter "requireStorageCardEncryption"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1576
    const/16 v2, 0x1e

    if-le p1, v2, :cond_9

    .line 1577
    const/16 p1, 0x1f

    .line 1579
    :cond_9
    if-ltz p2, :cond_e

    const/4 v2, 0x4

    if-le p2, v2, :cond_16

    .line 1580
    :cond_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password mode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1591
    :cond_16
    const/16 v2, 0x1f

    if-le p3, v2, :cond_1c

    .line 1592
    const/16 p3, 0x1f

    .line 1596
    :cond_1c
    const/16 v2, 0x7ff

    if-le p4, v2, :cond_22

    .line 1597
    const/16 p4, 0x7ff

    .line 1599
    :cond_22
    iput p1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    .line 1600
    iput p2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    .line 1601
    iput p3, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxPasswordFails:I

    .line 1602
    iput p4, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    .line 1603
    iput-boolean p5, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireRemoteWipe:Z

    .line 1606
    iput-boolean p6, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordRecoverable:Z

    .line 1607
    iput p7, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordExpires:I

    .line 1608
    iput p8, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordHistory:I

    .line 1609
    iput-boolean p9, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAttachmentsEnabled:Z

    .line 1610
    iput p10, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxAttachmentSize:I

    .line 1614
    iput-boolean p11, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowStorageCard:Z

    .line 1615
    move/from16 v0, p12

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowCamera:Z

    .line 1616
    move/from16 v0, p13

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowWifi:Z

    .line 1617
    move/from16 v0, p14

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowTextMessaging:Z

    .line 1618
    move/from16 v0, p15

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowPOPIMAPEmail:Z

    .line 1619
    move/from16 v0, p16

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowHTMLEmail:Z

    .line 1620
    move/from16 v0, p17

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBrowser:Z

    .line 1621
    move/from16 v0, p18

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowInternetSharing:Z

    .line 1622
    move/from16 v0, p19

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireManualSyncWhenRoaming:Z

    .line 1623
    move/from16 v0, p20

    move-object v1, p0

    iput v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBluetoothMode:I

    .line 1624
    move/from16 v0, p21

    move-object v1, p0

    iput v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordComplexChars:I

    .line 1625
    move/from16 v0, p22

    move-object v1, p0

    iput v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    .line 1626
    move/from16 v0, p23

    move-object v1, p0

    iput v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    .line 1627
    move/from16 v0, p24

    move-object v1, p0

    iput v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    .line 1628
    move/from16 v0, p25

    move-object v1, p0

    iput v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    .line 1629
    move/from16 v0, p26

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEMessages:Z

    .line 1630
    move/from16 v0, p27

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptedSMIMEMessages:Z

    .line 1631
    move/from16 v0, p28

    move-object v1, p0

    iput v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEAlgorithm:I

    .line 1632
    move/from16 v0, p29

    move-object v1, p0

    iput v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    .line 1633
    move/from16 v0, p30

    move-object v1, p0

    iput v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    .line 1634
    move/from16 v0, p31

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowSMIMESoftCerts:Z

    .line 1635
    move/from16 v0, p32

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowDesktopSync:Z

    .line 1636
    move/from16 v0, p33

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowIrDA:Z

    .line 1639
    move/from16 v0, p34

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireDeviceEncryption:Z

    .line 1640
    move/from16 v0, p35

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireStorageCardEncryption:Z

    .line 1641
    return-void
.end method

.method public constructor <init>(Lcom/android/email/provider/EmailContent$Account;)V
    .registers 15
    .parameter "account"

    .prologue
    .line 1648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1651
    if-eqz p1, :cond_b

    invoke-static {}, Lcom/android/email/SecurityPolicy;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1652
    :cond_b
    const-string v0, "SecurityPolicy"

    const-string v1, "PolicySet(): account is null or context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    :cond_12
    :goto_12
    return-void

    .line 1655
    :cond_13
    invoke-static {}, Lcom/android/email/SecurityPolicy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1658
    invoke-static {}, Lcom/android/email/SecurityPolicy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "account_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v11, p1, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1663
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_12

    .line 1664
    :cond_3e
    :goto_3e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2ab

    .line 1665
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1666
    .local v7, name:Ljava/lang/String;
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1667
    .local v8, type:Ljava/lang/String;
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1669
    .local v10, value:Ljava/lang/String;
    const-string v0, "Integer"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16b

    .line 1670
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1671
    .local v9, val:Ljava/lang/Integer;
    const-string v0, "PasswordMode"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 1672
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    .line 1683
    :cond_80
    :goto_80
    const-string v0, "DevicePasswordExpiration"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 1684
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordExpires:I

    goto :goto_3e

    .line 1673
    :cond_8f
    const-string v0, "MaxDevicePasswordFailedAttempts"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 1675
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxPasswordFails:I

    goto :goto_80

    .line 1676
    :cond_9e
    const-string v0, "MinDevicePasswordLength"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 1677
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    goto :goto_80

    .line 1678
    :cond_ad
    const-string v0, "MaxInactivityTime"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 1679
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    goto :goto_80

    .line 1680
    :cond_bc
    const-string v0, "MaxAttachmentSize"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1681
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxAttachmentSize:I

    goto :goto_80

    .line 1685
    :cond_cb
    const-string v0, "DevicePasswordHistory"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 1686
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordHistory:I

    goto/16 :goto_3e

    .line 1689
    :cond_db
    const-string v0, "AllowBluetoothMode"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 1690
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBluetoothMode:I

    goto/16 :goto_3e

    .line 1691
    :cond_eb
    const-string v0, "MinPasswordComplexCharacters"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 1692
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordComplexChars:I

    goto/16 :goto_3e

    .line 1693
    :cond_fb
    const-string v0, "MaxCalendarAgeFilter"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 1694
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    goto/16 :goto_3e

    .line 1695
    :cond_10b
    const-string v0, "MaxEmailAgeFilter"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 1696
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    goto/16 :goto_3e

    .line 1697
    :cond_11b
    const-string v0, "MaxEmailBodyTruncationSize"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 1698
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    goto/16 :goto_3e

    .line 1699
    :cond_12b
    const-string v0, "MaxEmailHtmlBodyTruncationSize"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 1700
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    goto/16 :goto_3e

    .line 1703
    :cond_13b
    const-string v0, "RequireSignedSMIMEAlgorithm"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 1704
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEAlgorithm:I

    goto/16 :goto_3e

    .line 1705
    :cond_14b
    const-string v0, "RequireEncryptionSMIMEAlgorithm"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 1707
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    goto/16 :goto_3e

    .line 1708
    :cond_15b
    const-string v0, "AllowSMIMEEncryptionAlgorithmNegotiation"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1710
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    goto/16 :goto_3e

    .line 1714
    .end local v9           #val:Ljava/lang/Integer;
    :cond_16b
    const-string v0, "Boolean"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1715
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 1716
    .local v9, val:Ljava/lang/Boolean;
    const-string v0, "PasswordRecoveryEnabled"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 1717
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordRecoverable:Z

    goto/16 :goto_3e

    .line 1718
    :cond_18b
    const-string v0, "AttachmentsEnabled"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19b

    .line 1719
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAttachmentsEnabled:Z

    goto/16 :goto_3e

    .line 1720
    :cond_19b
    const-string v0, "RemoteWipe"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ab

    .line 1721
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireRemoteWipe:Z

    goto/16 :goto_3e

    .line 1724
    :cond_1ab
    const-string v0, "AllowStorageCard"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bb

    .line 1725
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowStorageCard:Z

    goto/16 :goto_3e

    .line 1726
    :cond_1bb
    const-string v0, "AllowCamera"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cb

    .line 1727
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowCamera:Z

    goto/16 :goto_3e

    .line 1728
    :cond_1cb
    const-string v0, "AllowWifi"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1db

    .line 1729
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowWifi:Z

    goto/16 :goto_3e

    .line 1730
    :cond_1db
    const-string v0, "AllowTextMessaging"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1eb

    .line 1731
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowTextMessaging:Z

    goto/16 :goto_3e

    .line 1732
    :cond_1eb
    const-string v0, "AllowPOPIMAPEmail"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fb

    .line 1733
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowPOPIMAPEmail:Z

    goto/16 :goto_3e

    .line 1734
    :cond_1fb
    const-string v0, "AllowHTMLEmail"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20b

    .line 1735
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowHTMLEmail:Z

    goto/16 :goto_3e

    .line 1736
    :cond_20b
    const-string v0, "AllowBrowser"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21b

    .line 1737
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBrowser:Z

    goto/16 :goto_3e

    .line 1738
    :cond_21b
    const-string v0, "AllowInternetSharing"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22b

    .line 1739
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowInternetSharing:Z

    goto/16 :goto_3e

    .line 1740
    :cond_22b
    const-string v0, "RequireManualSyncWhenRoaming"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23b

    .line 1741
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireManualSyncWhenRoaming:Z

    goto/16 :goto_3e

    .line 1742
    :cond_23b
    const-string v0, "RequireSignedSMIMEMessages"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24b

    .line 1743
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEMessages:Z

    goto/16 :goto_3e

    .line 1744
    :cond_24b
    const-string v0, "RequireEncryptedSMIMEMessages"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25b

    .line 1745
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptedSMIMEMessages:Z

    goto/16 :goto_3e

    .line 1746
    :cond_25b
    const-string v0, "AllowSMIMESoftCerts"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26b

    .line 1747
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowSMIMESoftCerts:Z

    goto/16 :goto_3e

    .line 1748
    :cond_26b
    const-string v0, "AllowDesktopSync"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27b

    .line 1749
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowDesktopSync:Z

    goto/16 :goto_3e

    .line 1750
    :cond_27b
    const-string v0, "AllowIrDA"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28b

    .line 1751
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowIrDA:Z

    goto/16 :goto_3e

    .line 1752
    :cond_28b
    const-string v0, "RequireDeviceEncryption"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29b

    .line 1753
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireDeviceEncryption:Z

    goto/16 :goto_3e

    .line 1754
    :cond_29b
    const-string v0, "RequireStorageCardEncryption"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1756
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireStorageCardEncryption:Z

    goto/16 :goto_3e

    .line 1761
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #type:Ljava/lang/String;
    .end local v9           #val:Ljava/lang/Boolean;
    .end local v10           #value:Ljava/lang/String;
    :cond_2ab
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_12
.end method

.method private populateHash(Ljava/util/HashMap;)V
    .registers 9
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
    const/4 v6, 0x7

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 2025
    const-string v1, "PasswordMode"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2027
    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    if-eqz v1, :cond_5c

    .line 2028
    const-string v1, "PasswordRecoveryEnabled"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordRecoverable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2029
    const-string v1, "MaxDevicePasswordFailedAttempts"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxPasswordFails:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    const-string v1, "DevicePasswordExpiration"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordExpires:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2032
    const-string v1, "DevicePasswordHistory"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordHistory:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2034
    const-string v1, "MinPasswordComplexCharacters"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordComplexChars:I

    if-ltz v2, :cond_49

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordComplexChars:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_1b1

    :cond_49
    const/4 v2, 0x3

    :goto_4a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2037
    const-string v1, "MinDevicePasswordLength"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2040
    :cond_5c
    const-string v1, "MaxAttachmentSize"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxAttachmentSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    const-string v1, "AttachmentsEnabled"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAttachmentsEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2044
    iget v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    .line 2047
    .local v0, inactivityTime:I
    const-string v1, "MaxInactivityTime"

    const/16 v2, 0x270f

    if-lt v0, v2, :cond_1b5

    move v2, v4

    :goto_7b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    const-string v1, "RemoteWipe"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireRemoteWipe:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2051
    const-string v1, "AllowStorageCard"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowStorageCard:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2052
    const-string v1, "AllowCamera"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowCamera:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2053
    const-string v1, "AllowWifi"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowWifi:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2054
    const-string v1, "AllowTextMessaging"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowTextMessaging:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2055
    const-string v1, "AllowPOPIMAPEmail"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowPOPIMAPEmail:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2056
    const-string v1, "AllowHTMLEmail"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowHTMLEmail:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2057
    const-string v1, "AllowBrowser"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBrowser:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2058
    const-string v1, "AllowInternetSharing"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowInternetSharing:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2059
    const-string v1, "RequireManualSyncWhenRoaming"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireManualSyncWhenRoaming:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2061
    const-string v1, "AllowBluetoothMode"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBluetoothMode:I

    if-ltz v2, :cond_fa

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBluetoothMode:I

    if-le v2, v5, :cond_1b8

    :cond_fa
    move v2, v5

    :goto_fb
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2066
    const-string v1, "MaxCalendarAgeFilter"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    if-ltz v2, :cond_10c

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    if-le v2, v6, :cond_1bc

    :cond_10c
    move v2, v4

    :goto_10d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2069
    const-string v1, "MaxEmailAgeFilter"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    if-ltz v2, :cond_11e

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    if-le v2, v6, :cond_1c0

    :cond_11e
    move v2, v4

    :goto_11f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2071
    const-string v1, "MaxEmailBodyTruncationSize"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    if-gez v2, :cond_1c4

    move v2, v4

    :goto_12d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2073
    const-string v1, "MaxEmailHtmlBodyTruncationSize"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    if-gez v2, :cond_1c8

    move v2, v4

    :goto_13b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2075
    const-string v1, "RequireSignedSMIMEMessages"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEMessages:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2078
    const-string v1, "RequireEncryptedSMIMEMessages"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptedSMIMEMessages:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2080
    const-string v1, "RequireSignedSMIMEAlgorithm"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEAlgorithm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2082
    const-string v1, "RequireEncryptionSMIMEAlgorithm"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2084
    const-string v1, "AllowSMIMEEncryptionAlgorithmNegotiation"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2086
    const-string v1, "AllowSMIMESoftCerts"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowSMIMESoftCerts:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2087
    const-string v1, "AllowDesktopSync"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowDesktopSync:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2088
    const-string v1, "AllowIrDA"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowIrDA:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2089
    const-string v1, "RequireDeviceEncryption"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireDeviceEncryption:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2090
    const-string v1, "RequireStorageCardEncryption"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireStorageCardEncryption:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2093
    return-void

    .line 2034
    .end local v0           #inactivityTime:I
    :cond_1b1
    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordComplexChars:I

    goto/16 :goto_4a

    .restart local v0       #inactivityTime:I
    :cond_1b5
    move v2, v0

    .line 2047
    goto/16 :goto_7b

    .line 2061
    :cond_1b8
    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBluetoothMode:I

    goto/16 :goto_fb

    .line 2066
    :cond_1bc
    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    goto/16 :goto_10d

    .line 2069
    :cond_1c0
    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    goto/16 :goto_11f

    .line 2071
    :cond_1c4
    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    goto/16 :goto_12d

    .line 2073
    :cond_1c8
    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    goto/16 :goto_13b
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 2098
    instance-of v2, p1, Lcom/android/email/SecurityPolicy$PolicySet;

    if-eqz v2, :cond_af

    .line 2099
    move-object v0, p1

    check-cast v0, Lcom/android/email/SecurityPolicy$PolicySet;

    move-object v1, v0

    .line 2100
    .local v1, other:Lcom/android/email/SecurityPolicy$PolicySet;
    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    if-ne v2, v3, :cond_ad

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    if-ne v2, v3, :cond_ad

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxPasswordFails:I

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxPasswordFails:I

    if-ne v2, v3, :cond_ad

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    if-ne v2, v3, :cond_ad

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireRemoteWipe:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireRemoteWipe:Z

    if-ne v2, v3, :cond_ad

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordRecoverable:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordRecoverable:Z

    if-ne v2, v3, :cond_ad

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordExpires:I

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordExpires:I

    if-ne v2, v3, :cond_ad

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordHistory:I

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordHistory:I

    if-ne v2, v3, :cond_ad

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAttachmentsEnabled:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAttachmentsEnabled:Z

    if-ne v2, v3, :cond_ad

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxAttachmentSize:I

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxAttachmentSize:I

    if-ne v2, v3, :cond_ad

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowStorageCard:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowStorageCard:Z

    if-ne v2, v3, :cond_ad

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowCamera:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowCamera:Z

    if-ne v2, v3, :cond_ad

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowWifi:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowWifi:Z

    if-ne v2, v3, :cond_ad

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowTextMessaging:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowTextMessaging:Z

    if-ne v2, v3, :cond_ad

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowPOPIMAPEmail:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowPOPIMAPEmail:Z

    if-ne v2, v3, :cond_ad

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowHTMLEmail:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowHTMLEmail:Z

    if-ne v2, v3, :cond_ad

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBrowser:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBrowser:Z

    if-ne v2, v3, :cond_ad

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowInternetSharing:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowInternetSharing:Z

    if-ne v2, v3, :cond_ad

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireManualSyncWhenRoaming:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireManualSyncWhenRoaming:Z

    if-ne v2, v3, :cond_ad

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBluetoothMode:I

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBluetoothMode:I

    if-ne v2, v3, :cond_ad

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordComplexChars:I

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordComplexChars:I

    if-ne v2, v3, :cond_ad

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    if-ne v2, v3, :cond_ad

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    if-ne v2, v3, :cond_ad

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    if-ne v2, v3, :cond_ad

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    if-ne v2, v3, :cond_ad

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireDeviceEncryption:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireDeviceEncryption:Z

    if-ne v2, v3, :cond_ad

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireStorageCardEncryption:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireStorageCardEncryption:Z

    if-ne v2, v3, :cond_ad

    const/4 v2, 0x1

    .line 2150
    .end local v1           #other:Lcom/android/email/SecurityPolicy$PolicySet;
    :goto_ac
    return v2

    .restart local v1       #other:Lcom/android/email/SecurityPolicy$PolicySet;
    :cond_ad
    move v2, v4

    .line 2100
    goto :goto_ac

    .end local v1           #other:Lcom/android/email/SecurityPolicy$PolicySet;
    :cond_af
    move v2, v4

    .line 2150
    goto :goto_ac
.end method

.method public getDPManagerPasswordQuality()I
    .registers 2

    .prologue
    .line 1828
    iget v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    packed-switch v0, :pswitch_data_10

    .line 1837
    :pswitch_5
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 1830
    :pswitch_7
    const/high16 v0, 0x2

    goto :goto_6

    .line 1832
    :pswitch_a
    const/high16 v0, 0x5

    goto :goto_6

    .line 1835
    :pswitch_d
    const/high16 v0, 0x1

    goto :goto_6

    .line 1828
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_7
        :pswitch_5
        :pswitch_a
    .end packed-switch
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 2158
    const/4 v0, 0x0

    .line 2159
    .local v0, flags:I
    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    shl-int/lit8 v0, v1, 0x0

    .line 2160
    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    or-int/2addr v0, v1

    .line 2161
    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxPasswordFails:I

    shl-int/lit8 v1, v1, 0x9

    or-int/2addr v0, v1

    .line 2162
    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 2163
    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireRemoteWipe:Z

    if-eqz v1, :cond_19

    .line 2164
    const/high16 v1, 0x200

    or-int/2addr v0, v1

    .line 2166
    :cond_19
    return v0
.end method

.method public removePolicyRules(J)V
    .registers 9
    .parameter "accountId"

    .prologue
    .line 2013
    invoke-static {}, Lcom/android/email/SecurityPolicy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "account_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2017
    return-void
.end method

.method public storePolicyRules(J)V
    .registers 10
    .parameter

    .prologue
    const-string v0, "Email"

    .line 1981
    const-class v1, Lcom/android/email/SecurityPolicy;

    monitor-enter v1

    .line 1982
    :try_start_5
    const-string v0, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storePolicyRules() - accountId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1985
    invoke-direct {p0, v0}, Lcom/android/email/SecurityPolicy$PolicySet;->populateHash(Ljava/util/HashMap;)V

    .line 1987
    invoke-static {}, Lcom/android/email/SecurityPolicy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1989
    invoke-virtual {p0, p1, p2}, Lcom/android/email/SecurityPolicy$PolicySet;->removePolicyRules(J)V

    .line 1990
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " storePolicyRules: removed policies for accountId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_50
    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 1993
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 1994
    new-instance v4, Lcom/android/email/provider/EmailContent$Policies;

    invoke-direct {v4}, Lcom/android/email/provider/EmailContent$Policies;-><init>()V

    .line 1995
    iput-wide p1, v4, Lcom/android/email/provider/EmailContent$Policies;->mAccountId:J

    .line 1996
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 1997
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 1998
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_a5

    .line 1999
    const-string v0, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "policy Name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", policyValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    :cond_a5
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 2003
    sget-object v0, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Lcom/android/email/provider/EmailContent$Policies;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_50

    .line 2006
    :catchall_bd
    move-exception v0

    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_5 .. :try_end_bf} :catchall_bd

    throw v0

    :cond_c0
    :try_start_c0
    monitor-exit v1
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bd

    .line 2007
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ pw-len-min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pw-mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pw-fails-max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxPasswordFails:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screenlock-max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " remote-wipe-req="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireRemoteWipe:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pw-recovery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordRecoverable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pw-expiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordExpires:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pw-history="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordHistory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " att-enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAttachmentsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " att-max-size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxAttachmentSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowStorageCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowStorageCard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowCamera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowCamera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowWifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowTextMessaging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowTextMessaging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowPOPIMAPEmail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowPOPIMAPEmail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowHTMLEmail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowHTMLEmail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowBrowser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBrowser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowInternetSharing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowInternetSharing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRequireManualSyncWhenRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireManualSyncWhenRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowBluetoothMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBluetoothMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMinPasswordComplexChars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordComplexChars:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMaxCalendarAgeFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMaxEmailAgeFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMaxEmailBodyTruncationSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMaxEmailHtmlBodyTruncationSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRequireSignedSMIMEMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEMessages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRequireEncryptedSMIMEMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptedSMIMEMessages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRequireSignedSMIMEAlgorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEAlgorithm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRequireEncryptionSMIMEAlgorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowSMIMEEncryptionAlgorithmNegotiation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowSMIMESoftCerts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowSMIMESoftCerts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowDesktopSync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowDesktopSync:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowIrDA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowIrDA:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRequireDeviceEncryption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireDeviceEncryption:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRequireStorageCardEncryption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireStorageCardEncryption:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeAccount(Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;ZLandroid/content/Context;)Z
    .registers 21
    .parameter "account"
    .parameter "syncKey"
    .parameter "update"
    .parameter "context"

    .prologue
    .line 1858
    new-instance v9, Lcom/android/email/SecurityPolicy$PolicySet;

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/email/SecurityPolicy$PolicySet;-><init>(Lcom/android/email/provider/EmailContent$Account;)V

    .line 1859
    .local v9, oldPolicy:Lcom/android/email/SecurityPolicy$PolicySet;
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy$PolicySet;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c0

    const/4 v13, 0x1

    move v6, v13

    .line 1864
    .local v6, dirty:Z
    :goto_13
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 1865
    if-eqz p3, :cond_1a7

    .line 1870
    const/4 v3, 0x0

    .line 1871
    .local v3, changedValues:Z
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:I

    move v13, v0

    invoke-static {v13}, Lcom/android/exchange/Eas$EmailDataSize;->parse(I)Lcom/android/exchange/Eas$EmailDataSize;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/exchange/Eas$EmailDataSize;->toEas12Value()I

    move-result v4

    .line 1879
    .local v4, currentSize:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    move v10, v0

    .line 1880
    .local v10, plainTextSize:I
    const-string v13, "SecurityPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "plainTextSize = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    move v13, v0

    div-int/lit16 v7, v13, 0x400

    .line 1887
    .local v7, htmlSize:I
    const-string v13, "SecurityPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "htmlSize = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowHTMLEmail:Z

    move v8, v0

    .line 1889
    .local v8, isHtmlAllowed:Z
    const-string v13, "SecurityPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isHtmlAllowed = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    if-eqz v8, :cond_1c4

    if-lez v7, :cond_1c4

    .line 1891
    move v11, v7

    .line 1898
    .local v11, restrictedSize:I
    :goto_87
    if-lez v11, :cond_1c7

    .line 1899
    mul-int/lit16 v11, v11, 0x400

    .line 1903
    :goto_8b
    if-ge v11, v4, :cond_c6

    .line 1904
    const-string v13, "SecurityPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exchange IT Policy has restricted SyncSize, CurrentSize="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Bytes, restrictedSize="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Bytes"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:I

    move v13, v0

    if-lez v13, :cond_c5

    .line 1909
    invoke-static {v11}, Lcom/android/exchange/Eas$EmailDataSize;->parseToByte(I)B

    move-result v13

    move v0, v13

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:I

    .line 1911
    :cond_c5
    const/4 v3, 0x1

    .line 1914
    :cond_c6
    const/4 v12, 0x6

    .line 1915
    .local v12, restrictedWindow:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    move v12, v0

    .line 1916
    if-gtz v12, :cond_cf

    .line 1917
    const/4 v12, 0x6

    .line 1918
    :cond_cf
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    move v13, v0

    if-ge v12, v13, :cond_103

    .line 1919
    const-string v13, "AccountSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exchange IT Policy has restricted SyncLookback, current:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", restricted="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    .line 1923
    const/4 v3, 0x1

    .line 1926
    :cond_103
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    move v12, v0

    .line 1927
    if-lez v12, :cond_145

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    move v13, v0

    if-eqz v13, :cond_118

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    move v13, v0

    if-ge v12, v13, :cond_145

    .line 1929
    :cond_118
    const-string v13, "AccountSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exchange IT Policy has restricted CalendarSyncLookback, current:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", restricted="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 1934
    const/4 v3, 0x1

    .line 1938
    :cond_145
    invoke-virtual/range {p1 .. p1}, Lcom/android/email/provider/EmailContent$Account;->isSaved()Z

    move-result v13

    if-eqz v13, :cond_1cc

    .line 1939
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1942
    .local v5, cv:Landroid/content/ContentValues;
    const-string v13, "securitySyncKey"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    if-eqz v3, :cond_194

    .line 1949
    const-string v13, "isDefault"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/email/provider/EmailContent$Account;->mIsDefault:Z

    move v14, v0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1950
    const-string v13, "emailsize"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:I

    move v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1951
    const-string v13, "syncLookback"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    move v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1953
    const-string v13, "calendarSyncLookback"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    move v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1959
    :cond_194
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1967
    .end local v5           #cv:Landroid/content/ContentValues;
    :goto_19c
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent;->mId:J

    move-wide v13, v0

    move-object/from16 v0, p0

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/email/SecurityPolicy$PolicySet;->storePolicyRules(J)V

    .line 1970
    .end local v3           #changedValues:Z
    .end local v4           #currentSize:I
    .end local v7           #htmlSize:I
    .end local v8           #isHtmlAllowed:Z
    .end local v10           #plainTextSize:I
    .end local v11           #restrictedSize:I
    .end local v12           #restrictedWindow:I
    :cond_1a7
    const-string v13, "Email"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SecurityPolicy.writeAccount: returning dirty = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    return v6

    .line 1859
    .end local v6           #dirty:Z
    :cond_1c0
    const/4 v13, 0x0

    move v6, v13

    goto/16 :goto_13

    .line 1895
    .restart local v3       #changedValues:Z
    .restart local v4       #currentSize:I
    .restart local v6       #dirty:Z
    .restart local v7       #htmlSize:I
    .restart local v8       #isHtmlAllowed:Z
    .restart local v10       #plainTextSize:I
    :cond_1c4
    move v11, v10

    .restart local v11       #restrictedSize:I
    goto/16 :goto_87

    .line 1902
    :cond_1c7
    const v11, 0x7fffffff

    goto/16 :goto_8b

    .line 1961
    .restart local v12       #restrictedWindow:I
    :cond_1cc
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_19c
.end method

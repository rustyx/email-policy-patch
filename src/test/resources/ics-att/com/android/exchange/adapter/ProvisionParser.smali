.class public Lcom/android/exchange/adapter/ProvisionParser;
.super Lcom/android/exchange/adapter/Parser;
.source "ProvisionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;
    }
.end annotation


# instance fields
.field mIsSupportable:Z

.field mPolicyKey:Ljava/lang/String;

.field mPolicySet:Lcom/android/emailcommon/service/PolicySet;

.field mPolicyStatus:I

.field mRemoteWipe:Z

.field private mService:Lcom/android/exchange/EasSyncService;

.field mUnsupportedPolicies:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicyKey:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mRemoteWipe:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicyStatus:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    iput-object p2, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    return-void
.end method

.method private parseCharacteristic(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v0, 0x1

    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_16

    const-string v4, "characteristic"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    return-void

    :cond_16
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    const-string v4, "parm"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "name"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "value"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AEFrequencyValue"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    if-eqz v0, :cond_2

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    const/4 v4, 0x0

    iput v4, p2, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxScreenLockTime:I

    goto :goto_2

    :cond_47
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    iput v4, p2, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxScreenLockTime:I

    goto :goto_2

    :cond_50
    const-string v4, "AEFrequencyType"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_62
    const-string v4, "DeviceWipeThreshold"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxPasswordFails:I

    goto :goto_2

    :cond_71
    const-string v4, "CodewordFrequency"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "MinimumPasswordLength"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_89

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMinPasswordLength:I

    goto/16 :goto_2

    :cond_89
    const-string v4, "PasswordComplexity"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9f

    const/16 v4, 0x40

    iput v4, p2, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordMode:I

    goto/16 :goto_2

    :cond_9f
    const/16 v4, 0x20

    iput v4, p2, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordMode:I

    goto/16 :goto_2
.end method

.method private parsePolicies()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const/16 v0, 0x386

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17

    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x387

    if-ne v0, v1, :cond_13

    invoke-direct {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parsePolicy()V

    goto :goto_0

    :cond_13
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    :cond_17
    return-void
.end method

.method private parsePolicy()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x387

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_53

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v1, :pswitch_data_54

    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Policy type: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_1

    :pswitch_28
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicyKey:Ljava/lang/String;

    goto :goto_1

    :pswitch_2f
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v1

    iput v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicyStatus:I

    iget-object v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v2, "Policy status: "

    iget v3, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicyStatus:I

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_3f
    const-string v1, "MS-WAP-Provisioning-XML"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ProvisionParser;->parseProvisionDocXml(Ljava/lang/String;)V

    goto :goto_1

    :cond_4f
    invoke-direct {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parseProvisionData()V

    goto :goto_1

    :cond_53
    return-void

    :pswitch_data_54
    .packed-switch 0x388
        :pswitch_13
        :pswitch_28
        :pswitch_3f
        :pswitch_2f
    .end packed-switch
.end method

.method private parseProvisionData()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const/16 v0, 0x38a

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17

    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x38d

    if-ne v0, v1, :cond_13

    invoke-direct {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parseProvisionDocWbxml()V

    goto :goto_0

    :cond_13
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    :cond_17
    return-void
.end method

.method private parseProvisionDocWbxml()V
    .registers 54
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v48, Ljava/util/ArrayList;

    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v23, 0x0

    const/16 v44, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/16 v38, 0x1

    const/4 v12, 0x0

    const/16 v18, 0x1

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, -0x1

    const/16 v31, -0x1

    const/16 v32, -0x1

    const/16 v33, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v22, 0x2

    const/16 v34, 0x1

    const/16 v35, 0x1

    const/16 v39, 0x1

    const/16 v36, 0x0

    const/16 v37, 0x0

    :cond_43
    :goto_43
    const/16 v2, 0x38d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v2

    const/4 v7, 0x3

    if-eq v2, v7, :cond_2a0

    const/16 v47, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v2, :pswitch_data_328

    :pswitch_57
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    :cond_5a
    :goto_5a
    if-nez v47, :cond_43

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Policy not supported: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/ProvisionParser;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    goto :goto_43

    :pswitch_7e
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_5a

    const/16 v44, 0x1

    if-nez v4, :cond_5a

    const/16 v4, 0x20

    goto :goto_5a

    :pswitch_8c
    if-eqz v44, :cond_9b

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_9b

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v49

    move/from16 v3, v49

    goto :goto_5a

    :cond_9b
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_5a

    :pswitch_9f
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_5a

    if-eqz v44, :cond_5a

    const/16 v4, 0x40

    goto :goto_5a

    :pswitch_ab
    if-eqz v44, :cond_ba

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_ba

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v49

    move/from16 v6, v49

    goto :goto_5a

    :cond_ba
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_5a

    :pswitch_be
    if-eqz v44, :cond_cb

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_cb

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v5

    goto :goto_5a

    :cond_cb
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_5a

    :pswitch_cf
    if-eqz v44, :cond_dd

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_dd

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v9

    goto/16 :goto_5a

    :cond_dd
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto/16 :goto_5a

    :pswitch_e2
    if-eqz v44, :cond_f0

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_f0

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v10

    goto/16 :goto_5a

    :cond_f0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto/16 :goto_5a

    :pswitch_f5
    if-eqz v44, :cond_107

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_107

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_5a

    const/16 v38, 0x0

    goto/16 :goto_5a

    :cond_107
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto/16 :goto_5a

    :pswitch_10c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_5a

    const/4 v11, 0x0

    goto/16 :goto_5a

    :pswitch_115
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_5a

    if-eqz v44, :cond_5a

    const/4 v8, 0x1

    goto/16 :goto_5a

    :pswitch_121
    if-eqz v11, :cond_12f

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_12f

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v12

    goto/16 :goto_5a

    :cond_12f
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto/16 :goto_5a

    :pswitch_134
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_147

    if-eqz v44, :cond_147

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_5a

    const/16 v36, 0x1

    goto/16 :goto_5a

    :cond_147
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto/16 :goto_5a

    :pswitch_14c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_5a

    if-eqz v44, :cond_5a

    const/16 v37, 0x1

    goto/16 :goto_5a

    :pswitch_159
    if-eqz v44, :cond_167

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_167

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v23

    goto/16 :goto_5a

    :cond_167
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto/16 :goto_5a

    :pswitch_16c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_5a

    const/4 v13, 0x0

    goto/16 :goto_5a

    :pswitch_175
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_5a

    const/4 v14, 0x0

    goto/16 :goto_5a

    :pswitch_17e
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_5a

    const/4 v15, 0x0

    goto/16 :goto_5a

    :pswitch_187
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_5a

    const/16 v16, 0x0

    goto/16 :goto_5a

    :pswitch_191
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_5a

    const/16 v17, 0x0

    goto/16 :goto_5a

    :pswitch_19b
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_5a

    const/16 v18, 0x0

    goto/16 :goto_5a

    :pswitch_1a5
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_5a

    const/16 v19, 0x0

    goto/16 :goto_5a

    :pswitch_1af
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_5a

    const/16 v20, 0x0

    goto/16 :goto_5a

    :pswitch_1b9
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_5a

    const/16 v21, 0x1

    goto/16 :goto_5a

    :pswitch_1c4
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v22

    goto/16 :goto_5a

    :pswitch_1ca
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v24

    goto/16 :goto_5a

    :pswitch_1d0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v25

    goto/16 :goto_5a

    :pswitch_1d6
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v26

    if-gez v26, :cond_5a

    const/16 v26, 0x0

    goto/16 :goto_5a

    :pswitch_1e0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v27

    if-gez v27, :cond_5a

    const/16 v27, 0x0

    goto/16 :goto_5a

    :pswitch_1ea
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_5a

    const/16 v28, 0x1

    goto/16 :goto_5a

    :pswitch_1f5
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_5a

    const/16 v29, 0x1

    goto/16 :goto_5a

    :pswitch_200
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v30

    goto/16 :goto_5a

    :pswitch_20c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v31

    goto/16 :goto_5a

    :pswitch_218
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v32

    goto/16 :goto_5a

    :pswitch_224
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_5a

    const/16 v33, 0x0

    goto/16 :goto_5a

    :pswitch_22e
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_5a

    const/16 v34, 0x0

    goto/16 :goto_5a

    :pswitch_238
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_5a

    const/16 v35, 0x0

    goto/16 :goto_5a

    :pswitch_242
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_5a

    const/16 v47, 0x0

    const v2, 0x7f06001a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5a

    :pswitch_258
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_5a

    const/16 v47, 0x0

    const v2, 0x7f06001b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5a

    :pswitch_26e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/exchange/adapter/ProvisionParser;->specifiesApplications(I)Z

    move-result v2

    if-eqz v2, :cond_5a

    const/16 v47, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v7, 0x3b7

    if-ne v2, v7, :cond_292

    const v2, 0x7f060016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5a

    :cond_292
    const v2, 0x7f060017

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5a

    :cond_2a0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/16 v50, 0x0

    const-string v51, "ProvisionParser"

    aput-object v51, v7, v50

    const/16 v50, 0x1

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "PasswordEnabled = "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    aput-object v51, v7, v50

    invoke-virtual {v2, v7}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_31c

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exchange/adapter/ProvisionParser;->mUnsupportedPolicies:[Ljava/lang/String;

    const/16 v41, 0x0

    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v40

    if-nez v40, :cond_2ef

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    if-eqz v2, :cond_2ef

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    sget-object v40, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    :cond_2ef
    if-eqz v40, :cond_31c

    invoke-virtual/range {v40 .. v40}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v46

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v43

    :goto_2f9
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31c

    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v45

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/ProvisionParser;->mUnsupportedPolicies:[Ljava/lang/String;

    add-int/lit8 v42, v41, 0x1

    move-object/from16 v0, v46

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v41

    move/from16 v41, v42

    goto :goto_2f9

    :cond_31c
    new-instance v2, Lcom/android/emailcommon/service/PolicySet;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v38}, Lcom/android/emailcommon/service/PolicySet;-><init>(IIIIZZIIZIZZZZZZZZZIIIIIIZZIIIZZZZZZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    return-void

    nop

    :pswitch_data_328
    .packed-switch 0x38e
        :pswitch_7e
        :pswitch_9f
        :pswitch_14c
        :pswitch_115
        :pswitch_57
        :pswitch_10c
        :pswitch_8c
        :pswitch_ab
        :pswitch_be
        :pswitch_121
        :pswitch_f5
        :pswitch_cf
        :pswitch_e2
        :pswitch_16c
        :pswitch_175
        :pswitch_134
        :pswitch_242
        :pswitch_258
        :pswitch_159
        :pswitch_17e
        :pswitch_187
        :pswitch_191
        :pswitch_1c4
        :pswitch_238
        :pswitch_1b9
        :pswitch_22e
        :pswitch_1ca
        :pswitch_19b
        :pswitch_1d0
        :pswitch_1d6
        :pswitch_1e0
        :pswitch_1ea
        :pswitch_1f5
        :pswitch_200
        :pswitch_20c
        :pswitch_218
        :pswitch_224
        :pswitch_1a5
        :pswitch_191
        :pswitch_57
        :pswitch_1af
        :pswitch_26e
        :pswitch_57
        :pswitch_26e
    .end packed-switch
.end method

.method private parseRegistry(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    const-string v2, "characteristic"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    return-void

    :cond_14
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "characteristic"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/ProvisionParser;->parseCharacteristic(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;)V

    goto :goto_0
.end method

.method private parseSecurityPolicy(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x1

    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_16

    const-string v5, "characteristic"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    return v1

    :cond_16
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "parm"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "name"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "4131"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "value"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x0

    goto :goto_2
.end method

.method private parseWapProvisioningDoc(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_14

    const-string v3, "wap-provisioningdoc"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    :goto_13
    return-void

    :cond_14
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "characteristic"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    const-string v4, "type"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "SecurityPolicy"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/ProvisionParser;->parseSecurityPolicy(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_13

    :cond_39
    const-string v3, "Registry"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/ProvisionParser;->parseRegistry(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;)V

    goto :goto_13
.end method

.method private specifiesApplications(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_13

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v1, :pswitch_data_14

    :pswitch_d
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_1

    :pswitch_11
    const/4 v0, 0x1

    goto :goto_1

    :cond_13
    return v0

    :pswitch_data_14
    .packed-switch 0x3b8
        :pswitch_11
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method public clearUnsupportedPolicies()V
    .registers 3

    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    invoke-static {v0, v1}, Lcom/android/exchange/SecurityPolicyDelegate;->clearUnsupportedPolicies(Landroid/content/Context;Lcom/android/emailcommon/service/PolicySet;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mUnsupportedPolicies:[Ljava/lang/String;

    return-void
.end method

.method public getPolicyKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicySet()Lcom/android/emailcommon/service/PolicySet;
    .registers 2

    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    return-object v0
.end method

.method public getPolicyStatus()I
    .registers 2

    iget v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicyStatus:I

    return v0
.end method

.method public getRemoteWipe()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mRemoteWipe:Z

    return v0
.end method

.method public getUnsupportedPolicies()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mUnsupportedPolicies:[Ljava/lang/String;

    return-object v0
.end method

.method public hasSupportablePolicySet()Z
    .registers 2

    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public parse()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v4

    const/16 v5, 0x385

    if-eq v4, v5, :cond_1f

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :sswitch_11
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v1

    iget-object v4, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v5, "Provision status: "

    invoke-virtual {v4, v5, v1}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    if-ne v1, v2, :cond_2f

    move v0, v2

    :cond_1f
    :goto_1f
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4a

    iget v4, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v4, :sswitch_data_4c

    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_1f

    :cond_2f
    move v0, v3

    goto :goto_1f

    :sswitch_31
    invoke-direct {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parsePolicies()V

    iget-object v4, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    if-nez v4, :cond_42

    iget-object v4, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicyKey:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    :cond_42
    move v0, v2

    :goto_43
    goto :goto_1f

    :cond_44
    move v0, v3

    goto :goto_43

    :sswitch_46
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser;->mRemoteWipe:Z

    const/4 v0, 0x1

    goto :goto_1f

    :cond_4a
    return v0

    nop

    :sswitch_data_4c
    .sparse-switch
        0x386 -> :sswitch_31
        0x38b -> :sswitch_11
        0x38c -> :sswitch_46
    .end sparse-switch
.end method

.method parseProvisionDocXml(Ljava/lang/String;)V
    .registers 48
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v43, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;-><init>(Lcom/android/exchange/adapter/ProvisionParser;)V

    :try_start_9
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v42

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v4, "UTF-8"

    move-object/from16 v0, v42

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v45

    if-nez v45, :cond_47

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v45

    const/4 v3, 0x2

    move/from16 v0, v45

    if-ne v0, v3, :cond_47

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v44

    const-string v3, "wap-provisioningdoc"

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ProvisionParser;->parseWapProvisioningDoc(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;)V
    :try_end_47
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_47} :catch_10e

    :cond_47
    new-instance v3, Lcom/android/emailcommon/service/PolicySet;

    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMinPasswordLength:I

    move-object/from16 v0, v43

    iget v5, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordMode:I

    move-object/from16 v0, v43

    iget v6, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxPasswordFails:I

    move-object/from16 v0, v43

    iget v7, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxScreenLockTime:I

    const/4 v8, 0x0

    move-object/from16 v0, v43

    iget-boolean v9, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordRecoverable:Z

    move-object/from16 v0, v43

    iget v10, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordExpiration:I

    move-object/from16 v0, v43

    iget v11, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordHistory:I

    move-object/from16 v0, v43

    iget-boolean v12, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAttachmentsEnabled:Z

    move-object/from16 v0, v43

    iget v13, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxAttachmentSize:I

    move-object/from16 v0, v43

    iget-boolean v14, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowStorageCard:Z

    move-object/from16 v0, v43

    iget-boolean v15, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowCamera:Z

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowWifi:Z

    move/from16 v16, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowTextMessaging:Z

    move/from16 v17, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowPOPIMAPEmail:Z

    move/from16 v18, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowHTMLEmail:Z

    move/from16 v19, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowBrowser:Z

    move/from16 v20, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowInternetSharing:Z

    move/from16 v21, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireManualSyncWhenRoaming:Z

    move/from16 v22, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowBluetoothMode:I

    move/from16 v23, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordComplexChars:I

    move/from16 v24, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxCalendarAgeFilter:I

    move/from16 v25, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxEmailAgeFilter:I

    move/from16 v26, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxEmailBodyTruncationSize:I

    move/from16 v27, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    move/from16 v28, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireSignedSMIMEMessages:Z

    move/from16 v29, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireEncryptedSMIMEMessages:Z

    move/from16 v30, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireSignedSMIMEAlgorithm:I

    move/from16 v31, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    move/from16 v32, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    move/from16 v33, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowSMIMESoftCerts:Z

    move/from16 v34, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowDesktopSync:Z

    move/from16 v35, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowIrDA:Z

    move/from16 v36, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireEncryption:Z

    move/from16 v37, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mDeviceEncryptionEnabled:Z

    move/from16 v38, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mSimplePasswordEnabled:Z

    move/from16 v39, v0

    invoke-direct/range {v3 .. v39}, Lcom/android/emailcommon/service/PolicySet;-><init>(IIIIZZIIZIZZZZZZZZZIIIIIIZZIIIZZZZZZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    return-void

    :catch_10e
    move-exception v40

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
.end method

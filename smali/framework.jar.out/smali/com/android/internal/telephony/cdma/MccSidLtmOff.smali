.class public Lcom/android/internal/telephony/cdma/MccSidLtmOff;
.super Ljava/lang/Object;
.source "MccSidLtmOff.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "MccSidLtmOff"

.field public static final LTM_OFF_INVALID:I = 0x64


# instance fields
.field public LtmOffMax:I

.field public LtmOffMin:I

.field public Mcc:I

.field public Sid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Mcc:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Sid:I

    iput v1, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMin:I

    iput v1, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMax:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .parameter "mcc"
    .parameter "sid"
    .parameter "ltmOffMin"
    .parameter "ltmOffMax"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Mcc:I

    iput p2, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Sid:I

    iput p3, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMin:I

    iput p4, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMax:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/MccSidLtmOff;)V
    .locals 0
    .parameter "t"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->copyFrom(Lcom/android/internal/telephony/cdma/MccSidLtmOff;)V

    return-void
.end method


# virtual methods
.method protected copyFrom(Lcom/android/internal/telephony/cdma/MccSidLtmOff;)V
    .locals 1
    .parameter "t"

    .prologue
    iget v0, p1, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Mcc:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Mcc:I

    iget v0, p1, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Sid:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Sid:I

    iget v0, p1, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMin:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMin:I

    iget v0, p1, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMax:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMax:I

    return-void
.end method

.method public getLtmOffMax()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMax:I

    return v0
.end method

.method public getLtmOffMin()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMin:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Mcc:I

    return v0
.end method

.method public getSid()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Sid:I

    return v0
.end method

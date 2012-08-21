.class public Lcom/android/contacts/widget/ContactKeyboardView;
.super Landroid/view/View;
.source "ContactKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/widget/ContactKeyboardView$LongPressTimer;,
        Lcom/android/contacts/widget/ContactKeyboardView$OnVisibilityChangeListener;,
        Lcom/android/contacts/widget/ContactKeyboardView$LettersSoftKeyboard;,
        Lcom/android/contacts/widget/ContactKeyboardView$LettersKeyRow;,
        Lcom/android/contacts/widget/ContactKeyboardView$LettersSoftKey;
    }
.end annotation


# static fields
.field private static BALLOON_HIGHT:I

.field private static BALLOON_WIDTH:I

.field private static KEYBOARD_HEIGHT:I

.field private static KEYBOARD_HORIZONTAL_MARGING:I

.field private static KEYBOARD_INDENTIONS_LEFT:[I

.field private static KEYBOARD_INDENTIONS_RIGHT:[I

.field private static KEYBOARD_VERTICAL_MARGING:I

.field private static KEYBOARD_WIDTHS:[I


# instance fields
.field private KEY_NAME:[Ljava/lang/String;

.field private mActivePointerId:I

.field private mBalloonHint:Lcom/android/contacts/widget/BalloonHint;

.field private mCurrentKey:I

.field private mDeleteBackgroundIcon:Landroid/graphics/drawable/Drawable;

.field private mDeleteIcon:Landroid/graphics/drawable/Drawable;

.field private mFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mKeyHeight:I

.field private mKeyPressed:Z

.field private mKeyRect:Landroid/graphics/Rect;

.field private mLastX:F

.field private mLastY:F

.field private mLongPressTimer:Lcom/android/contacts/widget/ContactKeyboardView$LongPressTimer;

.field private mOnVisibilityChangeListener:Lcom/android/contacts/widget/ContactKeyboardView$OnVisibilityChangeListener;

.field private mPaintLabel:Landroid/graphics/Paint;

.field private mPopIcon:Landroid/graphics/drawable/Drawable;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field mTexteditor:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 615
    const/16 v0, 0x8

    sput v0, Lcom/android/contacts/widget/ContactKeyboardView;->KEYBOARD_HORIZONTAL_MARGING:I

    .line 616
    const/16 v0, 0x14

    sput v0, Lcom/android/contacts/widget/ContactKeyboardView;->KEYBOARD_VERTICAL_MARGING:I

    .line 617
    const/16 v0, 0x4f

    sput v0, Lcom/android/contacts/widget/ContactKeyboardView;->KEYBOARD_HEIGHT:I

    .line 618
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/contacts/widget/ContactKeyboardView;->KEYBOARD_WIDTHS:[I

    .line 621
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/contacts/widget/ContactKeyboardView;->KEYBOARD_INDENTIONS_LEFT:[I

    .line 622
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/contacts/widget/ContactKeyboardView;->KEYBOARD_INDENTIONS_RIGHT:[I

    .line 624
    const/16 v0, 0x50

    sput v0, Lcom/android/contacts/widget/ContactKeyboardView;->BALLOON_WIDTH:I

    .line 625
    const/16 v0, 0x60

    sput v0, Lcom/android/contacts/widget/ContactKeyboardView;->BALLOON_HIGHT:I

    return-void

    .line 618
    :array_0
    .array-data 0x4
        0x37t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
    .end array-data

    .line 621
    :array_1
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data

    .line 622
    :array_2
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 630
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mKeyRect:Landroid/graphics/Rect;

    .line 81
    iput v3, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mCurrentKey:I

    .line 83
    iput v5, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mActivePointerId:I

    .line 451
    iput-boolean v3, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mKeyPressed:Z

    .line 631
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 632
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f0d0250

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0d0251

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0d0252

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f0d026d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    iput-object v1, p0, Lcom/android/contacts/widget/ContactKeyboardView;->KEY_NAME:[Ljava/lang/String;

    .line 636
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mScreenWidth:I

    .line 637
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mScreenHeight:I

    .line 642
    sget v1, Lcom/android/contacts/widget/ContactKeyboardView;->KEYBOARD_HEIGHT:I

    iput v1, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mKeyHeight:I

    .line 643
    new-instance v1, Lcom/android/contacts/widget/BalloonHint;

    invoke-direct {v1, p1}, Lcom/android/contacts/widget/BalloonHint;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mBalloonHint:Lcom/android/contacts/widget/BalloonHint;

    .line 645
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mPaintLabel:Landroid/graphics/Paint;

    .line 646
    iget-object v1, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 647
    iget-object v1, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 648
    iget-object v1, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 651
    iget-object v1, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mPaintLabel:Landroid/graphics/Paint;

    const/high16 v2, 0x4198

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v6, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 652
    iget-object v1, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 655
    const v1, 0x7f090026

    invoke-virtual {p0, v1}, Lcom/android/contacts/widget/ContactKeyboardView;->setBackgroundResource(I)V

    .line 656
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 658
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mPopIcon:Landroid/graphics/drawable/Drawable;

    .line 660
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mDeleteIcon:Landroid/graphics/drawable/Drawable;

    .line 662
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mDeleteBackgroundIcon:Landroid/graphics/drawable/Drawable;

    .line 664
    new-instance v1, Lcom/android/contacts/widget/ContactKeyboardView$LongPressTimer;

    invoke-direct {v1, p0}, Lcom/android/contacts/widget/ContactKeyboardView$LongPressTimer;-><init>(Lcom/android/contacts/widget/ContactKeyboardView;)V

    iput-object v1, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mLongPressTimer:Lcom/android/contacts/widget/ContactKeyboardView$LongPressTimer;

    .line 666
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/widget/ContactKeyboardView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/widget/ContactKeyboardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/contacts/widget/ContactKeyboardView;->deleteLetterFromEditText()V

    return-void
.end method

.method private deleteLetterFromEditText()V
    .locals 8

    .prologue
    .line 914
    iget-object v6, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mTexteditor:Landroid/widget/EditText;

    if-nez v6, :cond_0

    .line 939
    :goto_0
    return-void

    .line 918
    :cond_0
    iget-object v6, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mTexteditor:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    .line 922
    .local v2, editable:Landroid/text/Editable;
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 923
    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 925
    .local v1, b:I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 926
    .local v4, selStart:I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 929
    .local v3, selEnd:I
    if-eq v4, v3, :cond_2

    .line 930
    invoke-interface {v2, v4, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 938
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/widget/ContactKeyboardView;->invalidate()V

    goto :goto_0

    .line 932
    :cond_2
    invoke-static {v2, v3}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 934
    .local v5, to:I
    if-eq v5, v3, :cond_1

    .line 935
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-interface {v2, v6, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1
.end method

.method private final ignoreShortDistance(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v1, 0x4080

    .line 793
    iget v0, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mLastX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mLastY:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 795
    iput p1, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mLastX:F

    .line 796
    iput p2, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mLastY:F

    .line 797
    const/4 v0, 0x1

    .line 800
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mapKeyPosition(FF)I
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v9, 0x0

    .line 760
    cmpg-float v8, p1, v9

    if-ltz v8, :cond_0

    cmpg-float v8, p2, v9

    if-ltz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/widget/ContactKeyboardView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, p1, v8

    if-gtz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/widget/ContactKeyboardView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, p2, v8

    if-lez v8, :cond_1

    .line 761
    :cond_0
    const/4 v8, 0x0

    .line 787
    :goto_0
    return v8

    .line 763
    :cond_1
    sget v8, Lcom/android/contacts/widget/ContactKeyboardView;->KEYBOARD_HEIGHT:I

    sget v9, Lcom/android/contacts/widget/ContactKeyboardView;->KEYBOARD_VERTICAL_MARGING:I

    add-int v3, v8, v9

    .line 764
    .local v3, keyHigth:I
    int-to-float v8, v3

    div-float v8, p2, v8

    float-to-int v6, v8

    .line 765
    .local v6, row:I
    iget-object v8, p0, Lcom/android/contacts/widget/ContactKeyboardView;->KEY_NAME:[Ljava/lang/String;

    array-length v7, v8

    .line 766
    .local v7, rowCount:I
    add-int/lit8 v8, v7, -0x1

    if-le v6, v8, :cond_2

    .line 767
    add-int/lit8 v6, v7, -0x1

    .line 768
    :cond_2
    iget-object v8, p0, Lcom/android/contacts/widget/ContactKeyboardView;->KEY_NAME:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    .line 769
    .local v2, count:I
    invoke-virtual {p0}, Lcom/android/contacts/widget/ContactKeyboardView;->getWidth()I

    move-result v8

    div-int v4, v8, v2

    .line 770
    .local v4, keyWidth:I
    int-to-float v8, v4

    div-float v8, p1, v8

    float-to-int v1, v8

    .line 772
    .local v1, col:I
    add-int/lit8 v8, v7, -0x1

    if-ne v6, v8, :cond_3

    .line 773
    invoke-virtual {p0}, Lcom/android/contacts/widget/ContactKeyboardView;->getWidth()I

    move-result v8

    add-int/lit8 v8, v8, -0x36

    div-int v4, v8, v2

    .line 774
    int-to-float v8, v4

    div-float v8, p1, v8

    float-to-int v1, v8

    .line 775
    add-int/lit8 v8, v2, -0x1

    if-le v1, v8, :cond_3

    .line 776
    add-int/lit8 v1, v2, -0x1

    .line 780
    :cond_3
    sget-object v8, Lcom/android/contacts/widget/ContactKeyboardView;->KEYBOARD_INDENTIONS_LEFT:[I

    aget v8, v8, v6

    sget v9, Lcom/android/contacts/widget/ContactKeyboardView;->KEYBOARD_HORIZONTAL_MARGING:I

    sget-object v10, Lcom/android/contacts/widget/ContactKeyboardView;->KEYBOARD_WIDTHS:[I

    aget v10, v10, v6

    add-int/2addr v9, v10

    mul-int/2addr v9, v1

    add-int v5, v8, v9

    .line 781
    .local v5, left:I
    sget v8, Lcom/android/contacts/widget/ContactKeyboardView;->BALLOON_WIDTH:I

    sget-object v9, Lcom/android/contacts/widget/ContactKeyboardView;->KEYBOARD_WIDTHS:[I

    aget v9, v9, v6

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    sub-int v0, v5, v8

    .line 782
    .local v0, balloonLeft:I
    iget-object v8, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mKeyRect:Landroid/graphics/Rect;

    mul-int v9, v6, v3

    sget v10, Lcom/android/contacts/widget/ContactKeyboardView;->BALLOON_WIDTH:I

    add-int/2addr v10, v0

    mul-int v11, v6, v3

    sget v12, Lcom/android/contacts/widget/ContactKeyboardView;->BALLOON_HIGHT:I

    add-int/2addr v11, v12

    invoke-virtual {v8, v0, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 785
    add-int/lit8 v8, v2, -0x1

    if-le v1, v8, :cond_4

    add-int/lit8 v1, v2, -0x1

    .line 786
    :cond_4
    add-int/lit8 v8, v7, -0x1

    if-le v6, v8, :cond_5

    add-int/lit8 v6, v7, -0x1

    .line 787
    :cond_5
    iget-object v8, p0, Lcom/android/contacts/widget/ContactKeyboardView;->KEY_NAME:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v8, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    goto :goto_0
.end method


# virtual methods
.method public AddStringToEditText(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 747
    iget-object v2, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mTexteditor:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 748
    iget-object v2, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mTexteditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 749
    .local v1, selectionStart:I
    iget-object v2, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mTexteditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 750
    .local v0, selectionEnd:I
    if-ltz v1, :cond_1

    if-eq v1, v0, :cond_1

    .line 751
    iget-object v2, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mTexteditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v1, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 752
    iget-object v2, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mTexteditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 757
    .end local v0           #selectionEnd:I
    .end local v1           #selectionStart:I
    :cond_0
    :goto_0
    return-void

    .line 754
    .restart local v0       #selectionEnd:I
    .restart local v1       #selectionStart:I
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mTexteditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method

.method public SetEditText(Landroid/widget/EditText;)V
    .locals 0
    .parameter "texteditor"

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mTexteditor:Landroid/widget/EditText;

    .line 744
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 670
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 672
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/widget/ContactKeyboardView;->KEY_NAME:[Ljava/lang/String;

    array-length v13, v13

    if-ge v3, v13, :cond_5

    .line 673
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/widget/ContactKeyboardView;->KEY_NAME:[Ljava/lang/String;

    aget-object v10, v13, v3

    .line 674
    .local v10, row:Ljava/lang/String;
    const/4 v13, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->codePointCount(II)I

    move-result v2

    .line 676
    .local v2, count:I
    sget v13, Lcom/android/contacts/widget/ContactKeyboardView;->KEYBOARD_VERTICAL_MARGING:I

    sget v14, Lcom/android/contacts/widget/ContactKeyboardView;->KEYBOARD_HEIGHT:I

    add-int/2addr v13, v14

    mul-int/2addr v13, v3

    sget v14, Lcom/android/contacts/widget/ContactKeyboardView;->KEYBOARD_VERTICAL_MARGING:I

    add-int v12, v13, v14

    .line 677
    .local v12, top:I
    add-int/lit8 v13, v3, 0x1

    sget v14, Lcom/android/contacts/widget/ContactKeyboardView;->KEYBOARD_VERTICAL_MARGING:I

    sget v15, Lcom/android/contacts/widget/ContactKeyboardView;->KEYBOARD_HEIGHT:I

    add-int/2addr v14, v15

    mul-int v1, v13, v14

    .line 679
    .local v1, bottom:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    if-ge v5, v2, :cond_4

    .line 680
    add-int/lit8 v13, v5, 0x1

    invoke-virtual {v10, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 681
    .local v11, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/widget/ContactKeyboardView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v13, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 682
    .local v8, measuredWidth:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/widget/ContactKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v13, v13, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/widget/ContactKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v7, v13, v14

    .line 683
    .local v7, measuredHeight:I
    const/4 v4, 0x0

    .line 685
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    sget-object v13, Lcom/android/contacts/widget/ContactKeyboardView;->KEYBOARD_INDENTIONS_LEFT:[I

    aget v13, v13, v3

    sget v14, Lcom/android/contacts/widget/ContactKeyboardView;->KEYBOARD_HORIZONTAL_MARGING:I

    sget-object v15, Lcom/android/contacts/widget/ContactKeyboardView;->KEYBOARD_WIDTHS:[I

    aget v15, v15, v3

    add-int/2addr v14, v15

    mul-int/2addr v14, v5

    add-int v6, v13, v14

    .line 686
    .local v6, left:I
    sget-object v13, Lcom/android/contacts/widget/ContactKeyboardView;->KEYBOARD_WIDTHS:[I

    aget v13, v13, v3

    add-int v9, v6, v13

    .line 687
    .local v9, right:I

    .line 691
    :cond_0
    invoke-static {v11}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 692
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/widget/ContactKeyboardView;->mDeleteIcon:Landroid/graphics/drawable/Drawable;

    .line 693
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/contacts/widget/ContactKeyboardView;->mKeyPressed:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/widget/ContactKeyboardView;->KEY_NAME:[Ljava/lang/String;

    aget-object v13, v13, v3

    invoke-virtual {v13, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/widget/ContactKeyboardView;->mCurrentKey:I

    if-ne v13, v14, :cond_1

    .line 695
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/widget/ContactKeyboardView;->mPopIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v6, v12, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 696
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/widget/ContactKeyboardView;->mPopIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 703
    :goto_2

    .line 704
    add-int/lit8 v12, v12, 0x19

    add-int/lit8 v1, v12, 0x1e

    .line 706
    invoke-virtual {v4, v6, v12, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 707
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 679
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 698
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/widget/ContactKeyboardView;->mDeleteBackgroundIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v6, v12, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 699
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/widget/ContactKeyboardView;->mDeleteBackgroundIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 709
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/contacts/widget/ContactKeyboardView;->mKeyPressed:Z

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/widget/ContactKeyboardView;->KEY_NAME:[Ljava/lang/String;

    aget-object v13, v13, v3

    invoke-virtual {v13, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/widget/ContactKeyboardView;->mCurrentKey:I

    if-ne v13, v14, :cond_3

    .line 712
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/widget/ContactKeyboardView;->mPopIcon:Landroid/graphics/drawable/Drawable;

    .line 717
    :goto_4
    invoke-virtual {v4, v6, v12, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 718
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 719
    int-to-float v13, v6

    sget-object v14, Lcom/android/contacts/widget/ContactKeyboardView;->KEYBOARD_WIDTHS:[I

    aget v14, v14, v3

    int-to-float v14, v14

    sub-float/2addr v14, v8

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/widget/ContactKeyboardView;->mKeyHeight:I

    sub-int/2addr v14, v7

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/widget/ContactKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v15, v15, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/widget/ContactKeyboardView;->mPaintLabel:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v13, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 715
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/widget/ContactKeyboardView;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 672
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v6           #left:I
    .end local v7           #measuredHeight:I
    .end local v8           #measuredWidth:F
    .end local v9           #right:I
    .end local v11           #s:Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 724
    .end local v1           #bottom:I
    .end local v2           #count:I
    .end local v5           #j:I
    .end local v10           #row:Ljava/lang/String;
    .end local v12           #top:I
    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 811
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 812
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 910
    :cond_0
    :goto_0
    :pswitch_0
    return v9

    .line 815
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 816
    .local v0, actionIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 817
    .local v3, pid:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v5, v7

    .line 818
    .local v5, x:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    add-int/lit8 v6, v7, -0xa

    .line 819
    .local v6, y:I
    int-to-float v7, v5

    iput v7, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mLastX:F

    .line 820
    int-to-float v7, v6

    iput v7, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mLastY:F

    .line 821
    iget v7, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mActivePointerId:I

    if-eq v7, v8, :cond_1

    .line 827
    :cond_1
    iput v3, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mActivePointerId:I

    .line 828
    int-to-float v7, v5

    int-to-float v8, v6

    invoke-direct {p0, v7, v8}, Lcom/android/contacts/widget/ContactKeyboardView;->mapKeyPosition(FF)I

    move-result v7

    iput v7, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mCurrentKey:I

    .line 830
    iput-boolean v9, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mKeyPressed:Z

    .line 831
    iget v7, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mCurrentKey:I

    if-nez v7, :cond_2

    .line 832
    iget-object v7, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mBalloonHint:Lcom/android/contacts/widget/BalloonHint;

    invoke-virtual {v7}, Lcom/android/contacts/widget/BalloonHint;->hideBalloonHint()V

    .line 843
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/widget/ContactKeyboardView;->invalidate()V

    goto :goto_0

    .line 835
    :cond_2
    iget v7, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mCurrentKey:I

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    .line 836
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 837
    iget-object v7, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mBalloonHint:Lcom/android/contacts/widget/BalloonHint;

    iget-object v8, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mKeyRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p0, v8, v1}, Lcom/android/contacts/widget/BalloonHint;->showBalloonHint(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/String;)V

    goto :goto_1

    .line 839
    :cond_3
    iget-object v7, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mLongPressTimer:Lcom/android/contacts/widget/ContactKeyboardView$LongPressTimer;

    invoke-virtual {v7}, Lcom/android/contacts/widget/ContactKeyboardView$LongPressTimer;->startTimer()V

    goto :goto_1

    .line 848
    .end local v0           #actionIndex:I
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #pid:I
    .end local v5           #x:I
    .end local v6           #y:I
    :pswitch_2
    iget v7, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mActivePointerId:I

    if-eq v7, v8, :cond_0

    .line 854
    iget v7, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 855
    .local v4, pointerIndex:I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 856
    .local v5, x:F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    const/high16 v8, -0x3ee0

    add-float v6, v7, v8

    .line 857
    .local v6, y:F
    invoke-direct {p0, v5, v6}, Lcom/android/contacts/widget/ContactKeyboardView;->ignoreShortDistance(FF)Z

    move-result v7

    if-nez v7, :cond_0

    .line 861
    invoke-direct {p0, v5, v6}, Lcom/android/contacts/widget/ContactKeyboardView;->mapKeyPosition(FF)I

    move-result v7

    iput v7, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mCurrentKey:I

    .line 862
    iput-boolean v9, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mKeyPressed:Z

    .line 863
    iget v7, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mCurrentKey:I

    if-nez v7, :cond_4

    .line 864
    iget-object v7, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mBalloonHint:Lcom/android/contacts/widget/BalloonHint;

    invoke-virtual {v7}, Lcom/android/contacts/widget/BalloonHint;->hideBalloonHint()V

    .line 874
    :goto_2
    invoke-virtual {p0}, Lcom/android/contacts/widget/ContactKeyboardView;->invalidate()V

    goto/16 :goto_0

    .line 866
    :cond_4
    iget v7, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mCurrentKey:I

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    .line 867
    .restart local v1       #key:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 868
    iget-object v7, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mLongPressTimer:Lcom/android/contacts/widget/ContactKeyboardView$LongPressTimer;

    invoke-virtual {v7}, Lcom/android/contacts/widget/ContactKeyboardView$LongPressTimer;->removeTimer()Z

    .line 869
    iget-object v7, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mBalloonHint:Lcom/android/contacts/widget/BalloonHint;

    iget-object v8, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mKeyRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p0, v8, v1}, Lcom/android/contacts/widget/BalloonHint;->showBalloonHint(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/String;)V

    goto :goto_2

    .line 871
    :cond_5
    iget-object v7, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mBalloonHint:Lcom/android/contacts/widget/BalloonHint;

    invoke-virtual {v7}, Lcom/android/contacts/widget/BalloonHint;->hideBalloonHint()V

    goto :goto_2

    .line 881
    .end local v1           #key:Ljava/lang/String;
    .end local v4           #pointerIndex:I
    .end local v5           #x:F
    .end local v6           #y:F
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 882
    .restart local v0       #actionIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 883
    .restart local v3       #pid:I
    iget v7, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mActivePointerId:I

    if-ne v7, v3, :cond_6

    .line 884
    iput v8, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mActivePointerId:I

    .line 885
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v5, v7

    .line 886
    .local v5, x:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    add-int/lit8 v6, v7, -0xa

    .line 887
    .local v6, y:I
    iput v10, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mCurrentKey:I

    .line 888
    int-to-float v7, v5

    int-to-float v8, v6

    invoke-direct {p0, v7, v8}, Lcom/android/contacts/widget/ContactKeyboardView;->mapKeyPosition(FF)I

    move-result v7

    iput v7, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mCurrentKey:I

    .line 890
    iget-object v7, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mBalloonHint:Lcom/android/contacts/widget/BalloonHint;

    invoke-virtual {v7}, Lcom/android/contacts/widget/BalloonHint;->hideBalloonHint()V

    .line 893
    iget v7, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mCurrentKey:I

    if-eqz v7, :cond_6

    .line 894
    iget v7, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mCurrentKey:I

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    .line 895
    .local v2, lable:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 897
    invoke-direct {p0}, Lcom/android/contacts/widget/ContactKeyboardView;->deleteLetterFromEditText()V

    .line 904
    .end local v2           #lable:Ljava/lang/String;
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/android/contacts/widget/ContactKeyboardView;->invalidate()V

    .line 905
    iput-boolean v10, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mKeyPressed:Z

    goto/16 :goto_0

    .line 900
    .restart local v2       #lable:Ljava/lang/String;
    .restart local v5       #x:I
    .restart local v6       #y:I
    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/contacts/widget/ContactKeyboardView;->AddStringToEditText(Ljava/lang/String;)V

    goto :goto_3

    .line 812
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 952
    invoke-virtual {p0}, Lcom/android/contacts/widget/ContactKeyboardView;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 955
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 956
    iget-object v0, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mOnVisibilityChangeListener:Lcom/android/contacts/widget/ContactKeyboardView$OnVisibilityChangeListener;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/android/contacts/widget/ContactKeyboardView;->mOnVisibilityChangeListener:Lcom/android/contacts/widget/ContactKeyboardView$OnVisibilityChangeListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/widget/ContactKeyboardView$OnVisibilityChangeListener;->OnVisibilityChange(I)V

    goto :goto_0
.end method

.class Landroid/widget/DrawerLayout$ViewDragCallback;
.super Landroid/widget/ViewDragHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDragCallback"
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/DrawerLayout;

.field private final b:I

.field private c:Landroid/widget/ViewDragHelper;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/widget/DrawerLayout;I)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    invoke-direct {p0}, Landroid/widget/ViewDragHelper$Callback;-><init>()V

    new-instance p1, Landroid/widget/DrawerLayout$ViewDragCallback$1;

    invoke-direct {p1, p0}, Landroid/widget/DrawerLayout$ViewDragCallback$1;-><init>(Landroid/widget/DrawerLayout$ViewDragCallback;)V

    iput-object p1, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->d:Ljava/lang/Runnable;

    iput p2, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->b:I

    return-void
.end method

.method private a()V
    .locals 2

    iget v0, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x5

    :cond_0
    iget-object v0, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Landroid/widget/DrawerLayout$ViewDragCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/DrawerLayout$ViewDragCallback;->b()V

    return-void
.end method

.method private b()V
    .locals 6

    iget-object v0, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->c:Landroid/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/widget/ViewDragHelper;->getEdgeSize()I

    move-result v0

    iget v1, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v5, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    invoke-virtual {v5, v4}, Landroid/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    :cond_1
    add-int/2addr v2, v0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v4

    iget-object v2, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    invoke-virtual {v2}, Landroid/widget/DrawerLayout;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_1
    if-eqz v4, :cond_5

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt v0, v2, :cond_4

    :cond_3
    if-nez v1, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le v0, v2, :cond_5

    :cond_4
    iget-object v0, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    invoke-virtual {v0, v4}, Landroid/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/DrawerLayout$LayoutParams;

    iget-object v1, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->c:Landroid/widget/ViewDragHelper;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v1, v4, v2, v5}, Landroid/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    iput-boolean v3, v0, Landroid/widget/DrawerLayout$LayoutParams;->b:Z

    iget-object v0, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/widget/DrawerLayout;->invalidate()V

    invoke-direct {p0}, Landroid/widget/DrawerLayout$ViewDragCallback;->a()V

    iget-object v0, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/widget/DrawerLayout;->b()V

    :cond_5
    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 1

    iget-object p3, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    const/4 v0, 0x3

    invoke-virtual {p3, p1, v0}, Landroid/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    neg-int p1, p1

    const/4 p3, 0x0

    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_0
    iget-object p3, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    invoke-virtual {p3}, Landroid/widget/DrawerLayout;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int p1, p3, p1

    goto :goto_0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    return p1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onEdgeDragStarted(II)V
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    const/4 v0, 0x5

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->c:Landroid/widget/ViewDragHelper;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public onEdgeLock(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onEdgeTouched(II)V
    .locals 2

    iget-object p1, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    iget-object p2, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->d:Ljava/lang/Runnable;

    const-wide/16 v0, 0xa0

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/DrawerLayout$LayoutParams;

    const/4 p2, 0x0

    iput-boolean p2, p1, Landroid/widget/DrawerLayout$LayoutParams;->b:Z

    invoke-direct {p0}, Landroid/widget/DrawerLayout$ViewDragCallback;->a()V

    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 3

    iget-object v0, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    iget v1, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->b:I

    iget-object v2, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->c:Landroid/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroid/widget/ViewDragHelper;->getCapturedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/widget/DrawerLayout;->a(IILandroid/view/View;)V

    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    iget-object p4, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    const/4 p5, 0x3

    invoke-virtual {p4, p1, p5}, Landroid/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result p4

    if-eqz p4, :cond_0

    add-int/2addr p2, p3

    int-to-float p2, p2

    :goto_0
    int-to-float p3, p3

    div-float/2addr p2, p3

    goto :goto_1

    :cond_0
    iget-object p4, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    invoke-virtual {p4}, Landroid/widget/DrawerLayout;->getWidth()I

    move-result p4

    sub-int/2addr p4, p2

    int-to-float p2, p4

    goto :goto_0

    :goto_1
    iget-object p3, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    invoke-virtual {p3, p1, p2}, Landroid/widget/DrawerLayout;->b(Landroid/view/View;F)V

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-nez p2, :cond_1

    const/4 p2, 0x4

    goto :goto_2

    :cond_1
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    invoke-virtual {p1}, Landroid/widget/DrawerLayout;->invalidate()V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 5

    iget-object p3, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    invoke-virtual {p3, p1}, Landroid/widget/DrawerLayout;->c(Landroid/view/View;)F

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Landroid/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    cmpl-float v1, p2, v3

    if-gtz v1, :cond_1

    cmpl-float p2, p2, v3

    if-nez p2, :cond_0

    cmpl-float p2, p3, v2

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    neg-int p2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/widget/DrawerLayout;->getWidth()I

    move-result v1

    cmpg-float v4, p2, v3

    if-ltz v4, :cond_3

    cmpl-float p2, p2, v3

    if-nez p2, :cond_4

    cmpl-float p2, p3, v2

    if-lez p2, :cond_4

    :cond_3
    sub-int/2addr v1, v0

    :cond_4
    move p2, v1

    :goto_1
    iget-object p3, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->c:Landroid/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    iget-object p1, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    invoke-virtual {p1}, Landroid/widget/DrawerLayout;->invalidate()V

    return-void
.end method

.method public removeCallbacks()V
    .locals 2

    iget-object v0, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    iget-object v1, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/DrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDragger(Landroid/widget/ViewDragHelper;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->c:Landroid/widget/ViewDragHelper;

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 1

    iget-object p2, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    invoke-virtual {p2, p1}, Landroid/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    iget v0, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->b:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/widget/DrawerLayout$ViewDragCallback;->a:Landroid/widget/DrawerLayout;

    invoke-virtual {p2, p1}, Landroid/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

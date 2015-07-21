.class public Lcom/android/bluetooth/ble/MiuiSearchDrawable;
.super Lcom/android/bluetooth/ble/MiuiAnimationController;
.source "MiuiSearchDrawable.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    const v0, 0x7f020003

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/ble/MiuiSearchDrawable;-><init>(Landroid/content/Context;I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconRes"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/ble/MiuiAnimationController;-><init>(Landroid/content/Context;I)V

    .line 19
    return-void
.end method


# virtual methods
.method protected getAnimationDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Animatable;
    .locals 6
    .param p1, "animationIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 34
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 35
    .local v1, "icon":Landroid/graphics/drawable/StateListDrawable;
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v5, 0x101009e

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v2

    .line 36
    .local v2, "index":I
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 37
    .local v0, "anim":Landroid/graphics/drawable/AnimatedRotateDrawable;
    return-object v0
.end method

.method public getSearchIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/MiuiSearchDrawable;->getAnimationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/bluetooth/ble/MiuiAnimationController;->stopAnimation()V

    .line 28
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/MiuiSearchDrawable;->getAnimationDrawable()Landroid/graphics/drawable/Animatable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 29
    .local v0, "anim":Landroid/graphics/drawable/AnimatedRotateDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->stop()V

    .line 30
    return-void
.end method

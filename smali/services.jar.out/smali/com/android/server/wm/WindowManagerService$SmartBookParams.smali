.class Lcom/android/server/wm/WindowManagerService$SmartBookParams;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SmartBookParams"
.end annotation


# static fields
.field static final SMARTBOOK_HAS_PLUGGED_IN:I = 0x2

.field static final SMARTBOOK_HAS_PLUGGED_OUT:I = 0x0

.field static final SMARTBOOK_PLUGGING_IN:I = 0x1

.field static final SMARTBOOK_PLUGGING_OUT:I = 0x3

.field static mPlugState:I

.field static final sWakeUpSmartBookList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mDebugEnabled:Z

.field mPendingTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mPermitWakeUp:Z

.field mTurnOnScreenWin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->sWakeUpSmartBookList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->sWakeUpSmartBookList:Ljava/util/ArrayList;

    const-string v1, "com.android.phone.InCallScreen"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->sWakeUpSmartBookList:Ljava/util/ArrayList;

    const-string v1, "com.android.camera.CameraLauncher"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->sWakeUpSmartBookList:Ljava/util/ArrayList;

    const-string v1, "com.android.camera.Camera"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->sWakeUpSmartBookList:Ljava/util/ArrayList;

    const-string v1, "com.android.gallery3d.app.Wallpaper"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->sWakeUpSmartBookList:Ljava/util/ArrayList;

    const-string v1, "com.android.camera.VideoCamera"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mDebugEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPermitWakeUp:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mTurnOnScreenWin:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPendingTasks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public checkWindowInSmartBookWhiteList()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public flushPendingTasks()V
    .locals 7

    .prologue
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPendingTasks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .local v2, task:Ljava/lang/Runnable;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2           #task:Ljava/lang/Runnable;
    :cond_1
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Pending tasks are all flushed done"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    return-void

    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getPlugState()I
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPlugged()Z
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerPendingTask(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "task"

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPendingTasks:Ljava/util/ArrayList;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTurnOnScreen(Ljava/lang/String;)V
    .locals 3
    .parameter "win"

    .prologue
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mTurnOnScreenWin:Ljava/lang/String;

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Win:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " turning on screen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public transitSmartBookPluginState(ZZZ)Z
    .locals 6
    .parameter "plugin"
    .parameter "fromUEvent"
    .parameter "fromDispEvent"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transitSmartBookPluginState, current state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "plugin:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fromUEvent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fromDispEvent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    .local v0, oldState:I
    sget v3, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    sget v3, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    if-eq v0, v3, :cond_7

    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state transit to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    move v1, v2

    :goto_1
    return v1

    :pswitch_0
    if-nez p1, :cond_1

    monitor-exit p0

    goto :goto_1

    .end local v0           #oldState:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0       #oldState:I
    :cond_1
    if-eqz p3, :cond_2

    const/4 v3, 0x2

    :try_start_1
    sput v3, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    sput v3, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    goto :goto_0

    :pswitch_1
    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    const/4 v3, 0x2

    sput v3, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    goto :goto_0

    :cond_3
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    sput v3, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    goto :goto_0

    :pswitch_2
    if-eqz p1, :cond_4

    monitor-exit p0

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    const/4 v3, 0x0

    sput v3, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_0

    const/4 v3, 0x3

    sput v3, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    goto :goto_0

    :pswitch_3
    if-nez p1, :cond_6

    if-eqz p3, :cond_6

    const/4 v3, 0x0

    sput v3, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    sput v3, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    goto :goto_0

    :cond_7
    const-string v2, "WindowManager"

    const-string v3, "state no change"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

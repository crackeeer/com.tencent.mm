.class final Lcom/tencent/mm/ui/chatting/ChattingUI$a$44$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/ui/chatting/ChattingUI$a$44;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lBk:Lcom/tencent/mm/e/a/km;

.field final synthetic lBl:Lcom/tencent/mm/ui/chatting/ChattingUI$a$44;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI$a$44;Lcom/tencent/mm/e/a/km;)V
    .locals 0

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$a$44$1;->lBl:Lcom/tencent/mm/ui/chatting/ChattingUI$a$44;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$a$44$1;->lBk:Lcom/tencent/mm/e/a/km;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1056
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$a$44$1;->lBk:Lcom/tencent/mm/e/a/km;

    .line 1057
    invoke-static {}, Lcom/tencent/mm/pluginsdk/i$a;->aTv()Lcom/tencent/mm/pluginsdk/i$f;

    move-result-object v3

    iget-object v4, v0, Lcom/tencent/mm/e/a/km;->asS:Lcom/tencent/mm/e/a/km$a;

    iget-object v4, v4, Lcom/tencent/mm/e/a/km$a;->agg:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/tencent/mm/pluginsdk/i$f;->nz(Ljava/lang/String;)Lcom/tencent/mm/storage/a/c;

    move-result-object v3

    .line 1058
    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$a$44$1;->lBl:Lcom/tencent/mm/ui/chatting/ChattingUI$a$44;

    iget-object v4, v4, Lcom/tencent/mm/ui/chatting/ChattingUI$a$44;->lAY:Lcom/tencent/mm/ui/chatting/ChattingUI$a;

    iget-object v4, v4, Lcom/tencent/mm/ui/chatting/ChattingUI$a;->lrK:Lcom/tencent/mm/storage/k;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/tencent/mm/e/a/km;->asS:Lcom/tencent/mm/e/a/km$a;

    iget-object v4, v4, Lcom/tencent/mm/e/a/km$a;->ajT:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/be;->kf(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/tencent/mm/e/a/km;->asS:Lcom/tencent/mm/e/a/km$a;

    iget-object v4, v4, Lcom/tencent/mm/e/a/km$a;->ajT:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$a$44$1;->lBl:Lcom/tencent/mm/ui/chatting/ChattingUI$a$44;

    iget-object v5, v5, Lcom/tencent/mm/ui/chatting/ChattingUI$a$44;->lAY:Lcom/tencent/mm/ui/chatting/ChattingUI$a;

    iget-object v5, v5, Lcom/tencent/mm/ui/chatting/ChattingUI$a;->lrK:Lcom/tencent/mm/storage/k;

    iget-object v5, v5, Lcom/tencent/mm/e/b/p;->field_username:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/tencent/mm/e/a/km;->asS:Lcom/tencent/mm/e/a/km$a;

    iget-object v4, v4, Lcom/tencent/mm/e/a/km$a;->ajT:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$a$44$1;->lBl:Lcom/tencent/mm/ui/chatting/ChattingUI$a$44;

    iget-object v5, v5, Lcom/tencent/mm/ui/chatting/ChattingUI$a$44;->lAY:Lcom/tencent/mm/ui/chatting/ChattingUI$a;

    iget-object v5, v5, Lcom/tencent/mm/ui/chatting/ChattingUI$a;->lrK:Lcom/tencent/mm/storage/k;

    iget-object v5, v5, Lcom/tencent/mm/e/b/p;->field_encryptUsername:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-object v0, v0, Lcom/tencent/mm/e/a/km;->asS:Lcom/tencent/mm/e/a/km$a;

    iget-object v0, v0, Lcom/tencent/mm/e/a/km$a;->ajT:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/be;->kf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    .line 1059
    :goto_0
    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$a$44$1;->lBl:Lcom/tencent/mm/ui/chatting/ChattingUI$a$44;

    iget-object v4, v4, Lcom/tencent/mm/ui/chatting/ChattingUI$a$44;->lAY:Lcom/tencent/mm/ui/chatting/ChattingUI$a;

    invoke-static {v4}, Lcom/tencent/mm/ui/chatting/ChattingUI$a;->p(Lcom/tencent/mm/ui/chatting/ChattingUI$a;)Lcom/tencent/mm/pluginsdk/ui/chat/c;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    .line 1060
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$a$44$1;->lBl:Lcom/tencent/mm/ui/chatting/ChattingUI$a$44;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI$a$44;->lAY:Lcom/tencent/mm/ui/chatting/ChattingUI$a;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI$a;->p(Lcom/tencent/mm/ui/chatting/ChattingUI$a;)Lcom/tencent/mm/pluginsdk/ui/chat/c;

    move-result-object v4

    iput-object v3, v4, Lcom/tencent/mm/pluginsdk/ui/chat/c;->dlK:Lcom/tencent/mm/storage/a/c;

    iget-object v0, v4, Lcom/tencent/mm/pluginsdk/ui/chat/c;->jiZ:Lcom/tencent/mm/ui/base/o;

    if-eqz v0, :cond_4

    iget-object v0, v4, Lcom/tencent/mm/pluginsdk/ui/chat/c;->jiZ:Lcom/tencent/mm/ui/base/o;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/o;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "MicroMsg.emoji.EmotionRewardMagicBubble"

    const-string/jumbo v1, "reward magic is showing."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/v;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 1058
    goto :goto_0

    .line 1060
    :cond_4
    iget-object v0, v4, Lcom/tencent/mm/pluginsdk/ui/chat/c;->dlK:Lcom/tencent/mm/storage/a/c;

    if-eqz v0, :cond_5

    iget-object v0, v4, Lcom/tencent/mm/pluginsdk/ui/chat/c;->jiY:Lcom/tencent/mm/pluginsdk/ui/emoji/PreViewEmojiView;

    if-eqz v0, :cond_5

    iget-object v0, v4, Lcom/tencent/mm/pluginsdk/ui/chat/c;->jiZ:Lcom/tencent/mm/ui/base/o;

    if-nez v0, :cond_6

    :cond_5
    const-string/jumbo v0, "MicroMsg.emoji.EmotionRewardMagicBubble"

    const-string/jumbo v1, "some things is null."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/v;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/tencent/mm/storage/a/c;->bdN()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v3, Lcom/tencent/mm/storage/a/c;->field_groupId:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/a/c;->yt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lcom/tencent/mm/storage/a/c;->cG(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v4, Lcom/tencent/mm/pluginsdk/ui/chat/c;->jiY:Lcom/tencent/mm/pluginsdk/ui/emoji/PreViewEmojiView;

    new-instance v5, Lcom/tencent/mm/pluginsdk/ui/chat/c$1;

    invoke-direct {v5, v4}, Lcom/tencent/mm/pluginsdk/ui/chat/c$1;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/c;)V

    invoke-virtual {v3, v0, v5}, Lcom/tencent/mm/pluginsdk/ui/emoji/PreViewEmojiView;->a(Ljava/lang/String;Lcom/tencent/mm/plugin/gif/d;)V

    :cond_7
    iget-object v0, v4, Lcom/tencent/mm/pluginsdk/ui/chat/c;->jiZ:Lcom/tencent/mm/ui/base/o;

    iget-object v3, v4, Lcom/tencent/mm/pluginsdk/ui/chat/c;->jiY:Lcom/tencent/mm/pluginsdk/ui/emoji/PreViewEmojiView;

    invoke-virtual {v3}, Lcom/tencent/mm/pluginsdk/ui/emoji/PreViewEmojiView;->getIntrinsicWidth()I

    move-result v3

    iget v5, v4, Lcom/tencent/mm/pluginsdk/ui/chat/c;->jjb:I

    mul-int/2addr v3, v5

    iget-object v5, v4, Lcom/tencent/mm/pluginsdk/ui/chat/c;->jiY:Lcom/tencent/mm/pluginsdk/ui/emoji/PreViewEmojiView;

    invoke-virtual {v5}, Lcom/tencent/mm/pluginsdk/ui/emoji/PreViewEmojiView;->getIntrinsicHeight()I

    move-result v5

    div-int/2addr v3, v5

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/o;->setWidth(I)V

    iget-object v0, v4, Lcom/tencent/mm/pluginsdk/ui/chat/c;->jiZ:Lcom/tencent/mm/ui/base/o;

    iget v3, v4, Lcom/tencent/mm/pluginsdk/ui/chat/c;->jjb:I

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/o;->setHeight(I)V

    const-string/jumbo v0, "MicroMsg.emoji.EmotionRewardMagicBubble"

    const-string/jumbo v3, "width:%d height:%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v4, Lcom/tencent/mm/pluginsdk/ui/chat/c;->jiY:Lcom/tencent/mm/pluginsdk/ui/emoji/PreViewEmojiView;

    invoke-virtual {v6}, Lcom/tencent/mm/pluginsdk/ui/emoji/PreViewEmojiView;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, v4, Lcom/tencent/mm/pluginsdk/ui/chat/c;->jiY:Lcom/tencent/mm/pluginsdk/ui/emoji/PreViewEmojiView;

    invoke-virtual {v6}, Lcom/tencent/mm/pluginsdk/ui/emoji/PreViewEmojiView;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v3, v5}, Lcom/tencent/mm/sdk/platformtools/v;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v4, Lcom/tencent/mm/pluginsdk/ui/chat/c;->jja:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, v4, Lcom/tencent/mm/pluginsdk/ui/chat/c;->jja:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v2, v4, Lcom/tencent/mm/pluginsdk/ui/chat/c;->jiZ:Lcom/tencent/mm/ui/base/o;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/base/o;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iget-object v2, v4, Lcom/tencent/mm/pluginsdk/ui/chat/c;->jiZ:Lcom/tencent/mm/ui/base/o;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/base/o;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    iget-object v0, v4, Lcom/tencent/mm/pluginsdk/ui/chat/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v3, v0, :cond_8

    iget-object v0, v4, Lcom/tencent/mm/pluginsdk/ui/chat/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b00b0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v3, v4, Lcom/tencent/mm/pluginsdk/ui/chat/c;->jjc:I

    add-int/2addr v0, v3

    :goto_2
    if-ge v2, v0, :cond_9

    :goto_3
    iget-object v2, v4, Lcom/tencent/mm/pluginsdk/ui/chat/c;->jiZ:Lcom/tencent/mm/ui/base/o;

    iget-object v3, v4, Lcom/tencent/mm/pluginsdk/ui/chat/c;->jja:Landroid/view/View;

    invoke-virtual {v2, v3, v1, v1, v0}, Lcom/tencent/mm/ui/base/o;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, v4, Lcom/tencent/mm/pluginsdk/ui/chat/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b00b1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v3, v4, Lcom/tencent/mm/pluginsdk/ui/chat/c;->jjc:I

    add-int/2addr v0, v3

    goto :goto_2

    :cond_9
    move v0, v2

    goto :goto_3
.end method

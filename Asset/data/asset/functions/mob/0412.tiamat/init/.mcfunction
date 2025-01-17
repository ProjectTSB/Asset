#> asset:mob/0412.tiamat/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/412/init

# 継承元の処理実行
    function asset:mob/super.init

# 独自init処理
    # 移動
        tp @s ^ ^0.5 ^ ~ 0
    # NBT設定
    # Aj関連初期化
        function asset:mob/0412.tiamat/init/animated_java
    # スコア初期化
        scoreboard players set @s BG.EventTimer 0
        # scoreboard players set @s BG.ActCount 0
        # scoreboard players set @s BG.Idle.Count 0
    # 登場モーション再生
        tag @s add BG.Skill.Start
    # 最も近くのプレイヤーにヘイトを向ける
        tag @p[distance=..80] add BG.MainTarget

# テスト
    tag @s add BG.State.Wait

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
        scoreboard players set @s BG.ActCount 0
    # 登場モーション再生
        tag @s add BG.Skill.Start

# 終盤まで耐性付与
    # data modify storage api: Argument set value {ID:150,Duration:2147483647,Stack:2}
    # function api:entity/mob/effect/give
    # function api:entity/mob/effect/reset
    # effect give @s resistance infinite 2 true

# デバッグ用
    # tag @s add BG.State.Wait

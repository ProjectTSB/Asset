#> asset:mob/0456.gargo_ex_machina/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/456/init

# AJロード
    # data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_heiloang",Active:true}]
    # function asset:datapack/set_activation_state

# 継承元の処理実行
    function asset:mob/super.init

# 独自init処理
    # 登場演出再生
        tag @s add BE.Skill.Start
    # 中心点設置
        summon marker ~ ~0.5 ~ {Tags:["BE.CenterPosition"]}
        execute as @e[type=marker,tag=BE.CenterPosition] at @s run tp @s ~ ~ ~ 0 0
    # 移動
        execute at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^2 ^28 ~180 0
    # NBT設定
    # Aj関連初期化
        function asset:mob/0456.gargo_ex_machina/init/animated_java
    # スコア初期化
        # scoreboard players set @s BE.Phase 0
    # 移動
        # execute at @s run tp @s ^ ^ ^ ~ 0

# デバッグ
    # scoreboard players set @s BE.Phase 2

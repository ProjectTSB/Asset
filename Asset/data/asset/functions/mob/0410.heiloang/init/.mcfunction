#> asset:mob/0410.heiloang/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/410/init


# AJロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_heiloang_aj",Active:true},{Datapack:"AJ_behemoth_aj",Active:true},{Datapack:"AJ_tiamat_aj",Active:true},{Datapack:"AJ_heiloang_flare_aj",Active:true}]
    function asset:datapack/set_activation_state

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
        function asset:mob/0410.heiloang/init/animated_java
    # スコア初期化
        scoreboard players set @s BE.Phase 0
        scoreboard players set @s BE.ActCount 0
        scoreboard players set @s BE.Idle.Count 0
        scoreboard players set @s BE.Charge.Count -1
    # エンハンスドディザスターの順番決定
        function asset:mob/0410.heiloang/tick/util/set_ehd_order
    # 移動
        execute at @s run tp @s ^ ^ ^3 ~ 0

# デバッグ
    # scoreboard players set @s BE.Phase 2

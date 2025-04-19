#> asset:mob/0380.haruclaire_v3/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/380/init

# AJロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_haruclaire_aj",Active:true},{Datapack:"AJ_ic_capri_aj",Active:true},{Datapack:"AJ_ic_tau_aj",Active:true},{Datapack:"AJ_ic_pisce_aj",Active:true}]
    function asset:datapack/set_activation_state

# 継承元の処理実行
    function asset:mob/super.init

# 独自init処理
    # 中心点設置
        summon marker ~ ~ ~ {Tags:["AK.CenterPosition"]}
        execute as @e[type=marker,tag=AK.CenterPosition,distance=..60] at @s run tp @s ~ ~ ~ 0 0
    # AJ関連初期化
        function asset:mob/0380.haruclaire_v3/init/animated_java

# 移動
    tp @s ~ ~0.5 ~

# スコア初期化
    scoreboard players set @s AK.ActionCount 0

# 登場演出開始
    tag @s add AK.Skill.Start

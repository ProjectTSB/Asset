#> asset:mob/0327.eclael/init/
# @within asset:mob/alias/327/init


# AJロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_eclael",Active:true}]
    function asset:datapack/set_activation_state

# 多重召喚対策
    execute if entity @e[type=wither_skeleton,tag=93.EndInit] run return run function asset:mob/0327.eclael/remove/

# 継承元の処理実行
    function asset:mob/super.init

# スコア初期化
    scoreboard players set @s 93.AnimationTimer 0
    scoreboard players set @s 93.ActionCount 0
    scoreboard players set @s 93.DamageIntervalTimer 0

# 中心点召喚
    summon marker ~ ~2.5 ~ {Tags:["93.Marker.SpawnPoint"]}

# モデルが見えやすいように前に移動
    tp @s ^ ^ ^2

# animated javaモデル召喚
    execute at @s positioned ~ ~-20 ~ rotated ~ 0 run function animated_java:eclael/summon {args:{animation: '29_0_phase_start', start_animation: true}}

# 登場演出再生
    tag @s add 93.Skill.Former.Start

# 終了
    tag @s add 93.EndInit

# デバッグ
    # tag @s add 93.Phase.Latter

#> asset:mob/0341.louvert/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/341/init

# AJロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_louvert",Active:true}]
    function asset:datapack/set_activation_state

# 召喚位置を記録
    summon marker ~ ~1 ~ {Tags:["9H.Marker.SummonPoint"]}

# スコア初期化
    scoreboard players set @s 9H.AnimationTick 0
    scoreboard players set @s 9H.AnimationNum 121
    scoreboard players set @s 9H.SkillSelect 0
    scoreboard players set @s 9H.HPPer 100
    scoreboard players set @s 9H.FalterCount 0

# Hard処理
    execute if predicate api:global_vars/difficulty/min/hard run function asset:mob/0341.louvert/init/hard

# animated javaモデル召喚
    execute positioned ~ ~99 ~ rotated ~ 0 run function animated_java:louvert/summon {args:{}}

# 継承元の処理
    function asset:mob/super.init

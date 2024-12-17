#> asset:mob/0311.blazing_inferno/init/
#
# 召喚処理
#
# @within asset:mob/alias/311/init

# モデル召喚
    execute rotated ~ 0 run function animated_java:blazing_inferno/summon {args: {animation: 'intro', start_animation: true}}

# スポーン地点にマーカー作る
    summon marker ~ ~ ~ {Tags:["8N.Marker.SpawnPoint"]}

# プレイヤーの方を向く
    execute at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~

#execute positioned ~ ~-100 ~ as @e[type=wither_skeleton,tag=MobInit,distance=..0.01] run function asset:mob/0311.blazing_inferno/summon/init

#> asset:mob/0311.blazing_inferno/init/
#
# 召喚処理
#
# @within asset:mob/alias/311/init

datapack enable "file/AJ_BlazingInferno.zip"

# プレイヤーの方を向く
    execute at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# モデル召喚
    execute at @s rotated ~ 0 run function animated_java:blazing_inferno/summon {args: {animation: 'intro', start_animation: true}}

# スポーン地点にマーカー作る、ただし（無いとは思うけど）すでに存在していない場合
    execute unless entity @e[type=marker,tag=8N.Marker.SpawnPoint,distance=..64] run summon marker ~ ~ ~ {Tags:["8N.Marker.SpawnPoint"]}

# Super!
    function asset:mob/super.init

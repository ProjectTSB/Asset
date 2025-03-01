#> asset:mob/0338.corundum_twins/init/app/1.init
#
# Mobの召喚時の処理・wither_skeletonの初期化（独自実装）
#
# @within function asset:mob/0338.corundum_twins/init/

# 初期化開始
    tag @s add 9E.Init

# 透明化
    effect give @s invisibility infinite 0 true

# 中心点召喚
    summon marker ~ ~ ~ {Tags:["9E.Marker.SpawnPoint","9E.Init"]}

# Uid設定
    function asset:mob/0338.corundum_twins/init/app/3.get_uid
    scoreboard players operation @s 9E.Uid = $Random Temporary
    scoreboard players operation @e[type=marker,tag=9E.Marker.SpawnPoint,tag=9E.Init,sort=nearest,limit=1] 9E.Uid = $Random Temporary

# 最初のフェーズ決定
    execute if predicate lib:random_pass_per/50 run tag @s add 9E.State.Phase.Sapphiel
    execute unless entity @s[tag=9E.State.Phase.Sapphiel] run tag @s add 9E.State.Phase.Rubiel
    execute store result score @s 9E.ActionCount run random value 0..2
    scoreboard players reset $Random Temporary

# リセット
    scoreboard players reset $Random Temporary
    tag @e[type=marker,tag=9E.Marker.SpawnPoint,tag=9E.Init] remove 9E.Init

#> asset:mob/0204.infernal_watcher/tick/move/do.m
# @input args
#   Speed : double
#   Range : int
# @within function asset:mob/0204.infernal_watcher/tick/move/

# 遮蔽がない場合は最寄りのプレイヤーを追いかける
    $execute facing entity @a[sort=nearest,limit=1] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-$(Range) facing entity @s eyes positioned as @s anchored eyes if block ^ ^ ^$(Speed) #lib:no_collision anchored feet run return run tp @s ^ ^ ^$(Speed) ~ ~

# 遮蔽がある場合は跳ね返る

#> temp
# @private
    #declare tag 5O.Marker

# 自己位置の取得
    data modify storage asset:temp 5O.OwnPos set from entity @s Pos
    execute store result score $5O.Yaw Temporary run data get entity @s Rotation[0]
    execute store result score $5O.Pitch Temporary run data get entity @s Rotation[1]
# 移動先の取得
    $execute anchored eyes run summon marker ^ ^ ^$(Speed) {Tags:["5O.Marker"]}
    execute as @e[type=marker,tag=5O.Marker,limit=1] run data modify storage asset:temp 5O.TargetPos set from entity @s Pos
# ヨーとピッチに分けて回転角計算
    function asset:mob/0204.infernal_watcher/tick/move/yaw
    function asset:mob/0204.infernal_watcher/tick/move/pitch
# 回転
    execute store result storage asset:temp 5O.Yaw float 1 run scoreboard players get $5O.Yaw Temporary
    execute store result storage asset:temp 5O.Pitch float 1 run scoreboard players get $5O.Pitch Temporary
    function asset:mob/0204.infernal_watcher/tick/move/rotate.m with storage asset:temp 5O
# リセット
    scoreboard players reset $5O.Yaw Temporary
    scoreboard players reset $5O.Pitch Temporary
    kill @e[type=marker,tag=5O.Marker,limit=1]

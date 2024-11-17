#> asset:mob/0336.cherry_blossom_fairy/attack/summon_shower
#
# 桜吹雪を召喚
#
# @within function asset:mob/0336.cherry_blossom_fairy/attack/

#> Private
# @private
    #declare tag SpreadMarker

# 桜吹雪を召喚する
# ノーマル以下では50% ハード以上で確定

# ノーマル以下なら50%でreturn
    execute if predicate api:global_vars/difficulty/max/normal if predicate lib:random_pass_per/50 run return 0

# SpreadMarkerを召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# SpreadMarkerを拡散
    data modify storage lib: Argument.Bounds set value [[5d,5d],[0d,0d],[5d,5d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.01,limit=1] at @s run function lib:spread_entity/

# 拡散した座標で召喚する
    data modify storage api: Argument.ID set value 2081
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @e[type=marker,tag=SpreadMarker,distance=..8] run function api:object/summon

# SpreadMarkerをkill
    kill @e[type=marker,tag=SpreadMarker,distance=..8]

#> asset:mob/0104.mad_scientist/tick/summon/addition
#
# 追加でポーション投げる
#
# @within function asset:mob/0104.mad_scientist/tick/summon/

# 右を向く
    tp @s ~ ~ ~ ~20 ~

# 召喚する
    data modify storage api: Argument.ID set value 2070
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=skeleton,tag=this,distance=..2,limit=1] MobUUID
    function api:object/summon

# 左を向く
    tp @s ~ ~ ~ ~-20 ~

# 召喚する
    data modify storage api: Argument.ID set value 2070
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=skeleton,tag=this,distance=..2,limit=1] MobUUID
    function api:object/summon

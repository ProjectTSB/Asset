#> asset:mob/0074.watermelon_bomber/tick/throw
#
# スイカをプレイヤーの方向へ投げる
#
# @within function asset:mob/0074.watermelon_bomber/tick/

# プレイヤーの方を向く
# ちょっと上に向けておく
    execute facing entity @p eyes run tp @s ~ ~ ~ ~ ~-5

# スイカ召喚
    data modify storage api: Argument.ID set value 2067
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=zombie,tag=this,distance=..3,limit=1] MobUUID
    function api:object/summon

# 召喚用markerの消滅
    kill @s

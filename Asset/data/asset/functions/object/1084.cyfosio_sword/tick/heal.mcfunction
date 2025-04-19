#> asset:object/1084.cyfosio_sword/tick/heal
#
#
#
# @within function asset:object/1084.cyfosio_sword/tick/

#> private
# @private
    #declare score_holder $OwnerID

# HP回復量
    data modify storage api: Argument.Heal set from storage asset:context this.Heal
# 補正
    execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $OwnerID Temporary run function api:heal/modifier
# 実行
    execute as @a[distance=..3] run function api:heal/
    function api:heal/reset

# 演出
    particle minecraft:happy_villager ~ ~ ~ 1 1 1 1 100 normal @a
    playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1 0.1

# 自害
    kill @s

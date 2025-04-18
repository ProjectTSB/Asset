#> asset:mob/0175.queen_bee/tick/skill/beebomb/summon
#
#
#
# @within function asset:mob/0175.queen_bee/tick/skill/beebomb/


#> Private
# @private
    #declare tag SpreadMarker

# マーカーを拡散させ、その位置で召喚処理を実行する
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[5d,5d],[0d,5d],[5d,5d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.01,limit=1] at @s run function lib:spread_entity/
    data modify storage api: Argument.ID set value 2224
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute store result storage api: Argument.FieldOverride.Damage int 1 run data get storage asset:context this.Damage.BeeBomb
    execute at @e[type=marker,tag=SpreadMarker,distance=..50,sort=nearest,limit=1] run execute rotated ~ 90 run function api:object/summon


# 演出
    playsound entity.bee.death hostile @a ~ ~ ~ 1 1

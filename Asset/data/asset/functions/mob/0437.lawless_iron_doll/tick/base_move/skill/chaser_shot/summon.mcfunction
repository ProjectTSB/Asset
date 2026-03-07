#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/summon
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/shoot

#> SpreadLib
# @private
#declare tag SpreadMarker

# マーカーを召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 拡散
    data modify storage lib: Argument.Bounds set value [[16d,16d],[0d,0.0d],[16d,16d]]
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:spread_entity/

# 置いておいたマーカーに向けてオブジェクトを出す
    data modify storage api: Argument.ID set value 2242
    execute store result storage api: Argument.FieldOverride.Damage int 1 run data get storage asset:context this.Damage.ChaserShot
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..256,sort=nearest,limit=1] feet rotated ~ ~-45 run function api:object/summon

# マーカーをキル
    kill @e[type=marker,tag=SpreadMarker,limit=1]

#> asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/summon
#
# 召喚処理
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/aim
#   asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/spread

#> Private
# @private
    #declare tag SpreadMarker

# マーカーを召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# メテオのデータ指定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 拡散
    data modify storage lib: Argument.Bounds set value [[16d,16d],[0d,0d],[16d,16d]]
    execute as @e[type=marker,tag=SpreadMarker,limit=1] at @r[gamemode=!spectator,distance=..64] run function lib:spread_entity/

# 召喚IDを指定
    data modify storage api: Argument.ID set value 2028

# マーカーの位置にオブジェクト召喚
    execute at @e[type=marker,tag=SpreadMarker,limit=1] positioned ~ ~40 ~ run function api:object/summon

# マーカーキル
    kill @e[type=marker,tag=SpreadMarker,limit=1]

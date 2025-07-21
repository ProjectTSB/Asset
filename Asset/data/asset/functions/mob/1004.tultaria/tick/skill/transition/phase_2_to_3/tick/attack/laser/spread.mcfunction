#> asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/laser/spread
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/laser/

#> Private
# @private
    #declare tag SpreadMarker

# マーカーを召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 拡散
    data modify storage lib: Argument.Bounds set value [[16d,16d],[0d,0d],[16d,16d]]
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:spread_entity/

# 召喚IDを指定
    data modify storage api: Argument.ID set value 2054

# 発射体のデータを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# マーカーの位置にオブジェクト召喚
    execute at @e[type=marker,tag=SpreadMarker,limit=1] positioned ~ ~ ~ run function api:object/summon

# マーカーキル
    kill @e[type=marker,tag=SpreadMarker,limit=1]

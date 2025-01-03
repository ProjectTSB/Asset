#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/water/homing_shot/shot/summon
#
#
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/water/homing_shot/shot/

#> 行き先マーカー
# @private
#declare tag FacingMarker
#declare tag SpreadMarker

# 発射体のステータス設定
    data modify storage api: Argument.FieldOverride set value {Speed:1,Range:100,MovePerStep:0.1}
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    
# 召喚
    data modify storage api: Argument.ID set value 2044
    execute positioned ~ ~ ~ run function api:object/summon

# リセット
    kill @e[type=marker,tag=FacingMarker]

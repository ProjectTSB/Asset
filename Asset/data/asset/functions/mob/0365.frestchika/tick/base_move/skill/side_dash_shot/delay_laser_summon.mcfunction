#> asset:mob/0365.frestchika/tick/base_move/skill/side_dash_shot/delay_laser_summon
#
# ディレイレーザー設置
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/side_dash_shot/

# オブジェクト召喚
    data modify storage api: Argument.ID set value 2235
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run scoreboard players get @s Temporary
    execute facing entity @r[gamemode=!spectator,distance=..64] eyes run function api:object/summon

# 音

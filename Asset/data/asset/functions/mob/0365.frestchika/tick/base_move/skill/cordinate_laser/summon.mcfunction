#> asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/

# 発射体のデータを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2239
    function api:object/summon

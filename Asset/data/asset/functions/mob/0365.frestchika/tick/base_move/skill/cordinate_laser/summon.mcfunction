#> asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
#
#
#
# @within function
#   asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/
#   asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/phase2
# 発射体のデータを設定
    execute store result storage api: Argument.FieldOverride.Damage int 1 run data get storage asset:context this.Damage.CordinateLaser
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2239
    function api:object/summon

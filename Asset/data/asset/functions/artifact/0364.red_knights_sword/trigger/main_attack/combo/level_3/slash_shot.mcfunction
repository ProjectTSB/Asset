#> asset:artifact/0364.red_knights_sword/trigger/main_attack/combo/level_3/slash_shot
#
# 斬撃ショットを放つ
#
# @within function asset:artifact/0364.red_knights_sword/trigger/main_attack/combo/level_3/**

# 見た目の角度以外を指定した状態で召喚
    data modify storage api: Argument.ID set value 1131
    execute store result storage api: Argument.FieldOverride.Damage int 1 run random value 300..400
    #data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    data modify storage api: Argument.FieldOverride.Range set value 35
    data modify storage api: Argument.FieldOverride.Speed set value 5
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute positioned ^ ^ ^1 positioned ~ ~-0.5 ~ run function api:object/summon

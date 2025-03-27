#> asset:mob/1004.tultaria/tick/skill/fire/move_shot/shoot
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/fire/move_shot/tick

# 発射体のステータス設定
    data modify storage api: Argument.FieldOverride set value {Speed:1,Range:100,MovePerStep:0.5}
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2042
    function api:object/summon

# 演出
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1.5 0.8
    playsound minecraft:entity.blaze.burn hostile @a ~ ~ ~ 2 1
    playsound minecraft:entity.warden.attack_impact hostile @a ~ ~ ~ 2 1.2

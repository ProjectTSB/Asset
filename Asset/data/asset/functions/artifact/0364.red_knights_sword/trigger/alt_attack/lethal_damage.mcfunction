#> asset:artifact/0364.red_knights_sword/trigger/alt_attack/lethal_damage
#
# ヘルスが2になってしまう！致命傷！
#
# @within function asset:artifact/0364.red_knights_sword/trigger/alt_attack/

# 自身の現在HP-2のダメージを受ける！痛い！
    function api:data_get/health
    execute store result score @s Temporary run data get storage api: Health
    execute store result storage api: Argument.Damage double 1 run scoreboard players remove @s Temporary 1
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.FixedDamage set value 1b
    function api:damage/modifier
    execute if entity @s[tag=!PlayerShouldInvulnerable] run function api:damage/
    function api:damage/reset
    scoreboard players reset @s Temporary

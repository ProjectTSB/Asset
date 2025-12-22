#> asset:artifact/0364.red_knights_sword/trigger/alt_attack/lethal_damage
#
# 瀕死になってしまう！致命傷！
#
# @within function asset:artifact/0364.red_knights_sword/trigger/alt_attack/

# 自身の現在HP-11のダメージを受ける！痛い！
    function api:data_get/health
    execute store result score @s Temporary run data get storage api: Health

# 自身の体力-11が0以下ならそもそもreturnしてしまう
    scoreboard players remove @s Temporary 11
    execute if score @s Temporary matches ..0 run return run scoreboard players reset @s Temporary

# 自傷ダメージ
    execute store result storage api: Argument.Damage double 1 run scoreboard players get @s Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.FixedDamage set value 1b
    function api:damage/modifier
    execute if entity @s[tag=!PlayerShouldInvulnerable] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset @s Temporary

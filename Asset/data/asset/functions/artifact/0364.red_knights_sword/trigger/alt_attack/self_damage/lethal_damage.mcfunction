#> asset:artifact/0364.red_knights_sword/trigger/alt_attack/self_damage/lethal_damage
#
# 瀕死になってしまう！致命傷！
#
# @within function asset:artifact/0364.red_knights_sword/trigger/alt_attack/

# 自身の(現在HP-ストッパー)のダメージを受ける！痛い！
    function api:data_get/health
    execute store result score $A4.Current Temporary run data get storage api: Health

# (現在体力-ストッパー)が0以下ならそもそもreturnしてしまう
    scoreboard players operation $A4.Current Temporary -= $A4.Stopper Temporary
    execute if score $A4.Current Temporary matches ..0 run return run function asset:artifact/0364.red_knights_sword/trigger/alt_attack/self_damage/reset

# 自傷ダメージ
    execute store result storage api: Argument.Damage double 1 run scoreboard players get $A4.Current Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.FixedDamage set value 1b
    function api:damage/modifier
    execute if entity @s[tag=!PlayerShouldInvulnerable] run function api:damage/
    function api:damage/reset

# リセット
    function asset:artifact/0364.red_knights_sword/trigger/alt_attack/self_damage/reset

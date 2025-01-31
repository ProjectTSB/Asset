#> asset:artifact/1013.sharpened_iron_sword/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1013/attack_melee/

# 演出
    playsound entity.player.attack.sweep player @a ~ ~ ~ 0.8 1 0

# ダメージ
    data modify storage api: Argument.Damage set value 36.0f
    data modify storage api: Argument.AttackType set value "Physical"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset

#> asset:artifact/1013.sharpened_iron_sword/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1013/attack_melee/

# 演出
    playsound entity.player.attack.sweep player @a ~ ~ ~ 0.8 1 0

# ダメージ
    data modify storage lib: Argument.Damage set value 36.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    function lib:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..6] run function lib:damage/
    function lib:damage/reset

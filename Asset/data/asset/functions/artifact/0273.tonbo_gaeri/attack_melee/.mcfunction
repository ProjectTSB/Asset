#> asset:artifact/0273.tonbo_gaeri/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/273/attack_melee/



# 移動前の地点にパーティクルと音を残す
    function asset:artifact/0273.tonbo_gaeri/attack_melee/3.1.warp_effect

# ぶん殴ったやつに物理、無属性のダメージをぶちかます
    data modify storage lib: Argument.Damage set value 555.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..150] run function lib:damage/
# リセット
    function lib:damage/reset

# 低速落下を付与する
    effect give @s slow_falling 1 1

# 初期島に行くぞ！
    execute in minecraft:overworld run tp @s 23 3 24

# 移動前の地点にパーティクルと音を残す
    execute at @s run function asset:artifact/0273.tonbo_gaeri/attack_melee/3.1.warp_effect
#> asset:artifact/0077.swords_of_waterfall_climbing/attack_melee/attack/neutral
#
# 何もY軸移動していない時
#
# @within function asset:artifact/0077.swords_of_waterfall_climbing/attack_melee/

# 演出
    function asset:artifact/0077.swords_of_waterfall_climbing/attack_melee/attack/vfx

# ダメージ
    data modify storage api: Argument.Damage set value 45f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..0.01] run function api:damage/
    function api:damage/reset

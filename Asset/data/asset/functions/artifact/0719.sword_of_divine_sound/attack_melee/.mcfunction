#> asset:artifact/0719.sword_of_divine_sound/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/719/attack_melee/


#> Private
# @private
    #declare score_holder $201

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..6] positioned ~ ~0.3 ~ run function asset:artifact/0719.sword_of_divine_sound/attack_melee/vfx/

# 設定
    execute store result storage api: Argument.Damage int 1.0 run random value 1450..1550
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $Random Temporary

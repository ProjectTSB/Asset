#> asset:artifact/0719.sword_of_divine_sound/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0719.sword_of_divine_sound/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare score_holder $201

# 演出
    execute at @e[type=#lib:living_without_player,tag=Victim,distance=..6] positioned ~ ~0.3 ~ run function asset:artifact/0719.sword_of_divine_sound/trigger/vfx/

# 設定
    execute store result storage api: Argument.Damage int 1.0 run random value 1450..1550
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $Random Temporary

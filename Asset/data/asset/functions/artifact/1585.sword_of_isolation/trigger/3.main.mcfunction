#> asset:artifact/1585.sword_of_isolation/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1585.sword_of_isolation/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
    data modify storage api: Argument.Damage set value 1500
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    execute as @e[type=#lib:living_without_player,tag=Victim,distance=..10] at @s anchored eyes positioned ^ ^ ^ run function asset:artifact/1585.sword_of_isolation/trigger/vfx
    function api:damage/reset

# 演出
    playsound item.trident.throw player @a ~ ~ ~ 1.0 0.8
    playsound block.glass.break player @a ~ ~ ~ 1.0 0.7

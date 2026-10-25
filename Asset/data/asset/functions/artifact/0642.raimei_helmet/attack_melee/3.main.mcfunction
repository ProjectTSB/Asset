#> asset:artifact/0642.raimei_helmet/attack_melee/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0642.raimei_helmet/attack_melee/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# 演出
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 1
    execute at @e[type=#lib:living_without_player,tag=Victim,distance=..10,sort=nearest,limit=1] run particle dust 0.867 0.667 0.161 1 ~ ~1 ~ 0 1 0 0 100

# ダメージ
    data modify storage api: Argument.Damage set value 40.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Victim,distance=..10,sort=nearest,limit=1] run function api:damage/
    function api:damage/reset

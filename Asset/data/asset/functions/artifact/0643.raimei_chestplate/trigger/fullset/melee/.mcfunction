#> asset:artifact/0643.raimei_chestplate/trigger/fullset/melee/
#
# フルセット時で攻撃を与えた時
#
# @within function asset:artifact/0643.raimei_chestplate/trigger/fullset/melee/trigger

# 演出
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 1
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run particle dust 0.867 0.667 0.161 1 ~ ~1 ~ 0 1 0 0 100

# 追撃ダメージ
    data modify storage api: Argument.Damage set value 40.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function api:damage/
    function api:damage/reset

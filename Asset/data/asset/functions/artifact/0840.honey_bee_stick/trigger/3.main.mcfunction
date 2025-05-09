#> asset:artifact/0840.honey_bee_stick/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0840.honey_bee_stick/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute positioned ~ ~0.2 ~ rotated ~ 0 run function asset:artifact/0840.honey_bee_stick/trigger/4.vfx
    particle minecraft:block honey_block ~ ~1.2 ~ 3 0.4 3 0 50
    particle dust 1.000 0.741 0.141 1.3 ~ ~1.2 ~ 2 0.4 2 0 240 normal
    particle minecraft:wax_on ~ ~ ~ 2 2 2 0 100
    playsound minecraft:entity.glow_squid.squirt player @a ~ ~ ~ 1 0.8 0

# 回復
    data modify storage api: Argument.Heal set value 20f
    function api:heal/modifier
    execute as @a[distance=..5] run function api:heal/
    function api:heal/reset

# ダメージ
    data modify storage api: Argument.Damage set value 760.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..5] run function api:damage/
    function api:damage/reset

# 鈍足付与
    effect give @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..5] slowness 2 2 true

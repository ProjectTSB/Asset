#> asset:artifact/0840.honey_bee_stick/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/840/click/

# 演出
    execute positioned ~ ~0.2 ~ rotated ~ 0 run function asset:artifact/0840.honey_bee_stick/click/4.vfx
    particle minecraft:block honey_block ~ ~1.2 ~ 3 0.4 3 0 50
    particle dust 1.000 0.741 0.141 1.3 ~ ~1.2 ~ 2 0.4 2 0 240 normal
    particle minecraft:wax_on ~ ~ ~ 2 2 2 0 100
    playsound minecraft:entity.glow_squid.squirt player @a ~ ~ ~ 1 0.8 0

# 回復
    data modify storage lib: Argument.Heal set value 20f
    function lib:heal/modifier
    execute as @a[distance=..5] run function lib:heal/
    function lib:heal/reset

# ダメージ
    data modify storage lib: Argument.Damage set value 500.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
    function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..5] run function lib:damage/
    function lib:damage/reset

# 鈍足付与
    effect give @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..5] slowness 2 2 true

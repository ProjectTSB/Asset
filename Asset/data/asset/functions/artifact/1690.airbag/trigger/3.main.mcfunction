#> asset:artifact/1690.airbag/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1690.airbag/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 火薬を1消費
    clear @s gunpowder 1

# 演出
    particle cloud ~ ~1 ~ 0 0 0 0.3 20 normal @a
    execute at @e[type=#lib:living_without_player,tag=Attacker,tag=!Immovable,tag=!Uninterferable,distance=..32] run particle cloud ~ ~1 ~ 0 0 0 0.3 20 normal @a
    playsound entity.breeze.death player @a ~ ~ ~ 1 0.77

# Attackerにダメージ
    data modify storage api: Argument.Damage set value 100d
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Attacker,tag=!Uninterferable,distance=..32] run function api:damage/
    function api:damage/reset

# Motionで吹っ飛ばす
# 対象が非AssetMobの場合、ノクバ耐性がないためオーバーフローしうるので、それぞれでMotion値を調整する
    data modify storage lib: Argument.VectorMagnitude set value 5d
    execute if entity @e[type=#lib:living_without_player,tag=Attacker,tag=!Uninterferable,scores={MobID=-2147483648..2147483647},distance=..32] run data modify storage lib: Argument.VectorMagnitude set value 20d
    data modify storage lib: Argument.KnockbackResist set value true
    execute as @e[type=#lib:living_without_player,tag=Attacker,tag=!Immovable,tag=!Uninterferable,distance=..32] positioned as @s facing entity @p[tag=this] feet facing ^ ^ ^-1 rotated ~ ~-20 run function lib:motion/
    data remove storage lib: Argument

#> asset:artifact/0985.ark_of_the_sanctuary/trigger/damage
#
#
#
# @within function
#   asset:artifact/0985.ark_of_the_sanctuary/trigger/3.main
#   asset:artifact/0985.ark_of_the_sanctuary/trigger/rapid_slash

# タグ付与
    execute positioned ^ ^ ^1 run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..3] add RD.Hit
    execute as @e[type=#lib:living,type=!player,tag=RD.Hit,tag=!Uninterferable,distance=..3] positioned ^ ^ ^-100 run tag @s[type=#lib:living,type=!player,tag=RD.Hit,tag=!Uninterferable,distance=..100] remove RD.Hit

# 引数の設定
    execute store result storage api: Argument.Damage float 1 run random value 200..250
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"

# 補正functionを実行
    function api:damage/modifier

# ダメージ実行
    execute as @e[type=#lib:living,type=!player,tag=RD.Hit,tag=!Uninterferable,distance=..16] run function api:damage/

# リセット
    function api:damage/reset

# ノクバ耐性を考慮して吹っ飛ばす
    data modify storage lib: Argument.VectorMagnitude set value -0.4
    data modify storage lib: Argument.KnockbackResist set value true
    execute as @e[type=#lib:living,type=!player,tag=RD.Hit,tag=!Uninterferable,distance=..16] at @s facing entity @p[tag=this] feet rotated ~ ~5 run function lib:motion/
    data remove storage lib: Argument

# リセット
    tag @e[type=#lib:living,type=!player,tag=RD.Hit,distance=..16] remove RD.Hit

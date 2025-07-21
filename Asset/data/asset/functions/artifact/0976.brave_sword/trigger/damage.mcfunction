#> asset:artifact/0976.brave_sword/trigger/damage
#
# 攻撃判定に入った敵にダメージを与える
#
# @within function asset:artifact/0976.brave_sword/trigger/3.main

# タグ付与
    execute positioned ^ ^ ^1 run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..3] add R4.Hit
    execute as @e[type=#lib:living,type=!player,tag=R4.Hit,tag=!Uninterferable,distance=..3] positioned ^ ^ ^-100 run tag @s[type=#lib:living,type=!player,tag=R4.Hit,tag=!Uninterferable,distance=..100] remove R4.Hit

# 引数の設定
    execute store result storage api: Argument.Damage float 1 run random value 125..185
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
# 補正functionを実行
    execute as @p[tag=this] run function api:damage/modifier
# ダメージ実行
    execute as @e[type=#lib:living,type=!player,tag=R4.Hit,tag=!Uninterferable,distance=..3] run function api:damage/
# リセット
    function api:damage/reset


# ノクバ耐性を考慮して吹っ飛ばす
    data modify storage lib: Argument.VectorMagnitude set value -0.7
    data modify storage lib: Argument.KnockbackResist set value true
    execute as @e[type=#lib:living,type=!player,tag=R4.Hit,tag=!Uninterferable,distance=..3] at @s facing entity @p[tag=this] feet rotated ~ ~5 run function lib:motion/
    data remove storage lib: Argument

# リセット
    tag @e[type=#lib:living,type=!player,tag=R4.Hit,tag=!Uninterferable,distance=..3] remove R4.Hit

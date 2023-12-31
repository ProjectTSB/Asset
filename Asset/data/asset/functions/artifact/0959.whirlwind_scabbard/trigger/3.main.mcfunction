#> asset:artifact/0959.whirlwind_scabbard/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0959.whirlwind_scabbard/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/offhand
# ここから先は神器側の効果の処理を書く

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function asset:artifact/0959.whirlwind_scabbard/trigger/vfx

# 実行 対象が天使の場合、本来の値の20%にする
    data modify storage lib: Argument.VectorMagnitude set value 2
    execute if entity @e[type=#lib:living,tag=Victim,tag=Enemy.Boss,distance=..6] store result storage lib: Argument.VectorMagnitude float 0.2 run data get storage lib: Argument.VectorMagnitude
    data modify storage lib: Argument.KnockbackResist set value 1b
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] at @s rotated as @p[tag=this,distance=..6] rotated ~ -18 run function lib:motion/

# リセット
    data remove storage lib: Argument
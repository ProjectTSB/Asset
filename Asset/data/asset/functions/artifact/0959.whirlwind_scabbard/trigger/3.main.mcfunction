#> asset:artifact/0959.whirlwind_scabbard/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0959.whirlwind_scabbard/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/offhand
# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare tag Target

# 演出
    execute at @e[type=#lib:living,tag=Victim,distance=..6] run function asset:artifact/0959.whirlwind_scabbard/trigger/vfx

# モーション 対象が天使の場合無効
    data modify storage lib: Argument.VectorMagnitude set value 2
    data modify storage lib: Argument.KnockbackResist set value 1b

# ターゲット指定 Victimと前方を対象にする
    tag @e[type=#lib:living,tag=Victim,tag=!Enemy.Boss,distance=..10] add Target
    execute as @e[type=#lib:living,tag=Enemy,tag=!Enemy.Boss,distance=..5] at @p[tag=this] positioned ^ ^ ^-3 unless entity @s[distance=..3] run tag @s add Target

# 前方を対象に、プレイヤーの方向と逆方向に飛ぶ
    execute as @e[type=#lib:living,tag=Target,distance=..10] at @s facing entity @p[tag=this] eyes rotated ~180 -18 run function lib:motion/

# リセット
    data remove storage lib: Argument
#> asset:artifact/0959.whirlwind_scabbard/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/959/attack_melee/

#> Private
# @private
    #declare tag Target

# 演出
    execute at @e[type=#lib:living,tag=Victim,distance=..6] run function asset:artifact/0959.whirlwind_scabbard/attack_melee/vfx

# モーション 対象が天使の場合無効
    data modify storage lib: Argument.VectorMagnitude set value 2
    data modify storage lib: Argument.KnockbackResist set value 1b

# ターゲット指定 Victimと前方を対象にする
    tag @e[type=#lib:living,tag=Victim,tag=!Enemy.Boss,tag=!Uninterferable,distance=..10] add Target
    execute as @e[type=#lib:living,tag=Enemy,tag=!Enemy.Boss,tag=!Uninterferable,distance=..5] at @p[tag=this] positioned ^ ^ ^-3 unless entity @s[distance=..3] run tag @s add Target

# 前方の5体を対象に、プレイヤーの方向と逆方向に飛ぶ
    execute as @e[type=#lib:living,tag=Target,distance=..10,sort=nearest,limit=5] at @s facing entity @p[tag=this] eyes rotated ~180 -18 run function lib:motion/

# リセット
    data remove storage lib: Argument
    tag @e[type=#lib:living,tag=Target,distance=..10] remove Target

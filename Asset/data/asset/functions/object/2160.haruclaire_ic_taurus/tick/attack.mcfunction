#> asset:object/2160.haruclaire_ic_taurus/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2160.haruclaire_ic_taurus/tick/

# 予告
    execute if entity @s[scores={General.Object.Tick=1}] run function asset:object/2160.haruclaire_ic_taurus/tick/prediction

# アニメーション
    execute if entity @s[scores={General.Object.Tick=5}] on passengers run function animated_java:ic_tau_aj/animations/2_attack/tween {duration:1, to_frame: 1}

# 演出
    execute if entity @s[scores={General.Object.Tick=20}] run playsound entity.wither.break_block hostile @a ~ ~ ~ 2 0.7

# 攻撃
    execute if entity @s[scores={General.Object.Tick=20}] run function asset:object/2160.haruclaire_ic_taurus/tick/damage

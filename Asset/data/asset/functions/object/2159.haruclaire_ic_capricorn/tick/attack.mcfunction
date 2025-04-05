#> asset:object/2159.haruclaire_ic_capricorn/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2159.haruclaire_ic_capricorn/tick/

# 予告
    execute if entity @s[scores={General.Object.Tick=1}] run function asset:object/2159.haruclaire_ic_capricorn/tick/prediction

# アニメーション
    execute if entity @s[scores={General.Object.Tick=20}] on passengers run function animated_java:ic_capri_aj/animations/2_attack/tween {duration:1, to_frame: 1}

# 移動
    execute if entity @s[scores={General.Object.Tick=20..}] run tp @s ^ ^ ^2
    execute if entity @s[scores={General.Object.Tick=20..}] run particle block blue_ice ~ ~0.1 ~ 0.1 0 0.1 0 3
    execute if entity @s[scores={General.Object.Tick=20..}] run particle explosion ~ ~0.1 ~ 2 0 2 0 1

# 演出
    execute if entity @s[scores={General.Object.Tick=20}] run playsound entity.breeze.jump hostile @a ~ ~ ~ 2 0.8
    execute if entity @s[scores={General.Object.Tick=20}] run playsound entity.goat.screaming.ambient hostile @a ~ ~ ~ 4 1
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if entity @s[scores={General.Object.Tick=20..}] if score $Interval Temporary matches 0 run playsound entity.goat.step hostile @a ~ ~ ~ 2 1
    scoreboard players reset $Interval Temporary
# 攻撃
    execute if entity @s[scores={General.Object.Tick=20..}] run function asset:object/2159.haruclaire_ic_capricorn/tick/damage

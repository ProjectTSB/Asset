#> asset:mob/0237.lunatic_mage/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/237/hurt

# super.hurt
    function asset:mob/super.hurt

# 演出
    playsound minecraft:entity.vex.hurt hostile @a ~ ~ ~ 1 0.5
    playsound minecraft:entity.vex.hurt hostile @a ~ ~ ~ 1 0.7
    playsound minecraft:entity.glow_squid.ambient hostile @a ~ ~ ~ 1 2

# 体力が40%であることを検知
    execute if entity @s[tag=!6L.HealthLess40Per] run function asset:mob/0237.lunatic_mage/hurt/check_health

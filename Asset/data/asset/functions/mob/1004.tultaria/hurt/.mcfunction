#> asset:mob/1004.tultaria/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/1004/hurt

# 演出
    execute unless entity @s[tag=RW.Shield] run playsound minecraft:entity.generic.hurt hostile @a ~ ~ ~ 1 0.7
    execute if entity @s[tag=RW.Shield] run playsound minecraft:block.amethyst_cluster.break hostile @a ~ ~ ~ 2 0.5
    execute if entity @s[tag=RW.Shield] run playsound minecraft:block.end_portal_frame.fill hostile @a ~ ~ ~ 2 0.5

# 体力チェック
    function asset:mob/1004.tultaria/hurt/check_health

# Super!
    function asset:mob/super.hurt

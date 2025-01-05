#> asset:mob/1004.tultaria/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/1004/hurt

#> private
# @private
    #declare score_holder $HealthPercent

# 演出
    playsound minecraft:entity.generic.hurt hostile @a ~ ~ ~ 1 0.7
#    execute if entity @s[tag=RW.Shield] run playsound minecraft:block.amethyst_cluster.break hostile @a ~ ~ ~ 2 0.5
#    execute if entity @s[tag=RW.Shield] run playsound minecraft:block.end_portal_frame.fill hostile @a ~ ~ ~ 2 0.5

# 体力チェック
    function asset:mob/1004.tultaria/hurt/check_health

# タグを消す
    tag @s remove RW.HPless75per
    tag @s remove RW.HPless50per

# タグ付与
# 75%以下
    execute if score $HealthPercent Temporary matches ..75 run tag @s add RW.HPless75per
# HP50%以下
    execute if score $HealthPercent Temporary matches ..50 run tag @s add RW.HPless50per
# HP40%以下
#    execute if score $HealthPercent Temporary matches ..40 run tag @s add RW.HPless40per
# HP30%以下
#    execute if score $HealthPercent Temporary matches ..30 run tag @s add RW.HPless30per

# リセット
    scoreboard players reset $HealthPercent

# Super!
    function asset:mob/super.hurt

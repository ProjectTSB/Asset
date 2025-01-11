#> asset:mob/1004.tultaria/tick/skill/water/sword_rain/pattern/2
#
# マップをまっぷたつ
#
# @within function asset:mob/1004.tultaria/tick/skill/water/sword_rain/tick

# 設置
    execute if score @s General.Mob.Tick matches 20 positioned ~ ~5 ~ run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s General.Mob.Tick matches 25 positioned ~5 ~5 ~ run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s General.Mob.Tick matches 25 positioned ~-5 ~5 ~ run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s General.Mob.Tick matches 30 positioned ~10 ~5 ~ run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s General.Mob.Tick matches 30 positioned ~-10 ~5 ~ run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s General.Mob.Tick matches 35 positioned ~15 ~5 ~ run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s General.Mob.Tick matches 35 positioned ~-15 ~5 ~ run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon

# リセット
    execute if score @s General.Mob.Tick matches 60.. run function asset:mob/1004.tultaria/tick/base_move/reset

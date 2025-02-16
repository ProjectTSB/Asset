#> asset:mob/1004.tultaria/tick/skill/water/sword_rain/pattern/4
#
# ガチ避けを強いる包囲設置
#
# @within function asset:mob/1004.tultaria/tick/skill/water/sword_rain/tick

# 拡散設置
    execute if score @s General.Mob.Tick matches 20 rotated ~ 0 positioned ^ ^5 ^13 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s General.Mob.Tick matches 25 rotated ~45 0 positioned ^ ^5 ^13 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s General.Mob.Tick matches 30 rotated ~90 0 positioned ^ ^5 ^13 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s General.Mob.Tick matches 35 rotated ~135 0 positioned ^ ^5 ^13 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s General.Mob.Tick matches 40 rotated ~180 0 positioned ^ ^5 ^13 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s General.Mob.Tick matches 45 rotated ~225 0 positioned ^ ^5 ^13 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s General.Mob.Tick matches 50 rotated ~270 0 positioned ^ ^5 ^13 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s General.Mob.Tick matches 55 rotated ~315 0 positioned ^ ^5 ^13 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon

# リセット
    execute if score @s General.Mob.Tick matches 60.. run function asset:mob/1004.tultaria/tick/base_move/reset

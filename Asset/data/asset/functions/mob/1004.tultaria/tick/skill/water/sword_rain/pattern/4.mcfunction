#> asset:mob/1004.tultaria/tick/skill/water/sword_rain/pattern/4
#
# ガチ避けを強いる包囲設置
#
# @within function asset:mob/1004.tultaria/tick/skill/water/sword_rain/tick

# 拡散設置
    execute if score @s RW.Tick matches 20 rotated ~ 0 positioned ^ ^5 ^13 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 21 rotated ~45 0 positioned ^ ^5 ^13 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 22 rotated ~90 0 positioned ^ ^5 ^13 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 23 rotated ~135 0 positioned ^ ^5 ^13 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 24 rotated ~180 0 positioned ^ ^5 ^13 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 25 rotated ~225 0 positioned ^ ^5 ^13 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 26 rotated ~270 0 positioned ^ ^5 ^13 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 27 rotated ~315 0 positioned ^ ^5 ^13 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon

# リセット
    execute if score @s RW.Tick matches 60.. run function asset:mob/1004.tultaria/tick/base_move/reset

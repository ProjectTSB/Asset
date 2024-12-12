#> asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/

# 足場をランダムに5箇所選択
    execute if score @s RW.Tick matches 00 at @r[distance=..64] as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026},distance=..15,sort=random,limit=10] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s RW.Tick matches 30 at @r[distance=..64] as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026},distance=..15,sort=random,limit=10] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s RW.Tick matches 60 at @r[distance=..64] as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026},distance=..15,sort=random,limit=10] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s RW.Tick matches 90 at @r[distance=..64] as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026},distance=..15,sort=random,limit=10] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s RW.Tick matches 120 at @r[distance=..64] as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026},distance=..15,sort=random,limit=10] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/red

# ライン攻撃その1
    # 1
        execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=1},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=2},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=3},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=4},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=5},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=6},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=7},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=8},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=14},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=15},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=21},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=22},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=28},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=29},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=35},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=36},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=42},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=43},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=44},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=45},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=46},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=47},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=48},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=49},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple

# 足場をランダムに5箇所選択
    execute if score @s RW.Tick matches 180 at @r[distance=..64] as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026},distance=..10,sort=random,limit=5] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s RW.Tick matches 210 at @r[distance=..64] as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026},distance=..10,sort=random,limit=5] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s RW.Tick matches 240 at @r[distance=..64] as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026},distance=..10,sort=random,limit=5] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s RW.Tick matches 270 at @r[distance=..64] as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026},distance=..10,sort=random,limit=5] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s RW.Tick matches 300 at @r[distance=..64] as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026},distance=..10,sort=random,limit=5] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/red

    # 2
        execute if score @s RW.Tick matches 330 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=9},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 330 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=10},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 330 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=11},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 330 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=12},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 330 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=13},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 330 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=16},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 330 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=20},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 330 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=23},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 330 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=27},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 330 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=30},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 330 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=34},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 330 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=37},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 330 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=38},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 330 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=39},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 330 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=40},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s RW.Tick matches 330 as @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=41},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple

# 3 誘導する光の柱を置く
    execute if score @s RW.Tick matches 370 at @r rotated 0 0 run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/pillar/alert
    execute if score @s RW.Tick matches 390 at @e[type=marker,tag=RW.Marker.Aim,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/pillar/summon

    execute if score @s RW.Tick matches 430 at @r rotated 0 0 run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/pillar/alert
    execute if score @s RW.Tick matches 450 at @e[type=marker,tag=RW.Marker.Aim,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/pillar/summon

    execute if score @s RW.Tick matches 490 at @r rotated 0 0 run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/pillar/alert
    execute if score @s RW.Tick matches 510 at @e[type=marker,tag=RW.Marker.Aim,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/pillar/summon

    execute if score @s RW.Tick matches 550 at @r rotated 0 0 run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/pillar/alert
    execute if score @s RW.Tick matches 570 at @e[type=marker,tag=RW.Marker.Aim,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/pillar/summon

# TODO: デバッグ用につき後で消すこと
#    execute if score @s RW.Tick matches 1000.. run scoreboard players set @s RW.Tick -10

# 画面エフェクト
    execute if score @s RW.Tick matches 690 run title @a[distance=..100] times 10 20 10
    execute if score @s RW.Tick matches 690 run title @a[distance=..100] title {"text":""}
    execute if score @s RW.Tick matches 690 run title @a[distance=..100] subtitle {"text":"\uE010","font":"screen_effect","color":"#cccccc"}

# 終了
    execute if score @s RW.Tick matches 740 run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/end

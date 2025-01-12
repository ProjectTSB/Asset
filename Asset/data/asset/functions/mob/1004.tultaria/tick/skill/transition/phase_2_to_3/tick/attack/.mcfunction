#> asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/

# 足場をランダムに5箇所選択
    execute if score @s General.Mob.Tick matches 0 at @r[gamemode=!spectator,distance=..64] at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026},distance=..15,sort=random,limit=10] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s General.Mob.Tick matches 30 at @r[gamemode=!spectator,distance=..64] at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026},distance=..15,sort=random,limit=10] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s General.Mob.Tick matches 60 at @r[gamemode=!spectator,distance=..64] at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026},distance=..15,sort=random,limit=10] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s General.Mob.Tick matches 90 at @r[gamemode=!spectator,distance=..64] at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026},distance=..15,sort=random,limit=10] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s General.Mob.Tick matches 120 at @r[gamemode=!spectator,distance=..64] at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026},distance=..15,sort=random,limit=10] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red

# ライン攻撃その1
    # 1
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=1},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=2},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=3},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=4},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=5},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=6},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=7},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=8},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=14},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=15},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=21},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=22},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=28},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=29},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=35},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=36},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=42},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=43},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=44},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=45},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=46},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=47},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=48},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=49},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple

# 足場をランダムに5箇所選択
    execute if score @s General.Mob.Tick matches 180 at @r[gamemode=!spectator,distance=..64] at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026},distance=..10,sort=random,limit=5] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s General.Mob.Tick matches 210 at @r[gamemode=!spectator,distance=..64] at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026},distance=..10,sort=random,limit=5] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s General.Mob.Tick matches 240 at @r[gamemode=!spectator,distance=..64] at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026},distance=..10,sort=random,limit=5] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s General.Mob.Tick matches 270 at @r[gamemode=!spectator,distance=..64] at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026},distance=..10,sort=random,limit=5] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s General.Mob.Tick matches 300 at @r[gamemode=!spectator,distance=..64] at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026},distance=..10,sort=random,limit=5] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red

    # 2
        execute if score @s General.Mob.Tick matches 330 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=9},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 330 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=10},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 330 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=11},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 330 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=12},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 330 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=13},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 330 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=16},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 330 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=20},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 330 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=23},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 330 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=27},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 330 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=30},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 330 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=34},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 330 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=37},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 330 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=38},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 330 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=39},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 330 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=40},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple
        execute if score @s General.Mob.Tick matches 330 at @e[type=item_display,tag=!2026.Disabled,scores={ObjectID=2026,2026.ID=41},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/purple

# 3 誘導する光の柱を置く
    execute if score @s General.Mob.Tick matches 370 at @r rotated 0 0 run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/pillar/alert
    execute if score @s General.Mob.Tick matches 390 at @e[type=marker,tag=RW.Marker.Aim,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/pillar/summon

    execute if score @s General.Mob.Tick matches 430 at @r rotated 0 0 run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/pillar/alert
    execute if score @s General.Mob.Tick matches 450 at @e[type=marker,tag=RW.Marker.Aim,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/pillar/summon

    execute if score @s General.Mob.Tick matches 490 at @r rotated 0 0 run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/pillar/alert
    execute if score @s General.Mob.Tick matches 510 at @e[type=marker,tag=RW.Marker.Aim,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/pillar/summon

    execute if score @s General.Mob.Tick matches 550 at @r rotated 0 0 run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/pillar/alert
    execute if score @s General.Mob.Tick matches 570 at @e[type=marker,tag=RW.Marker.Aim,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/pillar/summon

# TODO: デバッグ用につき後で消すこと
#    execute if score @s General.Mob.Tick matches 800.. run scoreboard players set @s General.Mob.Tick 580
#    execute if score @s General.Mob.Tick matches 0 run scoreboard players set @s General.Mob.Tick 580

# アニメ再生
    execute if score @s General.Mob.Tick matches 710 as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_2_right/tween {to_frame:0,duration:1}

# 「忠誠の幻想」を2体召喚する
    execute if score @s General.Mob.Tick matches 713 run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/summon_illusion/

# 幻影をテレポートさせる
    execute if score @s General.Mob.Tick matches 750 as @e[type=wither_skeleton,scores={MobID=1005},distance=..128] at @s run function asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/teleport

# 終了
    execute if score @s General.Mob.Tick matches 750 run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/end

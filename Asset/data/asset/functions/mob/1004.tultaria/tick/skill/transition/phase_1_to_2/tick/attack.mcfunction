#> asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/attack
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/

#> 被らないようにするタグと、攻撃開始のタグ
# @private
#declare tag RW.StopSummon

# 足場をランダムに5箇所選択
    execute if score @s General.Mob.Tick matches 0 at @a[distance=..64] at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026},distance=..10,sort=random,limit=5] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s General.Mob.Tick matches 30 at @a[distance=..64] at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026},distance=..10,sort=random,limit=5] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s General.Mob.Tick matches 60 at @a[distance=..64] at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026},distance=..10,sort=random,limit=5] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s General.Mob.Tick matches 90 at @a[distance=..64] at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026},distance=..10,sort=random,limit=5] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s General.Mob.Tick matches 120 at @a[distance=..64] at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026},distance=..10,sort=random,limit=5] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red

# ライン攻撃その1
    # 1
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=1},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=2},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=3},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=4},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=5},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=6},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 150 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=7},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    # 2
        execute if score @s General.Mob.Tick matches 160 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=8},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 160 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=9},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 160 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=10},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 160 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=11},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 160 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=12},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 160 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=13},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 160 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=14},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    # 3
        execute if score @s General.Mob.Tick matches 170 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=15},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 170 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=16},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 170 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=17},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 170 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=18},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 170 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=19},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 170 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=20},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 170 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=21},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    # 4
        execute if score @s General.Mob.Tick matches 180 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=22},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 180 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=23},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 180 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=24},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 180 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=25},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 180 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=26},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 180 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=27},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 180 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=28},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    # 5
        execute if score @s General.Mob.Tick matches 190 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=29},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 190 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=30},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 190 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=31},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 190 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=32},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 190 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=33},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 190 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=34},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 190 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=35},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    # 6
        execute if score @s General.Mob.Tick matches 200 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=36},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 200 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=37},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 200 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=38},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 200 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=39},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 200 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=40},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 200 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=41},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 200 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=42},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    # 7
        execute if score @s General.Mob.Tick matches 210 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=43},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 210 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=44},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 210 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=45},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 210 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=46},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 210 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=47},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 210 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=48},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 210 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=49},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red

# 足場をランダムに5箇所選択
    execute if score @s General.Mob.Tick matches 240 at @a[distance=..64] at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026},distance=..10,sort=random,limit=5] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s General.Mob.Tick matches 270 at @a[distance=..64] at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026},distance=..10,sort=random,limit=5] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s General.Mob.Tick matches 300 at @a[distance=..64] at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026},distance=..10,sort=random,limit=5] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s General.Mob.Tick matches 330 at @a[distance=..64] at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026},distance=..10,sort=random,limit=5] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s General.Mob.Tick matches 360 at @a[distance=..64] at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026},distance=..10,sort=random,limit=5] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red

# ライン攻撃その2
    # 1
        execute if score @s General.Mob.Tick matches 390 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=7},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 390 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=14},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 390 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=21},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 390 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=28},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 390 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=35},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 390 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=42},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 390 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=49},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    # 2
        execute if score @s General.Mob.Tick matches 400 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=6},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 400 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=13},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 400 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=20},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 400 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=27},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 400 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=34},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 400 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=41},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 400 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=48},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    # 3
        execute if score @s General.Mob.Tick matches 410 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=5},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 410 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=12},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 410 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=19},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 410 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=26},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 410 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=33},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 410 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=40},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 410 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=47},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    # 4
        execute if score @s General.Mob.Tick matches 420 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=4},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 420 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=11},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 420 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=18},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 420 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=25},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 420 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=32},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 420 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=39},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 420 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=46},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    # 5
        execute if score @s General.Mob.Tick matches 430 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=3},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 430 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=10},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 430 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=17},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 430 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=24},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 430 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=31},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 430 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=38},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 430 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=45},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    # 6
        execute if score @s General.Mob.Tick matches 440 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=2},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 440 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=9},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 440 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=16},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 440 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=23},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 440 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=30},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 440 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=37},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 440 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=44},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    # 7
        execute if score @s General.Mob.Tick matches 450 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=1},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 450 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=8},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 450 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=15},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 450 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=22},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 450 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=29},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 450 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=36},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
        execute if score @s General.Mob.Tick matches 450 at @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=43},limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red

# TODO: デバッグ用につき後で消すこと
#    execute if score @s General.Mob.Tick matches 1000.. run scoreboard players set @s General.Mob.Tick -10
#    execute if score @s General.Mob.Tick matches 0 run scoreboard players set @s General.Mob.Tick 451

# 画面エフェクト
#    execute if score @s General.Mob.Tick matches 490 run title @a[distance=..100] times 10 20 10
#    execute if score @s General.Mob.Tick matches 490 run title @a[distance=..100] title {"text":""}
#    execute if score @s General.Mob.Tick matches 490 run title @a[distance=..100] subtitle {"text":"\uE010","font":"screen_effect","color":"#cccccc"}

# アニメ再生
    execute if score @s General.Mob.Tick matches 530 as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_1_left/tween {to_frame:0,duration:1}

# 翼を展開
    execute if score @s General.Mob.Tick matches 533 run function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/open_wing

# 終了
    execute if score @s General.Mob.Tick matches 570 run function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/end

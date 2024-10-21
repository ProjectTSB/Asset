#> asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/tick
#
# フェイズ移行攻撃: とってもコマンドが長い
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

#> 被らないようにするタグ
# @private
#declare tag RW.StopSummon

# 足場をランダムに5箇所選択
    execute if score @s RW.Tick matches 0 at @a[distance=..64] as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026},distance=..10,sort=random,limit=5] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 30 at @a[distance=..64] as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026},distance=..10,sort=random,limit=5] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 60 at @a[distance=..64] as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026},distance=..10,sort=random,limit=5] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 90 at @a[distance=..64] as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026},distance=..10,sort=random,limit=5] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 120 at @a[distance=..64] as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026},distance=..10,sort=random,limit=5] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/

# ライン攻撃その1
    # 1
    execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=1},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=2},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=3},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=4},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=5},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=6},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 150 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=7},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    # 2
    execute if score @s RW.Tick matches 160 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=8},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 160 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=9},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 160 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=10},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 160 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=11},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 160 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=12},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 160 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=13},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 160 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=14},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    # 3
    execute if score @s RW.Tick matches 170 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=15},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 170 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=16},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 170 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=17},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 170 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=18},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 170 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=19},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 170 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=20},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 170 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=21},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    # 4
    execute if score @s RW.Tick matches 180 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=22},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 180 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=23},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 180 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=24},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 180 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=25},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 180 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=26},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 180 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=27},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 180 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=28},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    # 5
    execute if score @s RW.Tick matches 190 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=29},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 190 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=30},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 190 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=31},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 190 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=32},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 190 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=33},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 190 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=34},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 190 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=35},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    # 6
    execute if score @s RW.Tick matches 200 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=36},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 200 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=37},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 200 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=38},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 200 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=39},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 200 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=40},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 200 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=41},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 200 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=42},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    # 7
    execute if score @s RW.Tick matches 210 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=43},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 210 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=44},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 210 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=45},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 210 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=46},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 210 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=47},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 210 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=48},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 210 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=49},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/

# 足場をランダムに5箇所選択
    execute if score @s RW.Tick matches 240 at @a[distance=..64] as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026},distance=..10,sort=random,limit=5] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 270 at @a[distance=..64] as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026},distance=..10,sort=random,limit=5] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 300 at @a[distance=..64] as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026},distance=..10,sort=random,limit=5] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 330 at @a[distance=..64] as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026},distance=..10,sort=random,limit=5] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    execute if score @s RW.Tick matches 360 at @a[distance=..64] as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026},distance=..10,sort=random,limit=5] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/

# ライン攻撃その2
    # 1
        execute if score @s RW.Tick matches 390 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=7},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 390 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=14},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 390 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=21},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 390 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=28},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 390 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=35},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 390 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=42},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 390 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=49},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    # 2
        execute if score @s RW.Tick matches 400 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=6},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 400 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=13},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 400 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=20},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 400 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=27},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 400 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=34},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 400 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=41},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 400 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=48},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    # 3
        execute if score @s RW.Tick matches 410 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=5},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 410 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=12},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 410 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=19},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 410 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=26},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 410 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=33},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 410 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=40},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 410 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=47},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    # 4
        execute if score @s RW.Tick matches 420 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=4},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 420 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=11},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 420 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=18},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 420 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=25},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 420 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=32},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 420 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=39},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 420 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=46},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    # 5
        execute if score @s RW.Tick matches 430 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=3},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 430 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=10},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 430 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=17},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 430 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=24},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 430 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=31},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 430 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=38},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 430 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=45},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    # 6
        execute if score @s RW.Tick matches 440 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=2},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 440 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=9},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 440 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=16},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 440 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=23},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 440 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=30},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 440 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=37},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 440 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=44},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
    # 7
        execute if score @s RW.Tick matches 450 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=1},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 450 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=8},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 450 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=15},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 450 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=22},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 450 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=29},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 450 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=36},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/
        execute if score @s RW.Tick matches 450 as @e[type=item_display,tag=!RW.StopSummon,scores={ObjectID=2026,2026.ID=43},limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/summon/


# TODO: デバッグ用につき後で消すこと
    execute if score @s RW.Tick matches 1000.. run scoreboard players set @s RW.Tick -10

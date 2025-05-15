#> asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/attack
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/

# 足場をランダムに5箇所選択
    execute if score @s General.Mob.Tick matches 0 at @r[gamemode=!spectator,distance=..64] at @e[type=item_display,scores={ObjectID=2026},distance=..10,sort=random,limit=5] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s General.Mob.Tick matches 30 at @r[gamemode=!spectator,distance=..64] at @e[type=item_display,scores={ObjectID=2026},distance=..10,sort=random,limit=5] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s General.Mob.Tick matches 60 at @r[gamemode=!spectator,distance=..64] at @e[type=item_display,scores={ObjectID=2026},distance=..10,sort=random,limit=5] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s General.Mob.Tick matches 90 at @r[gamemode=!spectator,distance=..64] at @e[type=item_display,scores={ObjectID=2026},distance=..10,sort=random,limit=5] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s General.Mob.Tick matches 120 at @r[gamemode=!spectator,distance=..64] at @e[type=item_display,scores={ObjectID=2026},distance=..10,sort=random,limit=5] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red

# ライン攻撃その1
    # 移動
        execute if score @s General.Mob.Tick matches 120 run function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/line_attack/start
    # 攻撃開始前に真ん中を向く
        execute if score @s General.Mob.Tick matches 150 facing entity @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..128,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ 0
    # 攻撃
        execute if score @s General.Mob.Tick matches 150 positioned ^ ^ ^5 run function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/line_attack/summon
        execute if score @s General.Mob.Tick matches 160 positioned ^ ^ ^10 run function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/line_attack/summon
        execute if score @s General.Mob.Tick matches 170 positioned ^ ^ ^15 run function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/line_attack/summon
        execute if score @s General.Mob.Tick matches 180 positioned ^ ^ ^20 run function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/line_attack/summon
        execute if score @s General.Mob.Tick matches 190 positioned ^ ^ ^25 run function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/line_attack/summon
        execute if score @s General.Mob.Tick matches 200 positioned ^ ^ ^30 run function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/line_attack/summon
        execute if score @s General.Mob.Tick matches 210 positioned ^ ^ ^35 run function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/line_attack/summon

# 足場をランダムに5箇所選択
    execute if score @s General.Mob.Tick matches 240 at @r[gamemode=!spectator,distance=..64] at @e[type=item_display,scores={ObjectID=2026},distance=..10,sort=random,limit=5] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s General.Mob.Tick matches 270 at @r[gamemode=!spectator,distance=..64] at @e[type=item_display,scores={ObjectID=2026},distance=..10,sort=random,limit=5] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s General.Mob.Tick matches 300 at @r[gamemode=!spectator,distance=..64] at @e[type=item_display,scores={ObjectID=2026},distance=..10,sort=random,limit=5] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s General.Mob.Tick matches 330 at @r[gamemode=!spectator,distance=..64] at @e[type=item_display,scores={ObjectID=2026},distance=..10,sort=random,limit=5] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute if score @s General.Mob.Tick matches 360 at @r[gamemode=!spectator,distance=..64] at @e[type=item_display,scores={ObjectID=2026},distance=..10,sort=random,limit=5] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red

# ライン攻撃その2
    # 移動
        execute if score @s General.Mob.Tick matches 360 run function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/line_attack/start
    # 攻撃開始前に真ん中を向く
        execute if score @s General.Mob.Tick matches 390 at @s facing entity @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..128,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ 0
    # 攻撃
        execute if score @s General.Mob.Tick matches 390 at @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^5 run function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/line_attack/summon
        execute if score @s General.Mob.Tick matches 400 at @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^10 run function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/line_attack/summon
        execute if score @s General.Mob.Tick matches 410 at @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^15 run function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/line_attack/summon
        execute if score @s General.Mob.Tick matches 420 at @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^20 run function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/line_attack/summon
        execute if score @s General.Mob.Tick matches 430 at @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^25 run function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/line_attack/summon
        execute if score @s General.Mob.Tick matches 440 at @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^30 run function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/line_attack/summon
        execute if score @s General.Mob.Tick matches 450 at @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^35 run function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/line_attack/summon

# TODO: デバッグ用につき後で消すこと
#    execute if score @s General.Mob.Tick matches 500.. run scoreboard players set @s General.Mob.Tick -10
#    execute if score @s General.Mob.Tick matches 0 run scoreboard players set @s General.Mob.Tick 359

# 画面エフェクト
#    execute if score @s General.Mob.Tick matches 490 run title @a[distance=..100] times 10 20 10
#    execute if score @s General.Mob.Tick matches 490 run title @a[distance=..100] title {"text":""}
#    execute if score @s General.Mob.Tick matches 490 run title @a[distance=..100] subtitle {"text":"\uE010","font":"screen_effect","color":"#cccccc"}

# アニメ再生
    execute if score @s General.Mob.Tick matches 530 as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_1_left/tween {to_frame:0,duration:1}

# 翼を展開
    execute if score @s General.Mob.Tick matches 533 run function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/open_wing

# 終了
    execute if score @s General.Mob.Tick matches 570 run function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/end

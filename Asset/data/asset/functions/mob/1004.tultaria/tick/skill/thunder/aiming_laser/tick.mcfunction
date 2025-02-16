#> asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/tick
#
# 最悪偏差撃ちレーザー
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

# モデルを自分の向きに
    execute if score @s General.Mob.Tick matches 0.. at @s facing entity @p[gamemode=!spectator,distance=..128] eyes run tp @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] ~ ~ ~ ~ 0

# 最初の移動
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/first_move

# 自身のモデルにモーションを再生させる
    execute if score @s General.Mob.Tick matches 40 unless score @s RW.LoopCount matches 1.. as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_3_right_loop/tween {to_frame:0,duration:5}

# 射撃
    # 偏差:ただしHard以下だと普通に狙ってくる
        # マーカー設置
            execute if predicate api:global_vars/difficulty/max/normal if score @s General.Mob.Tick matches 20 at @p[gamemode=!spectator,distance=..128] run summon marker ~ ~1.7 ~ {Tags:["RW.Marker.Aim"]}
            execute if predicate api:global_vars/difficulty/min/hard if score @s General.Mob.Tick matches 20 run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/aim/
            execute if score @s General.Mob.Tick matches 20 anchored eyes facing entity @e[type=marker,tag=RW.Marker.Aim,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~
            execute if score @s General.Mob.Tick matches 20 run kill @e[type=marker,tag=RW.Marker.Aim,sort=nearest,limit=1]
        # 警告
            execute if score @s General.Mob.Tick matches 20..30 positioned ~ ~1.5 ~ positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/alert
        # エイム射撃
            execute if score @s General.Mob.Tick matches 30..35 positioned ~ ~1.5 ~ run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/laser/shoot

    # 直接狙う
        # マーカー設置
            execute if score @s General.Mob.Tick matches 35 at @p[gamemode=!spectator,distance=..128] run summon marker ~ ~1.7 ~ {Tags:["RW.Marker.Aim"]}
            execute if score @s General.Mob.Tick matches 35 anchored eyes facing entity @e[type=marker,tag=RW.Marker.Aim,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~
            execute if score @s General.Mob.Tick matches 35 run kill @e[type=marker,tag=RW.Marker.Aim,sort=nearest,limit=1]
        # 警告
            execute if score @s General.Mob.Tick matches 35..45 positioned ~ ~1.5 ~ positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/alert
        # エイム射撃
            execute if score @s General.Mob.Tick matches 45..50 positioned ~ ~1.5 ~ run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/laser/shoot

# 幻影へ号令
    # 途中でテレポートさせる
        execute if score @s[scores={RW.Phase=3..,RW.LoopCount=0}] General.Mob.Tick matches 50 as @e[type=wither_skeleton,scores={MobID=1005},distance=..128] at @s run function asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/teleport
    # 次のループでレーザー撃ってくる
        execute if score @s[scores={RW.Phase=3..,RW.LoopCount=1}] General.Mob.Tick matches 50 run function asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/thunder/aiming_laser

# ループ
    execute if entity @s[scores={RW.LoopCount=..1,General.Mob.Tick=50}] run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/add_loop_count

# リセット
    execute if score @s General.Mob.Tick matches 70 run function asset:mob/1004.tultaria/tick/base_move/reset

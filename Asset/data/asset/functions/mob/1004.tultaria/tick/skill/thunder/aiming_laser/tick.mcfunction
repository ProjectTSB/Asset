#> asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/tick
#
# 最悪偏差撃ちレーザー
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

#> タグ
# @private
    #declare tag RX.Skill.AimingLaser.Direct
    #declare tag RX.Skill.AimingLaser.Advance


# モデルを自分の向きに
    execute if score @s General.Mob.Tick matches 0.. at @s facing entity @p eyes run tp @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] ~ ~ ~ ~ 0

# 最初の移動
    execute if score @s General.Mob.Tick matches 0 store result storage rw_storage: Rotation int 1 run random value -180..180
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/move.m with storage rw_storage:

# 自身のモデルにモーションを再生させる
    execute if score @s General.Mob.Tick matches 40 unless score @s RW.LoopCount matches 1.. as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_3_right_loop/play

# 射撃
    # 偏差
        # 幻影へ号令
            execute if score @s[scores={RW.Phase=3..}] General.Mob.Tick matches 20 run tag @e[type=wither_skeleton,scores={MobID=1005},distance=..64] add RX.Skill.AimingLaser.Advance
            execute if score @s[scores={RW.Phase=3..}] General.Mob.Tick matches 20 run function asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/thunder/aiming_laser
        # マーカー設置
            execute if score @s General.Mob.Tick matches 20 run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/aim/
            execute if score @s General.Mob.Tick matches 20 anchored eyes facing entity @e[type=marker,tag=RW.Marker.Aim,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~
            execute if score @s General.Mob.Tick matches 20 run kill @e[type=marker,tag=RW.Marker.Aim,sort=nearest,limit=1]
        # 警告
            execute if score @s General.Mob.Tick matches 20..30 positioned ~ ~1.5 ~ positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/alert
        # エイム射撃
            execute if score @s General.Mob.Tick matches 30..35 positioned ~ ~1.5 ~ run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/laser/shoot

    # 直接狙う
        # 幻影へ号令
           execute if score @s[scores={RW.Phase=3..}] General.Mob.Tick matches 35 run tag @e[type=wither_skeleton,scores={MobID=1005},distance=..64] add RX.Skill.AimingLaser.Direct
           execute if score @s[scores={RW.Phase=3..}] General.Mob.Tick matches 35 run function asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/thunder/aiming_laser
        # マーカー設置
            execute if score @s General.Mob.Tick matches 35 at @p[distance=..64] run summon marker ~ ~1.7 ~ {Tags:["RW.Marker.Aim"]}
            execute if score @s General.Mob.Tick matches 35 anchored eyes facing entity @e[type=marker,tag=RW.Marker.Aim,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~
            execute if score @s General.Mob.Tick matches 35 run kill @e[type=marker,tag=RW.Marker.Aim,sort=nearest,limit=1]
        # 警告
            execute if score @s General.Mob.Tick matches 35..45 positioned ~ ~1.5 ~ positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/alert
        # エイム射撃
            execute if score @s General.Mob.Tick matches 45..50 positioned ~ ~1.5 ~ run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/laser/shoot

# ループ
    execute if entity @s[scores={RW.LoopCount=..1,General.Mob.Tick=50}] run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/add_loop_count

# テレポート
    #execute if score @s General.Mob.Tick matches 0 at @s run function asset:mob/1004.tultaria/tick/base_move/teleport/vfx

# デバッグループ
    #execute if score @s General.Mob.Tick matches 70.. run scoreboard players set @s General.Mob.Tick 0

# アニメ停止
    execute if score @s General.Mob.Tick matches 70 as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_3_right_loop/stop

# リセット
    execute if score @s General.Mob.Tick matches 70 run function asset:mob/1004.tultaria/tick/base_move/reset

#> asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/tick
#
# 最悪偏差撃ちレーザー
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

# モデルを自分の向きに
    execute if score @s RW.Tick matches 0.. at @s facing entity @p eyes run tp @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] ~ ~ ~ ~ 0


# 最初の移動
    execute if score @s RW.Tick matches 0 store result storage rw_storage: Rotation int 1 run random value -180..180
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/move.m with storage rw_storage:

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s RW.Tick

# アニメストップ
    execute if score @s RW.Tick matches 10 as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_1_left/stop

# 自身のモデルにモーションを再生させる
    execute if score @s RW.Tick matches 10 as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_3_right/play

# 自身のモデルにモーションを再生させる
    execute if score @s RW.Tick matches 40 unless score @s RW.LoopCount matches 1.. as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_3_right_loop/play

# 射撃
    # 偏差
        # マーカー設置
            execute if score @s RW.Tick matches 20 facing entity @p eyes run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/aim/
        # 警告
            execute if score @s RW.Tick matches 20..30 positioned ~ ~1.5 ~ facing entity @e[type=marker,tag=RW.AimMarker,sort=nearest,limit=1] eyes positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/alert
        # エイム射撃
            execute if score @s RW.Tick matches 30..35 positioned ~ ~1.5 ~ facing entity @e[type=marker,tag=RW.AimMarker,sort=nearest,limit=1] eyes run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/laser/shoot
        # マーカーキル
            execute if score @s RW.Tick matches 35 run kill @e[type=marker,tag=RW.AimMarker,sort=nearest,limit=1]
    # 直接狙う
        # マーカー設置
            execute if score @s RW.Tick matches 35 at @p[distance=..30] anchored eyes rotated ~ 0 positioned ^ ^-1 ^ run summon marker ~ ~ ~ {Tags:["RW.AimMarker"]}
        # 警告
            execute if score @s RW.Tick matches 35..40 positioned ~ ~1.5 ~ facing entity @e[type=marker,tag=RW.AimMarker,sort=nearest,limit=1] eyes positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/alert
        # エイム射撃
            execute if score @s RW.Tick matches 40..45 positioned ~ ~1.5 ~ facing entity @e[type=marker,tag=RW.AimMarker,sort=nearest,limit=1] eyes run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/laser/shoot
        # マーカーキル
            execute if score @s RW.Tick matches 45 run kill @e[type=marker,tag=RW.AimMarker,sort=nearest,limit=1]

# ループ
    execute if entity @s[scores={RW.LoopCount=..1,RW.Tick=50}] run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/add_loop_count

# テレポート
    #execute if score @s RW.Tick matches 0 at @s run function asset:mob/1004.tultaria/tick/base_move/teleport/vfx

# デバッグループ
    #execute if score @s RW.Tick matches 70.. run scoreboard players set @s RW.Tick 0

# アニメ停止
    execute if score @s RW.Tick matches 70 as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_3_right_loop/stop

# リセット
    execute if score @s RW.Tick matches 70 run function asset:mob/1004.tultaria/tick/base_move/reset

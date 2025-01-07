#> asset:mob/1004.tultaria/tick/skill/fire/move_shot/tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

#> インターバル用スコアホルダー
# @private
    #declare score_holder $Interval

# 自身のモデルにモーションを再生させる
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_3_right/tween {to_frame:0,duration:1}

# 自身のモデルにモーションを再生させる
    execute if score @s General.Mob.Tick matches 30 as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_3_right_loop/tween {to_frame:0,duration:1}

# 最初の移動
    execute if score @s General.Mob.Tick matches 0 store result storage rw_storage: Rotation int 1 run random value -180..180
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/fire/move_shot/first_move.m with storage rw_storage:

# モデルをプレイヤーに向ける
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] facing entity @p eyes run tp @s ~ ~ ~ ~ 0

# 移動終了後こっちを向く
    execute facing entity @p eyes run tp @s[scores={General.Mob.Tick=10}] ~ ~ ~ ~ ~

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 射撃
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 if score @s General.Mob.Tick matches 15..35 at @e[type=marker,tag=RW.ModelLocator.RightHand,distance=..8,sort=nearest,limit=1] facing entity @p eyes run function asset:mob/1004.tultaria/tick/skill/fire/move_shot/shoot

# 幻影に攻撃させる
    execute if score @s[scores={RW.Phase=3..}] General.Mob.Tick matches 35 run function asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/fire/metor_rain

# ループ
    execute if entity @s[scores={RW.LoopCount=..1,General.Mob.Tick=35}] run function asset:mob/1004.tultaria/tick/skill/fire/move_shot/add_loop_count
# リセット
    execute if score @s General.Mob.Tick matches 60 run function asset:mob/1004.tultaria/tick/base_move/reset

#> asset:mob/1004.tultaria/tick/skill/move_shot/tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

# 最初の移動
    execute if score @s RW.Tick matches 0 store result storage rw_storage: Rotation int 1 run random value -180..180
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/move_shot/first_move.m with storage rw_storage:

# モデルをプレイヤーに向ける
    execute if score @s RW.Tick matches 0..60 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] facing entity @p eyes run tp @s ~ ~ ~ ~ 0

# 移動終了後こっちを向く
    execute facing entity @p eyes run tp @s[scores={RW.Tick=10}] ~ ~ ~ ~ ~

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s RW.Tick

# 射撃
    #execute if score @s RW.Tick matches 10..60 at @p as @s rotated as @s rotated ~ 0 run tp @s ^ ^ ^-8 ~ ~
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 if score @s RW.Tick matches 2..20 positioned ~ ~1.2 ~ facing entity @p eyes run function asset:mob/1004.tultaria/tick/skill/move_shot/shoot

# ループ
    execute if entity @s[scores={RW.LoopCount=..1,RW.Tick=20}] run function asset:mob/1004.tultaria/tick/skill/move_shot/add_loop_count

# テレポート
    #execute if score @s RW.Tick matches 0 at @s run function asset:mob/1004.tultaria/tick/base_move/teleport/vfx

# リセット
    execute if score @s RW.Tick matches 60 run function asset:mob/1004.tultaria/tick/base_move/reset
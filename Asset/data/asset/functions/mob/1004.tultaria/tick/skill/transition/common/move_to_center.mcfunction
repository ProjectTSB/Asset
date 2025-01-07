#> asset:mob/1004.tultaria/tick/skill/transition/common/move_to_center
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/windup
#   asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/windup

# アニメ再生
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/dodge_side/tween {to_frame:0,duration:1}

# 速度設定
    scoreboard players set @s RW.Speed 7

# 中心に移動
    function asset:mob/1004.tultaria/tick/move/teleport/move_to_center

# 中心を向く
    execute facing entity @e[type=marker,tag=RW.Marker.SpawnPoint,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~

# 移動終了までTick加算停止
    tag @s add RW.TickLock

# この動作をループしないようにスコア1だけ増やす
    scoreboard players add @s General.Mob.Tick 1

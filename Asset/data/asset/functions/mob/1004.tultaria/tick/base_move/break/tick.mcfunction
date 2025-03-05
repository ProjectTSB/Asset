#> asset:mob/1004.tultaria/tick/base_move/break/tick
#
# 防御が下がって無防備になる
#
# @within function asset:mob/1004.tultaria/tick/

# 演出
    particle minecraft:large_smoke ~ ~1 ~ 0.3 0.5 0.3 0 1

# ダウン時のループアニメ再生
    execute if score @s General.Mob.Tick matches 30 as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/break_loop/tween {to_frame:0,duration:1}

# アニメ再生
    execute if score @s General.Mob.Tick matches 197 as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_2_right/tween {to_frame:0,duration:1}

# 再召喚
    execute if score @s General.Mob.Tick matches 200 run function asset:mob/1004.tultaria/tick/base_move/break/summon_illusion/

# アニメ再生
    execute if score @s General.Mob.Tick matches 207 as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_1_left/tween {to_frame:0,duration:1}
    execute if score @s General.Mob.Tick matches 207 as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/variants/face_eyeopen/apply

# 復帰
    execute if score @s General.Mob.Tick matches 240 run function asset:mob/1004.tultaria/tick/base_move/break/recovery

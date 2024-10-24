#> asset:mob/1004.tultaria/tick/skill/water/spin_slash/tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

# 足場破壊
    execute if score @s RW.Tick matches 0 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/water/spin_slash/break_platform

# 剣を召喚
    # アニメ
        execute if score @s RW.Tick matches 17 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_1_left/stop
        execute if score @s RW.Tick matches 17 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_1_right/play
    # 召喚
        execute if score @s RW.Tick matches 20 run function asset:mob/1004.tultaria/tick/skill/water/spin_slash/summon_sword/

# 剣を振りながら前進
    # 付近のプレイヤーの方を向く
        execute if score @s RW.Tick matches 40 run function asset:mob/1004.tultaria/tick/skill/water/spin_slash/active
    # 剣を振るアニメ
        execute if score @s RW.Tick matches 40 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_melee_3/play
    # ダメージとエフェクト
        execute if score @s RW.Tick matches 45 run function asset:mob/1004.tultaria/tick/skill/water/spin_slash/slash/1
    # 慣性
        execute if score @s RW.Tick matches 40..45 run tp @s ^ ^ ^0.5
        execute if score @s RW.Tick matches 45..50 run tp @s ^ ^ ^0.3

    # 付近のプレイヤーの方を向く
        execute if score @s RW.Tick matches 60 run function asset:mob/1004.tultaria/tick/skill/water/spin_slash/active
    # 剣を振るアニメ
        execute if score @s RW.Tick matches 60 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_melee_3/stop
        execute if score @s RW.Tick matches 60 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_melee_1/play
    # ダメージとエフェクト
        execute if score @s RW.Tick matches 65 run function asset:mob/1004.tultaria/tick/skill/water/spin_slash/slash/2
    # 慣性
        execute if score @s RW.Tick matches 60..65 run tp @s ^ ^ ^0.5
        execute if score @s RW.Tick matches 65..70 run tp @s ^ ^ ^0.3
        execute if score @s RW.Tick matches 70..75 run tp @s ^ ^ ^0.1

# 剣を解き放つ
    execute if score @s RW.Tick matches 95 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_melee_1/stop
    execute if score @s RW.Tick matches 95 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_2_right/play
    execute if score @s RW.Tick matches 100 run function asset:mob/1004.tultaria/tick/skill/water/spin_slash/release_sword

# リセット
    execute if score @s RW.Tick matches 180.. run function asset:mob/1004.tultaria/tick/base_move/reset

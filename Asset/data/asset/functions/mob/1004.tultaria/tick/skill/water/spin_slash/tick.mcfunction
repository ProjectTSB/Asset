#> asset:mob/1004.tultaria/tick/skill/water/spin_slash/tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

#> インターバル用スコアホルダー
# @private
    #declare score_holder $Interval

# アイテム指定
    execute if score @s General.Mob.Tick matches 17 run item replace entity @e[type=item_display,tag=RW.Model.RightHandItem,sort=nearest,limit=1] container.0 with minecraft:stick{CustomModelData:20074}

# 剣を召喚
    # アニメ
        execute if score @s General.Mob.Tick matches 17 as @e[type=item_display,tag=RW.ModelRoot,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_1_right/tween {to_frame:0,duration:1}
    # 召喚
        execute if score @s General.Mob.Tick matches 20 run function asset:mob/1004.tultaria/tick/skill/water/spin_slash/summon_sword/

# 幻影にも剣を召喚
    execute if score @s General.Mob.Tick matches 20 run function asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/water/sword_spin/

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 回転中のダメージ
    scoreboard players operation $Interval Temporary %= $10 Const
    execute if score @s General.Mob.Tick matches 20..100 if score $Interval Temporary matches 0 run function asset:mob/1004.tultaria/tick/skill/water/spin_slash/spin_damage

# 剣を振りながら前進
    # 付近のプレイヤーの方を向く
        execute if score @s General.Mob.Tick matches 40 run function asset:mob/1004.tultaria/tick/skill/water/spin_slash/active
    # 剣を振るアニメ
        execute if score @s General.Mob.Tick matches 40 as @e[type=item_display,tag=RW.ModelRoot,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_melee_3/tween {to_frame:0,duration:1}
    # ダメージとエフェクト
        execute if score @s General.Mob.Tick matches 45 run function asset:mob/1004.tultaria/tick/skill/water/spin_slash/slash/1
    # 慣性
        execute if score @s General.Mob.Tick matches 40..45 run tp @s ^ ^ ^0.5
        execute if score @s General.Mob.Tick matches 45..50 run tp @s ^ ^ ^0.3

    # 付近のプレイヤーの方を向く
        execute if score @s General.Mob.Tick matches 60 run function asset:mob/1004.tultaria/tick/skill/water/spin_slash/active
    # 剣を振るアニメ
        execute if score @s General.Mob.Tick matches 60 as @e[type=item_display,tag=RW.ModelRoot,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_melee_1/tween {to_frame:0,duration:1}
    # ダメージとエフェクト
        execute if score @s General.Mob.Tick matches 65 run function asset:mob/1004.tultaria/tick/skill/water/spin_slash/slash/2
    # 慣性
        execute if score @s General.Mob.Tick matches 60..65 run tp @s ^ ^ ^0.5
        execute if score @s General.Mob.Tick matches 65..70 run tp @s ^ ^ ^0.3
        execute if score @s General.Mob.Tick matches 70..75 run tp @s ^ ^ ^0.1

# 剣を解き放つ
    execute if score @s General.Mob.Tick matches 95 as @e[type=item_display,tag=RW.ModelRoot,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_2_right/tween {to_frame:0,duration:1}
    execute if score @s General.Mob.Tick matches 100 run function asset:mob/1004.tultaria/tick/skill/water/spin_slash/release_sword

# 待機アニメを再生
    execute if score @s General.Mob.Tick matches 155 as @e[type=item_display,tag=RW.ModelRoot,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/neutral_air/tween {duration:5, to_frame: 0}

# リセット
    execute if score @s General.Mob.Tick matches 180.. run function asset:mob/1004.tultaria/tick/base_move/reset

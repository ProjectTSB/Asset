#> asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/windup
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/

# 構え
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/transition/common/start

# ちょっと下がってく
    execute if score @s General.Mob.Tick matches 0..5 rotated ~ 0 run tp @s ^ ^ ^-0.5
    execute if score @s General.Mob.Tick matches 6..15 rotated ~ 0 run tp @s ^ ^ ^-0.2
    execute if score @s General.Mob.Tick matches 16..20 rotated ~ 0 run tp @s ^ ^ ^-0.1

# センターに移動
    execute if score @s General.Mob.Tick matches 30 run function asset:mob/1004.tultaria/tick/skill/transition/common/move_to_center

# こっちを向く
    execute if score @s General.Mob.Tick matches 50 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] facing entity @p eyes run tp @s ~ ~ ~ ~ 0
    execute if score @s General.Mob.Tick matches 50 facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# アニメーション
    execute if score @s General.Mob.Tick matches 70 as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_1_left/tween {to_frame:0,duration:1}

# モードチェンジ
    execute if score @s General.Mob.Tick matches 75 run function asset:mob/1004.tultaria/tick/base_move/element_select/change/light

# アリーナ召喚
    execute if score @s General.Mob.Tick matches 80 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..64,limit=1] run function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/summon_arena

# 自身のモデルにモーションを再生させる
    execute if score @s General.Mob.Tick matches 100 as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_3_right/tween {to_frame:0,duration:1}
    execute if score @s General.Mob.Tick matches 130 unless score @s RW.LoopCount matches 1.. as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_3_right_loop/tween {to_frame:0,duration:1}

# 攻撃スタート
    execute if score @s General.Mob.Tick matches 130 run tag @s add RW.Transition.Phase2.Attack
    execute if score @s General.Mob.Tick matches 130 run scoreboard players set @s General.Mob.Tick -1

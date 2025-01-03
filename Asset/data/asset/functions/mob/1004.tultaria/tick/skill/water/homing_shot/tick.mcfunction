#> asset:mob/1004.tultaria/tick/skill/water/homing_shot/tick
#
# 誘導弾攻撃
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

# モデルをプレイヤーに向ける
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] facing entity @p eyes run tp @s ~ ~ ~ ~ 0
    execute if score @s General.Mob.Tick matches 0 facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# 自身のモデルにモーションを再生させる
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_1_right/tween {to_frame:0,duration:1}
# 射撃
    execute if score @s General.Mob.Tick matches 3 run function asset:mob/1004.tultaria/tick/skill/water/homing_shot/shot/

# 自身のモデルにモーションを再生させる
    execute if score @s General.Mob.Tick matches 10 as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_1_left/tween {to_frame:0,duration:1}
# 射撃
    execute if score @s General.Mob.Tick matches 13 run function asset:mob/1004.tultaria/tick/skill/water/homing_shot/shot/

# 自身のモデルにモーションを再生させる
    execute if score @s General.Mob.Tick matches 20 as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_1_right/tween {to_frame:0,duration:1}
# 射撃
    execute if score @s General.Mob.Tick matches 23 run function asset:mob/1004.tultaria/tick/skill/water/homing_shot/shot/

# デバッグ用、この行動をループする
#    execute if score @s General.Mob.Tick matches 60 run scoreboard players set @s General.Mob.Tick -10

# 幻影に攻撃させる
    execute if score @s[scores={RW.Phase=3..}] General.Mob.Tick matches 40 run function asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/water/homing_shot

# リセット
    execute if score @s General.Mob.Tick matches 60 run function asset:mob/1004.tultaria/tick/base_move/reset

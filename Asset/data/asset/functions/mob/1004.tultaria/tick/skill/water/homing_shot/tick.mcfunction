#> asset:mob/1004.tultaria/tick/skill/water/homing_shot/tick
#
# 誘導弾攻撃
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

# モデルをプレイヤーに向ける
    execute if score @s RW.Tick matches 0 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] facing entity @p eyes run tp @s ~ ~ ~ ~ 0
    execute if score @s RW.Tick matches 0 facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# アニメストップ
    execute if score @s RW.Tick matches 0 as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_1_left/stop

# 自身のモデルにモーションを再生させる
    execute if score @s RW.Tick matches 0 as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_1_right/play
# 射撃
    execute if score @s RW.Tick matches 3 run function asset:mob/1004.tultaria/tick/skill/water/homing_shot/shot/

# 自身のモデルにモーションを再生させる
    execute if score @s RW.Tick matches 10 as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_1_right/stop
    execute if score @s RW.Tick matches 10 as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_1_left/play
# 射撃
    execute if score @s RW.Tick matches 13 run function asset:mob/1004.tultaria/tick/skill/water/homing_shot/shot/

# 自身のモデルにモーションを再生させる
    execute if score @s RW.Tick matches 20 as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_1_left/stop
    execute if score @s RW.Tick matches 20 as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_1_right/play
# 射撃
    execute if score @s RW.Tick matches 23 run function asset:mob/1004.tultaria/tick/skill/water/homing_shot/shot/

# デバッグ用、この行動をループする
#    execute if score @s RW.Tick matches 60 run scoreboard players set @s RW.Tick -10

# リセット
    execute if score @s RW.Tick matches 30 run function asset:mob/1004.tultaria/tick/base_move/reset

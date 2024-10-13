#> asset:mob/1004.tultaria/tick/skill/fire/hell_fire/tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

# モデルをプレイヤーに向ける
    execute if score @s RW.Tick matches 0 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] facing entity @p eyes run tp @s ~ ~ ~ ~ 0
    execute if score @s RW.Tick matches 0 facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# 射撃
    execute if score @s RW.Tick matches 20 positioned ~ ~1.5 ~ positioned ^ ^ ^1.5 run function asset:mob/1004.tultaria/tick/skill/fire/hell_fire/shoot

# デバッグ用、この行動をループする
    execute if score @s RW.Tick matches 60 run scoreboard players set @s RW.Tick -10

# リセット
    execute if score @s RW.Tick matches 100 run function asset:mob/1004.tultaria/tick/base_move/reset

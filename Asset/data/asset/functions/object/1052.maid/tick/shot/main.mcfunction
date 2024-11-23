#> asset:object/1052.maid/tick/shot/main
#
#
#
# @within function asset:object/1052.maid/tick/action


# スコア
    scoreboard players set @s 1052.ActionTime 0
    scoreboard players add @s 1052.ShotCount 1

# 音ならす
    playsound minecraft:entity.zombie.attack_wooden_door neutral @a ~ ~ ~ 1 2
    playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 0.8 2

# 撃つ
    execute facing entity @e[type=#lib:hostile,tag=Enemy,distance=..14,sort=nearest,limit=1] feet positioned ~ ~-0.425 ~ anchored eyes positioned ^ ^ ^ run function asset:object/1052.maid/tick/shot/loop

# リセット
    tag @s remove Landing

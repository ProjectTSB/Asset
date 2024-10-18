#> asset:mob/1012.meteor_big/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/1012/tick

# 演出
    particle minecraft:soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0 5

# 壁の衝突判定
    execute at @s unless block ~ ~ ~ #lib:no_collision run function asset:mob/1012.meteor_big/tick/4.landing

# モブに接触
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0] positioned ~0.5 ~0.5 ~0.5 run function asset:mob/1012.meteor_big/tick/4.landing

# 落下する
<<<<<<< HEAD:Asset/data/asset/functions/mob/1012.meteor_big/tick/2.tick.mcfunction
    execute at @s run function asset:mob/1012.meteor_big/tick/3.move
    execute at @s run function asset:mob/1012.meteor_big/tick/3.move
    execute at @s run function asset:mob/1012.meteor_big/tick/3.move
    execute at @s run function asset:mob/1012.meteor_big/tick/3.move
    execute at @s run function asset:mob/1012.meteor_big/tick/3.move
=======
    tp @s ~ ~-0.4 ~
>>>>>>> master:Asset/data/asset/functions/mob/1012.meteor_big/tick/.mcfunction

#> asset:object/1009.arrow/hit_entity/from_non-player/
#
#
#
# @within function asset:object/1009.arrow/hit_entity/

#> Private
# @private
#declare tag 1009.Hit

#> Private
# @within function asset:object/1009.arrow/hit_entity/from_non-player/*
#declare tag 1009.Target

# 攻撃対象を実行者として諸々実行する
    execute positioned ~-0.1 ~-0.1 ~-0.1 as @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0] run tag @s add 1009.Hit
    execute positioned ~-0.1 ~-0.1 ~-0.1 as @a[tag=1009.Hit,dx=0,sort=random,limit=1] run tag @s add 1009.Target
    execute positioned ~-0.1 ~-0.1 ~-0.1 run tag @a[tag=1009.Hit,dx=0] remove 1009.Hit
    execute positioned ~-0.1 ~-0.1 ~-0.1 as @a[tag=1009.Target,dx=0] positioned ~0.1 ~0.1 ~0.1 run function asset:object/1009.arrow/hit_entity/from_non-player/as_target

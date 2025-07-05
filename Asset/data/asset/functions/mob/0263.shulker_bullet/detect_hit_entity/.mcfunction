#> asset:mob/0263.shulker_bullet/detect_hit_entity/
#
# プレイヤーとの接触を判定
#
# @within function asset:mob/alias/263/detect_hit_entity

# 判定
    execute positioned ~-0.4 ~-0.4 ~-0.4 as @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~-0.2 ~-0.2 ~-0.2 if entity @s[dx=0] run data modify storage asset:temp Projectile.IsHitEntity set value true

#> asset:mob/0263.shulker_bullet/detect_hit_block/
#
# ブロックとの接触を判定
#
# @within function asset:mob/alias/263/detect_hit_block

# 判定
    execute unless block ~ ~ ~ #lib:no_collision/ run data modify storage asset:temp Projectile.IsHitBlock set value true

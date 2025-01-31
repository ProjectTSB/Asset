#> asset:mob/0397.crystal_turret/ai/projectile/4.fire
#
# 発射
#
# @within function asset:mob/0397.crystal_turret/tick/

# Markerを召喚
    execute positioned ~ ~2 ~ run summon marker ~ ~ ~ {Tags:["B1.Marker"]}

# 前方拡散設定
    data modify storage lib: Argument.Distance set value 8.0
    data modify storage lib: Argument.Spread set value 2

# 前方拡散を実行する
    execute as @e[type=marker,tag=B1.Marker,distance=..3] at @s facing entity @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=1] eyes rotated ~ 0 run function lib:forward_spreader/circle

# 発射
    execute positioned ~ ~2 ~ facing entity @e[type=marker,tag=B1.Marker,distance=..15,limit=1] feet run function asset:mob/0397.crystal_turret/ai/projectile/0.summon

# マーカーを戻してあげる
    kill @e[type=marker,tag=B1.Marker,distance=..15,limit=1]

#> asset:mob/0420.astro_blaze/tick/fire
#
# 発射！！！
#
# @within function asset:mob/0420.astro_blaze/tick/

#> Tags
# @private
    #declare tag BO.Marker

# 弾数のデクリメント
    execute store result storage asset:context this.Bullet int 0.9999999999 run data get storage asset:context this.Bullet

# Markerを召喚
    execute positioned ~ ~1 ~ run summon marker ~ ~ ~ {Tags:["BO.Marker"]}

# 前方拡散設定
    data modify storage lib: Argument.Distance set value 8.0
    data modify storage lib: Argument.Spread set value 1.5

# 前方拡散を実行する
    execute as @e[type=marker,tag=BO.Marker,distance=..3] at @s facing entity @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=1] eyes rotated ~ ~2.5 run function lib:forward_spreader/circle

# 発射
    execute positioned ~ ~1 ~ facing entity @e[type=marker,tag=BO.Marker,distance=..15,limit=1] feet run function asset:mob/0420.astro_blaze/tick/summon

# マーカーを戻してあげる
    kill @e[type=marker,tag=BO.Marker,distance=..15,limit=1]

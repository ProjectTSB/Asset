#> asset:mob/0420.astro_blaze/tick/shoot/spread.m
#
#
#
# @within function asset:mob/0420.astro_blaze/tick/shoot/

#> Tags
# @private
    #declare tag BO.Marker

# まず、ターゲットがいなくなった場合、弾を0にしてreturnする
    $execute unless entity @p[tag=!PlayerShouldInvulnerable,scores={UserID=$(TargetID)},distance=..50] run return run data modify storage asset:context this.Bullet set value 0

# 弾数のデクリメント
    execute store result storage asset:context this.Bullet int 0.9999999999 run data get storage asset:context this.Bullet

# Markerを召喚
    execute positioned ~ ~1 ~ run summon marker ~ ~ ~ {Tags:["BO.Marker"]}

# 前方拡散設定
    data modify storage lib: Argument.Distance set value 8.0
    data modify storage lib: Argument.Spread set value 1.5

# ターゲット方向に対して前方拡散を実行する
    $execute as @e[type=marker,tag=BO.Marker,distance=..3] at @s facing entity @p[scores={UserID=$(TargetID)},distance=..50] eyes rotated ~ ~2.5 run function lib:forward_spreader/circle

# 発射
    execute positioned ~ ~1 ~ facing entity @e[type=marker,tag=BO.Marker,distance=..15,limit=1] feet run function asset:mob/0420.astro_blaze/tick/shoot/summon

# マーカーを戻してあげる
    kill @e[type=marker,tag=BO.Marker,distance=..15,limit=1]

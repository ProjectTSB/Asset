#> asset:object/2167.ahssat_bullet_core/tick/spread
#
# 弾丸召喚位置調整
#
# @within function asset:object/2167.ahssat_bullet_core/tick/shot_interval

# Markerを召喚
    execute positioned ~ ~ ~ run summon marker ~ ~ ~ {Tags:["2167.Marker"]}

# 前方拡散設定
    data modify storage lib: Argument.Distance set value 8.0
    data modify storage lib: Argument.Spread set value 2

# 前方拡散を実行する
    execute as @e[type=marker,tag=2167.Marker,distance=..3] at @s facing entity @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=1] eyes rotated ~ 0 run function lib:forward_spreader/circle

# 発射
    execute positioned ~ ~ ~ facing entity @e[type=marker,tag=2167.Marker,distance=..15,limit=1] feet run function asset:object/2167.ahssat_bullet_core/tick/summon

# マーカーをキル
    kill @e[type=marker,tag=2167.Marker,distance=..15]

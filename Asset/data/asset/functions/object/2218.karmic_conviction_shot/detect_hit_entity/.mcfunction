#> asset:object/2218.karmic_conviction_shot/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2218/detect_hit_entity

# Tagがあればヒット判定 割と大きめ
    execute positioned ~-0.75 ~-0.75 ~-0.75 if entity @a[gamemode=!spectator,dx=0.5,dy=0.5,dz=0.5,limit=1] run data modify storage asset:context IsHitEntity set value true

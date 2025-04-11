#> asset:object/2244.lawless_breaker_slashshot/detect_hit_entity/
#
#
#
# @within function asset:object/alias/2244/detect_hit_entity

# 四角い当たり判定を発生させるぞ
    # データ指定
        data modify storage lib: args set value {dx:2,dy:2,dz:1,selector:"@a[tag=!PlayerShouldInvulnerable,distance=..16]"}
    # 数Tickたったら、判定の発生を開始
        execute if score @s General.Object.Tick matches 4.. run function lib:rotatable_dxyz/m with storage lib: args
    # 上記ライブラリにひっかかったら、ヒットした判定が出る
        execute if entity @a[tag=DXYZ,distance=..16] run data modify storage asset:context IsHitEntity set value true

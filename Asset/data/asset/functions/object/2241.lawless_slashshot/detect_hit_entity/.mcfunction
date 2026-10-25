#> asset:object/2241.lawless_slashshot/detect_hit_entity/
#
#
#
# @within function asset:object/alias/2241/detect_hit_entity

# 前方扇形の当たり判定を発生させるぞ
    # データ指定
        data modify storage lib: Argument.BoundingFan set value {Angle:180,Radius:2.5,Height:2,Selector:"@a[tag=!PlayerShouldInvulnerable,distance=..16]"}
    # 数Tickたったら、扇型の判定を出す。若干下に出てくる。
        execute if score @s General.Object.Tick matches 4.. positioned ~ ~-2 ~ run function lib:bounding_fan/
    # 上記ライブラリにひっかかったら、ヒットした判定が出る
        execute if entity @a[tag=BoundingFan,distance=..16] run data modify storage asset:context IsHitEntity set value true

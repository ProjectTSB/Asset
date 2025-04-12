#> asset:mob/0175.queen_bee/tick/skill/tackle_formation/tackle
#
#
#
# @within function asset:mob/0175.queen_bee/tick/skill/tackle_formation/

# vfx
    execute positioned ^ ^ ^-1.5 run particle minecraft:poof ~ ~1.5 ~ 0.3 0.3 0.3 0 10 force

# 移動
    execute positioned ^ ^ ^1.5 run function asset:mob/0175.queen_bee/tick/common/tp/

# rotatableDXYZで判定
    data modify storage lib: Args.dx set value 0.6
    data modify storage lib: Args.dy set value 1.0
    data modify storage lib: Args.dz set value 1.5
    data modify storage lib: Args.selector set value "@a[tag=!PlayerShouldInvernerable,distance=..5]"
    execute positioned ^ ^0.5 ^0.75 run function lib:rotatable_dxyz/m with storage lib: Args

# DXYZのtag持ちがいたらダメージ処理実行
    execute if entity @p[tag=DXYZ,distance=..5] run function asset:mob/0175.queen_bee/tick/skill/tackle_formation/damage

# リセット
    tag @a[tag=DXYZ] remove DXYZ

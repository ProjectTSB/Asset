#> asset:mob/0420.astro_blaze/tick/jump
#
# プレイヤーの方向に移動
#
# @within function asset:mob/0420.astro_blaze/tick/

# 演出
    playsound item.trident.return hostile @a ~ ~ ~ 1.0 1.75
    playsound block.soul_sand.place hostile @a ~ ~ ~ 1.0 0.8

# 突進する
    data modify storage lib: Argument.VectorMagnitude set value 1.5
    execute facing entity @p[tag=!PlayerShouldInvulnerable,distance=..64,sort=nearest] eyes run function lib:motion/

# リセット
    data remove storage lib: Argument

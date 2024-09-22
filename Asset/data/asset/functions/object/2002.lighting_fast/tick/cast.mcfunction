#> asset:object/2002.lighting_fast/tick/cast
#
# 発動処理
#
# @within function asset:object/2002.lighting_fast/tick/

# パーティクル処理
    execute positioned ^ ^1.5 ^ run function asset:object/2002.lighting_fast/tick/vfx

# キル
    kill @s

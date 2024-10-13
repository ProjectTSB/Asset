#> asset:object/2048.wave_magic/hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2048/hit_block

# 着陸前
    execute if entity @s[tag=!2048.OnGround] run function asset:object/2048.wave_magic/hit_block/in_air

# 着陸後
    execute if entity @s[tag=2048.OnGround] run function asset:object/2048.wave_magic/hit_block/on_ground

# 実装フラグを立てる
    data modify storage asset:object Implement set value true

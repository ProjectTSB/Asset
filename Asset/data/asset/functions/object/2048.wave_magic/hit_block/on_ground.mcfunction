#> asset:object/2048.wave_magic/hit_block/on_ground
#
#
#
# @within function asset:object/2048.wave_magic/hit_block/

# 段差下に落ちる
    execute at @s if block ^ ^ ^ #lib:no_collision if block ^ ^-0.33 ^ #lib:no_collision run tp @s ^ ^-0.4 ^
# 段差上に上る
    execute at @s unless block ^ ^ ^ #lib:no_collision if block ^ ^1 ^ #lib:no_collision run tp @s ^ ^1 ^

# 完全に阻まれたら消滅
    execute at @s unless block ^ ^ ^ #lib:no_collision unless block ^ ^0.4 ^ #lib:no_collision unless block ^ ^-0.4 ^ #lib:no_collision run kill @s

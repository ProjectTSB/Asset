#> asset:object/2048.wave_magic/tick/go_up_and_down
#
#
#
# @within function asset:object/2048.wave_magic/tick/on_ground

# 段差下に落ちる
    execute at @s if block ^ ^ ^ #lib:no_collision_without_fluid if block ^ ^-0.5 ^ #lib:no_collision_without_fluid run tp @s ^ ^-0.5 ^
# 段差上に上る
    execute at @s unless block ^ ^ ^ #lib:no_collision_without_fluid if block ^ ^1 ^ #lib:no_collision_without_fluid run tp @s ^ ^1 ^

# 完全に阻まれたら消滅
    execute at @s unless block ^ ^ ^ #lib:no_collision_without_fluid unless block ^ ^1 ^ #lib:no_collision_without_fluid unless block ^ ^-0.5 ^ #lib:no_collision_without_fluid run kill @s

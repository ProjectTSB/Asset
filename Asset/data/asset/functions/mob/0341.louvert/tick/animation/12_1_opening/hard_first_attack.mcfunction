#> asset:mob/0341.louvert/tick/animation/12_1_opening/hard_first_attack
#
# ハードの火炎陣ばら撒き
#
# @within function asset:mob/0341.louvert/tick/animation/12_1_opening/first_attack

# Markerを呼び出す
    tp 0-0-0-0-0 ^ ^ ^ ~ ~
# 拡散値
    data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
# 拡散する
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/
# 火炎陣召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/6.fire_magic

# Markerを呼び出す
    tp 0-0-0-0-0 ^ ^ ^ ~ ~
# 拡散値
    data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
# 拡散する
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/
# 火炎陣召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/6.fire_magic

# Makerを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
    
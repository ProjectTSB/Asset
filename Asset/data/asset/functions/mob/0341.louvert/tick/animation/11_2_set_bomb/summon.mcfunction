#> asset:mob/0341.louvert/tick/animation/11_2_set_bomb/summon
#
# 火炎陣をばらまく
#
# @within function asset:mob/0341.louvert/tick/animation/11_2_set_bomb/

# Markerを呼び出す
    tp 0-0-0-0-0 ^ ^ ^ ~ ~
# 拡散値
    data modify storage lib: Argument.Bounds set value [[12d,12d],[0.5d,0.5d],[12d,12d]]
# 拡散する
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/
# 火炎陣召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/8.bomb

# Markerを呼び出す
    tp 0-0-0-0-0 ^ ^ ^ ~ ~
# 拡散値
    data modify storage lib: Argument.Bounds set value [[12d,12d],[0.5d,0.5d],[12d,12d]]
# 拡散する
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/
# 火炎陣召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/8.bomb

# Markerを呼び出す
    tp 0-0-0-0-0 ^ ^ ^ ~ ~
# 拡散値
    data modify storage lib: Argument.Bounds set value [[12d,12d],[0.5d,0.5d],[12d,12d]]
# 拡散する
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/
# 火炎陣召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/8.bomb

# Makerを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
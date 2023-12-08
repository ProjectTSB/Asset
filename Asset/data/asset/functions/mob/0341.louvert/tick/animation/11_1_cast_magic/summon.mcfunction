#> asset:mob/0341.louvert/tick/animation/11_1_cast_magic/summon
#
# 火炎陣をばらまく
#
# @within function asset:mob/0341.louvert/tick/animation/11_1_cast_magic/

# Markerを呼び出す
    tp 0-0-0-0-0 ^ ^ ^ ~ ~
# 拡散値
    data modify storage lib: Argument.Bounds set value [[5d,5d],[0d,0d],[5d,5d]]
# 拡散する
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/
# 火炎陣召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/animation/12_1_opening/first_attack_summon

# Markerを呼び出す
    tp 0-0-0-0-0 ^ ^ ^ ~ ~
# 拡散値
    data modify storage lib: Argument.Bounds set value [[5d,5d],[0d,0d],[5d,5d]]
# 拡散する
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/
# 火炎陣召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/animation/12_1_opening/first_attack_summon

# Markerを呼び出す
    tp 0-0-0-0-0 ^ ^ ^ ~ ~
# 拡散値
    data modify storage lib: Argument.Bounds set value [[5d,5d],[0d,0d],[5d,5d]]
# 拡散する
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/
# 火炎陣召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/animation/12_1_opening/first_attack_summon

# Makerを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
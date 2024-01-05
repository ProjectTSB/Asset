#> asset:mob/0341.louvert/tick/animation/15_3_final_spell_fire/meteor
#
# メテオ発射
#
# @within function asset:mob/0341.louvert/tick/animation/15_3_final_spell_fire/

# Markerを呼び出す
    tp 0-0-0-0-0 ^ ^ ^ ~ ~
# 拡散値
    data modify storage lib: Argument.Bounds set value [[12d,12d],[0d,0d],[12d,12d]]
# 拡散する
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/
# メテオ召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/7.meteor

# Markerを呼び出す
    tp 0-0-0-0-0 ^ ^ ^ ~ ~
# 拡散値
    data modify storage lib: Argument.Bounds set value [[12d,12d],[0d,0d],[12d,12d]]
# 拡散する
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/
# メテオ召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/7.meteor

# Markerを呼び出す
    tp 0-0-0-0-0 ^ ^ ^ ~ ~
# 拡散値
    data modify storage lib: Argument.Bounds set value [[12d,12d],[0d,0d],[12d,12d]]
# 拡散する
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/
# メテオ召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/7.meteor

# Makerを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
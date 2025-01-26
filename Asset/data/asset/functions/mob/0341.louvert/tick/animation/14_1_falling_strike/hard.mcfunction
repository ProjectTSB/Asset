#> asset:mob/0341.louvert/tick/animation/14_1_falling_strike/hard
#
# ハードのみ追尾弾発動
#
# @within function
#   asset:mob/0341.louvert/tick/animation/14_1_falling_strike/
#   asset:mob/0341.louvert/tick/animation/15_4_final_spell_fall_strike/

# Markerを呼び出す
    tp 0-0-0-0-0 ^ ^ ^ ~ ~
# 拡散値
    data modify storage lib: Argument.Bounds set value [[6d,6d],[0d,0d],[6d,6d]]
# 拡散する
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/
# ソウルハード召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/11.soul_quake_hard

# Makerを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
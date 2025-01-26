#> asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/soul_blast
#
# 追加のソウルブラスト
#
# @within function asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/

# Markerを呼び出す
    tp 0-0-0-0-0 ^ ^ ^ ~ 0
# 拡散値
    data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
# 拡散する
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/
# 演出のためにランダムな方向を向かせる
    execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run function lib:random/
# ソウルブラスト召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/5.soul_blast
# ソウルブラストを90度回転
    execute at 0-0-0-0-0 as @e[tag=2145.SoulBlast,distance=..0.001,limit=1] run tp @s ^ ^0.01 ^ ~90 ~
# ソウルブラスト召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/5.soul_blast
# ソウルブラストを配置
    execute at 0-0-0-0-0 as @e[tag=2145.SoulBlast,distance=..0.001,limit=1] run tp @s ^ ^ ^ ~ ~
# Makerを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0

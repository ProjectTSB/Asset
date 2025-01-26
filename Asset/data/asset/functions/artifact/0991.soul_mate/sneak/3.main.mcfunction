#> asset:artifact/0991.soul_mate/sneak/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0991.soul_mate/sneak/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    #function asset:artifact/common/use/mainhand

# ソウルメイト呼び出し
    execute unless predicate lib:is_ban_tp_area as @a[tag=RJ.SoulMate] at @s unless predicate lib:is_ban_tp_area run tp @s @p[tag=this]
    execute if predicate lib:is_ban_tp_area run tellraw @s {"text":"不思議な力が転送を妨害した。","color":"dark_aqua"}
# 演出
    playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1
    playsound minecraft:entity.allay.ambient_with_item player @a ~ ~ ~ 1 1
    particle minecraft:dust 0.533 0.914 0.992 1.5 ~ ~0.7 ~ 0.5 0.5 0.5 0 50
    particle minecraft:dust 0.18 0.753 1 1.5 ~ ~0.7 ~ 0.5 0.5 0.5 0 50

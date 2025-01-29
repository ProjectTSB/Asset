#> asset:artifact/0991.soul_mate/keep_sneak_3s/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/991/keep_sneak_3s/

# 演出
    playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1
    playsound minecraft:entity.allay.ambient_with_item player @a ~ ~ ~ 1 1
    particle minecraft:dust 0.533 0.914 0.992 1.5 ~ ~0.7 ~ 0.5 0.5 0.5 0 50
    particle minecraft:dust 0.18 0.753 1 1.5 ~ ~0.7 ~ 0.5 0.5 0.5 0 50

# ソウルメイト呼び出し
    execute if predicate lib:is_ban_tp_area run tellraw @s {"text":"不思議な力が転送を妨害した。","color":"dark_aqua"}
    execute unless predicate lib:is_ban_tp_area as @a[tag=RJ.SoulMate] at @s unless predicate lib:is_ban_tp_area run tp @s @p[tag=this]

# クールダウンセット
    scoreboard players set @s RJ.Cooldown 60
    schedule function asset:artifact/0991.soul_mate/keep_sneak_3s/schedule 1t replace

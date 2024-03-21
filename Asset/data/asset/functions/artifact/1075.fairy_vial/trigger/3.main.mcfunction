#> asset:artifact/1075.fairy_vial/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1075.fairy_vial/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 回復対象にTagを付与
# 回復対象：使用者と20m以内の現在体力の低いプレイヤー2名
    tag @s add HealTarget

# 現在体力の低いプレイヤー2名を特定してTagを付与
    execute if entity @p[tag=!HealTarget,distance=..20] run function asset:artifact/1075.fairy_vial/trigger/4.find_lowest_health_player
    execute if entity @p[tag=!HealTarget,distance=..20] run function asset:artifact/1075.fairy_vial/trigger/4.find_lowest_health_player

# 回復対象の位置で演出
# playsoundは回復対象にのみ聞こえる 妖精っぽくて良くない？
    execute at @a[tag=HealTarget,distance=..20] run particle dust 1000000000 1 1000000000 1.3 ~ ~1.2 ~ 0.5 0.4 0.5 0 30 normal @a
    execute as @a[tag=HealTarget,distance=..20] at @s run playsound minecraft:entity.allay.item_given player @s ~ ~ ~ 1 1.2

# 回復 回復量 = 使用者の最大体力の5%
    execute store result storage api: Argument.Heal double 0.05 run attribute @s generic.max_health get 1
    function api:heal/modifier
    execute as @a[tag=HealTarget,distance=..20] run function api:heal/
    function api:heal/reset

# リセット
    tag @a[tag=HealTarget] remove HealTarget
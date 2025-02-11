#> asset:artifact/1075.fairy_vial/receive_heal/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1075/receive_heal/

# 回復対象にTagを付与
# 回復対象：使用者と20m以内の現在体力の低いプレイヤー2名
    tag @s add HealTarget

# 体力の最も失ったプレイヤー2名を特定してTagを付与
    execute if entity @p[tag=!HealTarget,distance=..20] run function asset:artifact/1075.fairy_vial/receive_heal/find_target/
    execute if entity @p[tag=!HealTarget,distance=..20] run function asset:artifact/1075.fairy_vial/receive_heal/find_target/

# 回復対象の位置で演出
# playsoundは回復対象にのみ聞こえる 妖精っぽくて良くない？
    execute at @a[tag=HealTarget,distance=..20] run particle dust 1000000000 1 1000000000 1.3 ~ ~1.2 ~ 0.5 0.4 0.5 0 30 normal @a
    execute as @a[tag=HealTarget,distance=..20] at @s run playsound minecraft:entity.allay.item_given player @s ~ ~ ~ 1.4 1.2

# 回復 回復量 = 使用者の最大体力の5%
    function api:modifier/max_health/get
    execute store result storage api: Argument.Heal double 0.05 run data get storage api: Return.MaxHealth 1
    function api:heal/modifier
    execute as @a[tag=HealTarget,distance=..20] run function api:heal/
    function api:heal/reset

# リセット
    tag @a[tag=HealTarget] remove HealTarget

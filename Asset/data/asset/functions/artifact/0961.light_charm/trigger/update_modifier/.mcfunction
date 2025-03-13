#> asset:artifact/0961.light_charm/trigger/update_modifier/
#
#
#
# @within function asset:artifact/0961.light_charm/trigger/**main

# 補正を削除
    attribute @s minecraft:generic.armor modifier remove 1-0-1-0-03c100000007
    attribute @s minecraft:generic.movement_speed modifier remove 1-0-1-0-03c100000007

# 個数を取得
    execute store result storage asset:temp Args.Count int 1 if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:961}}}]

# 個数に比例して補正量を計算
    # 防御力 (Count * -1)
        execute store result storage asset:temp Args.Armor int -1 run data get storage asset:temp Args.Count

    # 移動速度 (Count * 0.015)
        execute store result storage asset:temp Args.Speed double 0.015 run data get storage asset:temp Args.Count

# 適用
    execute unless data storage asset:temp Args{Count:0} run function asset:artifact/0961.light_charm/trigger/update_modifier/apply.m with storage asset:temp Args

# リセット
    data remove storage asset:temp Args

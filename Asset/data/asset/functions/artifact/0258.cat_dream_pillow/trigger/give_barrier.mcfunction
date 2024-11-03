#> asset:artifact/0258.cat_dream_pillow/trigger/give_barrier
#
# バリアをプレイヤーに再帰で付与していく
#
# @within function
#   asset:artifact/0258.cat_dream_pillow/trigger/3.main
#   asset:artifact/0258.cat_dream_pillow/trigger/give_barrier

# このmcf実行前にHeal.To[]とHeal.Amounts[]をコピーする
# Temp.To[]の最後尾のUserIDのプレイヤーに、Temp.Amounts[]の最後尾の値の30%のバリアを付与する
# ↑が終わったらTemp.To[]とTemp.Amountsの最後尾の要素を削除し、要素が残っていれば再帰する

# UserIDを取得
    execute store result score $TempUserID Temporary run data get storage asset:temp Temp.To[-1]

# Amountsの30%の10倍を取得 代入する際に0.1倍にする
    execute store result score $BarrierAmount Temporary run data get storage asset:temp Temp.Amounts[-1] 3

# 該当プレイヤーにTagをつけておく
    execute at @a if score $TempUserID Temporary = @p UserID run tag @p add BarrierTarget

# 最大HPの30%の10倍を取得
    execute as @p[tag=BarrierTarget] run function api:modifier/max_health/get
    execute store result score $MaxHP30Per Temporary run data get storage api: Return.MaxHealth 3

# バリア数値が最大HPの30%を超えないようにし、フィールドへ代入
    execute store result storage api: Argument.FieldOverride.Barrier double 0.1 run scoreboard players operation $BarrierAmount Temporary < $MaxHP30Per Temporary

# バリア用エフェクトを付与
    data modify storage api: Argument.ID set value 267
    execute as @p[tag=BarrierTarget] run function api:entity/mob/effect/give

# Tagを削除
    tag @p[tag=BarrierTarget] remove BarrierTarget

# 配列の最後尾の要素を削除
    data remove storage asset:temp Temp.To[-1]
    data remove storage asset:temp Temp.Amounts[-1]

# 要素がまだあれば再帰
    execute if data storage asset:temp Temp.To[-1] run function asset:artifact/0258.cat_dream_pillow/trigger/give_barrier

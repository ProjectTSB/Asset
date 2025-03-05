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

# 演出 使用者には演出を出さない
    execute at @p[tag=BarrierTarget,tag=!this] run particle dust 1000000000 -0.3 -0.2 1 ~ ~1.2 ~ 0.8 0.4 0.8 0 50

# 現在のバリアの数値を取得
    data modify storage api: Argument.UUID set value [I;1,3,267,0]
    execute as @p[tag=BarrierTarget] run function api:entity/player/absorption/get
    execute store result score $CurrentBarrier Temporary run data get storage api: Return.Absorption.Amount 10

# 付与するバリア数値 < 現在バリア数値ならTagを削除
    execute if score $BarrierAmount Temporary < $CurrentBarrier Temporary run tag @p[tag=BarrierTarget] remove BarrierTarget

# バリア数値をフィールドへ代入
    execute store result storage api: Argument.FieldOverride.Barrier double 0.1 run scoreboard players get $BarrierAmount Temporary

# バリア用エフェクトを付与
    data modify storage api: Argument.ID set value 267
    execute as @p[tag=BarrierTarget] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# Tagを削除
    tag @p[tag=BarrierTarget] remove BarrierTarget

# 配列の最後尾の要素を削除
    data remove storage asset:temp Temp.To[-1]
    data remove storage asset:temp Temp.Amounts[-1]

# 要素がまだあれば再帰
    execute if data storage asset:temp Temp.To[-1] run function asset:artifact/0258.cat_dream_pillow/trigger/give_barrier

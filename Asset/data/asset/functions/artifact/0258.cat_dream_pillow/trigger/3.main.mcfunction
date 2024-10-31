#> asset:artifact/0258.cat_dream_pillow/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0258.cat_dream_pillow/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare score_holder $Random
    #declare score_holder $MaxHP30Per
    #declare score_holder $Barrier
    #declare tag BarrierTarget

# 演出
    particle dust 1000000000 -0.3 -0.2 1 ~ ~1.2 ~ 0.8 0.4 0.8 0 50

# 乱数生成
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $3 Const

# playsound
    execute if score $Random Temporary matches 0 run playsound entity.cat.ambient player @a ~ ~ ~ 1 1 0
    execute if score $Random Temporary matches 1 run playsound entity.cat.purreow player @a ~ ~ ~ 1 1 0
    execute if score $Random Temporary matches 2 run playsound entity.cat.stray_ambient player @a ~ ~ ~ 1 1 0

# 最大HPの30%の10倍を取得
    function api:modifier/max_health/get
    execute store result score $MaxHP30Per Temporary run data get storage api: Return.MaxHealth 3

# 回復量の30%の10倍をバリア数値へ代入
    execute store result score $Barrier Temporary run data get storage asset:context Heal.Amount 3

# バリア数値が最大HPの30%を超えないようにする
    scoreboard players operation $Barrier Temporary < $MaxHP30Per Temporary

# $Barrierの値の0.1倍をFieldOverrideへ突っ込む
    execute store result storage api: Argument.FieldOverride.Barrier double 0.1 run scoreboard players get $Barrier Temporary

# 自身と回復者にTagを付与
    tag @s add BarrierTarget
    tag @a[tag=Receiver,distance=..30] add BarrierTarget

# 自身と回復対象へエフェクトを付与
    data modify storage api: Argument.ID set value 267
    execute as @a[tag=BarrierTarget] run function api:entity/mob/effect/give

# リセット
    scoreboard players reset $Random Temporary
    scoreboard players reset $MaxHP30Per Temporary
    scoreboard players reset $Barrier Temporary
    tag @a[tag=BarrierTarget,distance=..30] remove BarrierTarget

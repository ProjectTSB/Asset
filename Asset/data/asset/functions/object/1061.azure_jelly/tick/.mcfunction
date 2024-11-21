#> asset:object/1061.azure_jelly/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1061/tick

#> Private
# @private
    #declare score_holder $Interval

# OwnerにTag付与
    execute at @a if score @s 1061.OwnerID = @p UserID run tag @p add 1061.Owner
    #say @p[tag=1061.Owner]

# インターバル
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $30 Const

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 周囲にOwnerがいなければOwnerの方を向く
    execute if score $Interval Temporary matches 0 unless entity @p[tag=1061.Owner,distance=..8] facing entity @p[tag=1061.Owner] eyes run function asset:object/1061.azure_jelly/tick/forward_spread

# 周囲にOwnerがいればランダムな方向を向く
    execute if score $Interval Temporary matches 0 if entity @p[tag=1061.Owner,distance=..8] run function asset:object/1061.azure_jelly/tick/random_rotate

# 移動
    execute if score $Interval Temporary matches 0 at @s run tp @s ^ ^ ^ ~ -30
    execute if score $Interval Temporary matches 0..29 at @s run tp @s ^ ^ ^0.3 ~ ~2



# リセット
    scoreboard players reset $Interval Temporary
    tag @p[tag=1061.Owner] remove 1061.Owner

# 消滅処理
    kill @s[scores={General.Object.Tick=600..}]

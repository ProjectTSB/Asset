#> asset:object/2049.lightning_magic/tick/on_ground
#
# 一度地面に着いてからの処理
#
# @within function asset:object/2049.lightning_magic/tick/

#> Private
# @private
    #declare score_holder $Interval

# 地上での存在時間のデクリメント
    execute store result storage asset:context this.OnGroundTick int 0.9999999999 run data get storage asset:context this.OnGroundTick

# 一定間隔で実行
    execute store result score $Interval Temporary run data get storage asset:context this.OnGroundTick
    scoreboard players operation $Interval Temporary %= $8 Const
    execute if score $Interval Temporary matches 0 run tag @s add 2049.Interval
    scoreboard players reset $Interval Temporary

# 一定間隔でtext_displayのフレームを反映
    execute store result score $Interval Temporary run data get storage asset:context this.OnGroundTick
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 on passengers if entity @s[type=text_display] run function asset:object/2049.lightning_magic/tick/text_frame
    scoreboard players reset $Interval Temporary

# IntervalTagがある時のみ実行
    execute if entity @s[tag=2049.Interval] run function asset:object/2049.lightning_magic/tick/thunder

# プレイヤーの方向へ誘導する
    execute if predicate api:global_vars/difficulty/max/2_hard facing entity @p[gamemode=!spectator,distance=..100] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-400 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~
    execute if predicate api:global_vars/difficulty/min/3_blessless facing entity @p[gamemode=!spectator,distance=..100] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-200 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~

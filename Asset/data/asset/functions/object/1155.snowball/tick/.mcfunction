#> asset:object/1155.snowball/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1155/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# super
    function asset:object/super.tick

# 一定時間経過で消滅兼ヒット判定
# 既にHitメソッドが実行されている可能性があるので対策はしておく
    execute if score @s General.Object.Tick matches 30.. if score @s ObjectID matches -2147483648..2147483647 run function asset:object/call.m {method:"hit"}

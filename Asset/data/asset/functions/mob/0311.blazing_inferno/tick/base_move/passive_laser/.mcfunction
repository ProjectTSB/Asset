#> asset:mob/0311.blazing_inferno/tick/base_move/passive_laser/
#
# パッシブレーザー。定期的に発動する。
#
# @within function asset:mob/0311.blazing_inferno/tick/base_move/

#> 拡散マーカーとインターバルのスコアホルダー
# @private
    #declare tag SpreadMarker
    #declare score_holder $Interval

# 攻撃用のスコア加算
    scoreboard players add @s 8N.PassiveLaser 1

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s 8N.PassiveLaser

# 数Tickおきに発動する
    scoreboard players operation $Interval Temporary %= $30 Const
    execute if score $Interval Temporary matches 0 run function asset:mob/0311.blazing_inferno/tick/base_move/passive_laser/summon
    execute if score $Interval Temporary matches 0 run function asset:mob/0311.blazing_inferno/tick/base_move/passive_laser/summon
    execute if score $Interval Temporary matches 0 run function asset:mob/0311.blazing_inferno/tick/base_move/passive_laser/summon
    execute if score $Interval Temporary matches 0 run function asset:mob/0311.blazing_inferno/tick/base_move/passive_laser/summon
    execute if score $Interval Temporary matches 0 run function asset:mob/0311.blazing_inferno/tick/base_move/passive_laser/summon
# リセット
    execute if score $Interval Temporary matches 0 run scoreboard players reset @s 8N.PassiveLaser
    scoreboard players reset $Interval Temporary

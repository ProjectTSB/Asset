#> asset:mob/0311.blazing_inferno/tick/phase_transition/restart
#
# 行動再開
#
# @within function asset:mob/0311.blazing_inferno/tick/phase_transition/

# ベース動作を実行
    tag @s remove 8N.Moveset.Transition
    tag @s add 8N.Moveset.BaseMove
    tag @s add 8N.Health.50Per

# 現在もしレールから外れているなら、戻る
    execute if entity @s[tag=!8N.RailMove] run function asset:mob/0311.blazing_inferno/tick/base_move/return_to_rail

# スコアリセット
    scoreboard players set @s General.Mob.Tick -20

# 無敵解除
    data modify entity @s Invulnerable set value 0b
    tag @s remove Uninterferable

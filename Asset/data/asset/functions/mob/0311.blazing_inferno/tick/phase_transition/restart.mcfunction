#> asset:mob/0311.blazing_inferno/tick/phase_transition/restart
#
# 行動再開
#
# @within function asset:mob/0311.blazing_inferno/tick/phase_transition/

# ベース動作を実行
    tag @s remove 8N.Moveset.Transition
    tag @s add 8N.Moveset.BaseMove
    tag @s add 8N.Health.50Per

# 無敵になる
    data modify entity @s Invulnerable set value 0b
    tag @s remove Uninterferable

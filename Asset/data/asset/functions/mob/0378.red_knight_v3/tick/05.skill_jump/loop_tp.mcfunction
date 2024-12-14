#> asset:mob/0378.red_knight_v3/tick/05.skill_jump/loop_tp
#
#
#
# @within function
#   asset:mob/0378.red_knight_v3/tick/05.skill_jump/jump
#   asset:mob/0378.red_knight_v3/tick/05.skill_jump/loop_tp

#> tag
# @private
    #declare tag TPMarker

# 演出
    particle flame ~ ~ ~ 0 0 0 0 0

# マーカーが来たらTP確定
    execute if entity @e[type=marker,tag=TPMarker,distance=..1,sort=nearest,limit=1] facing entity @e[type=marker,tag=TPMarker,distance=..40,sort=nearest,limit=1] feet run function asset:mob/0378.red_knight_v3/tick/common/absolute_tp_addtag
# 自分から離れ過ぎたらTP確定
    execute unless entity @s[distance=..40] run function asset:mob/0378.red_knight_v3/tick/common/absolute_tp_addtag
# マーカーが近くにいないなら前方に再帰。離れ過ぎたら終わる
    execute if entity @s[tag=!AI.TPConfirmed,distance=..40] unless entity @e[type=marker,tag=TPMarker,distance=..1,sort=nearest,limit=1] facing entity @e[type=marker,tag=TPMarker,distance=..40,sort=nearest,limit=1] feet positioned ^ ^ ^0.5 run function asset:mob/0378.red_knight_v3/tick/05.skill_jump/loop_tp
# タグ消す
    tag @s remove AI.TPConfirmed

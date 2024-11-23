#> asset:mob/0301.sinful_thoughts/tick/slash/transition_jump
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/slash/

# タグをつけてテレポートしないようにする
    tag @s add RejectTeleport
# とりあえずリセット
    function asset:mob/0301.sinful_thoughts/tick/reset
# タグつけて
    tag @s add 8D.SkillJump
    tag @s remove RejectTeleport
# スコアをつける
    scoreboard players set @s 8D.Tick 0

# firsttickが飛ばされるのでここでfirst_tickの代わりをする
    function asset:mob/0301.sinful_thoughts/tick/jump/first

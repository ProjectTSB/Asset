#> asset:mob/0059.jack_o_lantern/tick/skill_select
#
# スキルを選択する
#
# @within function asset:mob/0059.jack_o_lantern/tick/

#> Private
# @private
    #declare score_holder $Random

# 乱数によるスキル選択
    data modify storage lib: Args.key set value "59.Skill"
    data modify storage lib: Args.max set value 6
    data modify storage lib: Args.scarcity_history_size set value 3
    execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args

# デバッグ用
    scoreboard players set $Random Temporary 0


# スキルTagを付与
    execute if score $Random Temporary matches 0 run tag @s add 1N.Quiz

# リセット
    scoreboard players reset $Random Temporary

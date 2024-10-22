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
    data modify storage lib: Args.max set value 4
    data modify storage lib: Args.scarcity_history_size set value 3
    execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args

# 体力が40%以下かつ一度も大技を撃ってないなら大技を使用し、再使用防止Tagを付与
    execute if entity @s[tag=1N.HealthLess40Per,tag=!1N.AlreadySpecial] run scoreboard players set $Random Temporary 10
    execute if entity @s[tag=1N.HealthLess40Per,tag=!1N.AlreadySpecial] run tag @s add 1N.AlreadySpecial

# デバッグ用
    # scoreboard players set $Random Temporary 2

# スキルTagを付与
    execute if score $Random Temporary matches 0 run tag @s add 1N.Quiz
    execute if score $Random Temporary matches 1 run tag @s add 1N.GiantPumpkin1
    execute if score $Random Temporary matches 2 run tag @s add 1N.GiantPumpkin2
    execute if score $Random Temporary matches 3 run tag @s add 1N.Missile

    execute if score $Random Temporary matches 10 run tag @s add 1N.PumpkinRain

# リセット
    scoreboard players reset $Random Temporary

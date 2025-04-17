#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/cycle_reset/deadly_select
#
# 必殺技を選んで使う。Blesslessで怖いレーザー使うための処理。
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/cycle_reset/activate_deadly_attack

#> private
# @private
    #declare score_holder $Random

# 行動中扱いにする
    tag @s add C5.InAction

# 乱数によるスキル選択
    data modify storage lib: Args.key set value "0437.DeadlySelect"
    data modify storage lib: Args.max set value 2
    data modify storage lib: Args.scarcity_history_size set value 2
    execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args

# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add C5.Skill.SuperLaser
    execute if score $Random Temporary matches 1 run tag @s add C5.Skill.SuperSlam

# リセット
    scoreboard players reset $Random Temporary

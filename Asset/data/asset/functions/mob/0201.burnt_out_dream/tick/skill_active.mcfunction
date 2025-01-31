#> asset:mob/0201.burnt_out_dream/tick/skill_active
#
#
#
# @within function asset:mob/0201.burnt_out_dream/tick/

# スキル
    execute if entity @s[tag=5L.Sword] run function asset:mob/0201.burnt_out_dream/tick/1.sword/main
    execute if entity @s[tag=5L.Arrow] run function asset:mob/0201.burnt_out_dream/tick/2.arrow/main
    execute if entity @s[tag=5L.Step] run function asset:mob/0201.burnt_out_dream/tick/3.step/main

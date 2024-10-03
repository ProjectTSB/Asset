#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/1.main
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill_branch

# 自分を透明化する
    execute if entity @s[scores={1N.Tick=0}] run item replace entity @s armor.head with stone{CustomModelData:20019}
    execute if entity @s[scores={1N.Tick=0}] run effect give @s slowness 12 100 true
    execute if entity @s[scores={1N.Tick=0}] run effect clear @s glowing

# 自分を何処かにテレポートさせる
    execute if entity @s[scores={1N.Tick=20}] run function asset:mob/0059.jack_o_lantern/tick/spread_tp

# 眷属をいっぱいだす
    execute if entity @s[scores={1N.Tick=20}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/2.summon

# 自分を表示する
    execute if entity @s[scores={1N.Tick=20}] run item replace entity @s armor.head with carved_pumpkin{CustomModelData:20016}

# hurt時につく被ダメタグがあった場合、クイズに正解して、このスキルを終える
    execute if entity @s[scores={1N.Tick=20..159}] if entity @s[tag=1N.Hurt] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/4.quiz_clear

# クイズに失敗した場合、発光する
    execute if entity @s[scores={1N.Tick=160}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/5.glow

    execute if entity @s[scores={1N.Tick=260..}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/6.end

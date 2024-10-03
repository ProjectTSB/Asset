#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/1.main
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill_branch

# 自分を透明化する
    execute if entity @s[scores={1N.Tick=0}] run item replace entity @s armor.head with stone{CustomModelData:20019}
    execute if entity @s[scores={1N.Tick=0}] run effect give @s slowness 12 100 true
    execute if entity @s[scores={1N.Tick=0}] run effect give @s weakness 8 100 true
    execute if entity @s[scores={1N.Tick=0}] run effect clear @s glowing

# 自分を何処かにテレポートさせる
    execute if entity @s[scores={1N.Tick=20}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/2.spread

# 眷属をいっぱいだす
    execute if entity @s[scores={1N.Tick=20}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/3.summon

# 自分を表示する
    execute if entity @s[scores={1N.Tick=20}] run item replace entity @s armor.head with carved_pumpkin{CustomModelData:20016}

# 分身中、確率で笑い声を出す
    execute if entity @s[scores={1N.Tick=20..159}] if predicate lib:random_pass_per/3 at @a[distance=..30] run playsound entity.witch.celebrate hostile @p ~ ~ ~ 1 2 1

# hurt時につく被ダメタグがあった場合、クイズに正解して、このスキルを終える
    execute if entity @s[scores={1N.Tick=20..159}] if entity @s[tag=1N.Hurt] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/5.quiz_clear

# クイズに失敗した場合、発光する
    execute if entity @s[scores={1N.Tick=160}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/6.glow

# 発光状態中の処理
    execute if entity @s[scores={1N.Tick=160..}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/7.glowing

# 終了処理
    execute if entity @s[scores={1N.Tick=260..}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/11.end

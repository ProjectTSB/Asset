#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/1.main
#
# クイズのメイン処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill_branch

# 自分を透明化する
    execute if entity @s[scores={1N.Tick=0}] run item replace entity @s armor.head with stone{CustomModelData:20019}
    execute if entity @s[scores={1N.Tick=0}] run data modify entity @s NoAI set value 1b
    execute if entity @s[scores={1N.Tick=0}] run effect give @s slowness 12 100 true
    #execute if entity @s[scores={1N.Tick=0}] run effect give @s weakness 12 100 true
    #execute if entity @s[scores={1N.Tick=0}] run effect clear @s glowing

# スポーンマーカーの位置へワープ
    execute if entity @s[scores={1N.Tick=1}] run tp @s @e[type=marker,tag=1N.SpawnMarker,distance=..100,limit=1]

# 自分と偽物を拡散する
    execute if entity @s[scores={1N.Tick=20}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/2.summon
    execute if entity @s[scores={1N.Tick=20}] run item replace entity @s armor.head with carved_pumpkin{CustomModelData:20016}

# 走り回る
    execute if entity @s[scores={1N.Tick=20..160}] rotated ~ 0 if block ^ ^ ^0.5 #lib:no_collision if block ^ ^1 ^0.5 #lib:no_collision run tp @s ^ ^ ^0.6
    execute if entity @s[scores={1N.Tick=20..160}] if predicate lib:random_pass_per/18 run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/4.random_rotate

# ハード以上の場合、時間を2.5秒飛ばす
    #execute if entity @s[scores={1N.Tick=20}] if predicate api:global_vars/difficulty/min/hard run scoreboard players set @s 1N.Tick 50

# 走り回った後は最寄りのプレイヤーの方を向く
    execute if entity @s[scores={1N.Tick=160..300}] run tp @s ~ ~ ~ facing entity @p feet

# 分身中、確率で笑い声を出す
    execute if entity @s[scores={1N.Tick=20..300}] if predicate lib:random_pass_per/3 run playsound entity.witch.celebrate hostile @a ~ ~ ~ 1 2 0

# hurt時につく被ダメタグがあった場合、クイズに正解して、このスキルを終える
    execute if entity @s[scores={1N.Tick=20..300}] if entity @s[tag=1N.Hurt] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/5.quiz_clear

# クイズに失敗した場合、発光する
    execute if entity @s[scores={1N.Tick=300}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/6.glow

# 発光状態中の処理
    execute if entity @s[scores={1N.Tick=300..}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/7.glowing

# 終了処理
    execute if entity @s[scores={1N.Tick=380..}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/8.end

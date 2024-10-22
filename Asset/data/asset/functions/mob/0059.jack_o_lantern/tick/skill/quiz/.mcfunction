#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/
#
# クイズのメイン処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill_branch

# 自分を透明化する
    execute if entity @s[scores={General.Mob.Tick=0}] run item replace entity @s armor.head with stone{CustomModelData:20019}
    execute if entity @s[scores={General.Mob.Tick=0}] run data modify entity @s NoAI set value 1b
    execute if entity @s[scores={General.Mob.Tick=0}] run effect give @s slowness 12 100 true
    #execute if entity @s[scores={General.Mob.Tick=0}] run effect give @s weakness 12 100 true
    #execute if entity @s[scores={General.Mob.Tick=0}] run effect clear @s glowing

# スポーンマーカーの位置へワープ
    execute if entity @s[scores={General.Mob.Tick=1}] run tp @s @e[type=marker,tag=1N.SpawnMarker,distance=..100,limit=1]

# 自分と偽物を拡散する
    execute if entity @s[scores={General.Mob.Tick=20}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/dummy_summon1
    execute if entity @s[scores={General.Mob.Tick=20}] run item replace entity @s armor.head with carved_pumpkin{CustomModelData:20016}

# 走り回る
    execute if entity @s[scores={General.Mob.Tick=20..120}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/random_move

# ハード以上の場合、時間を2.5秒飛ばす
    #execute if entity @s[scores={General.Mob.Tick=20}] if predicate api:global_vars/difficulty/min/hard run scoreboard players set @s General.Mob.Tick 50

    execute if entity @s[scores={General.Mob.Tick=120}] at @a[distance=..30] run playsound minecraft:item.goat_horn.sound.1 hostile @p ~ ~ ~ 1 1.5 0

# 走り回った後は最寄りのプレイヤーの方を向く
    execute if entity @s[scores={General.Mob.Tick=120..260}] run tp @s ~ ~ ~ facing entity @p feet

# 分身中、確率で笑い声を出す
    execute if entity @s[scores={General.Mob.Tick=20..260}] if predicate lib:random_pass_per/3 run playsound entity.witch.celebrate hostile @a ~ ~ ~ 1 2 0

# hurt時につく被ダメタグがあった場合、クイズに正解して、このスキルを終える
    execute if entity @s[scores={General.Mob.Tick=20..260}] if entity @s[tag=1N.Hurt] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/quiz_clear

# クイズに失敗した場合、発光する
    execute if entity @s[scores={General.Mob.Tick=260}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/quiz_fail/glow

# 発光状態中の処理
    execute if entity @s[scores={General.Mob.Tick=260..}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/quiz_fail/glowing

# 終了処理
    execute if entity @s[scores={General.Mob.Tick=340..}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/end

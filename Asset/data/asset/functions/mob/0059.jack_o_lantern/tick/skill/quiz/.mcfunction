#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/
#
# クイズのメイン処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill_branch

# 自分をNoAIにする
    execute if entity @s[scores={General.Mob.Tick=0}] run data modify entity @s NoAI set value 1b

# 回転し始める
    execute if entity @s[scores={General.Mob.Tick=0..19}] run tp @s ~ ~ ~ ~20 0
    execute if entity @s[scores={General.Mob.Tick=20..59}] run tp @s ~ ~ ~ ~40 0
    #execute if entity @s[scores={General.Mob.Tick=60..80}] run tp @s ~ ~ ~ ~20 0

# 回転演出
    execute if entity @s[scores={General.Mob.Tick=0..19}] run particle cloud ~ ~1.2 ~ 0 0.5 0 0.1 4 normal @a
    execute if entity @s[scores={General.Mob.Tick=20..59}] run particle cloud ~ ~1.2 ~ 0 0.5 0 0.2 4 normal @a
    execute if entity @s[scores={General.Mob.Tick=0..59}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/first_rotate_sound

# 回転途中で頭を取り換える
    execute if entity @s[scores={General.Mob.Tick=35}] run particle explosion ~ ~1.8 ~ 0 0 0 0 1
    execute if entity @s[scores={General.Mob.Tick=40}] run item replace entity @s armor.head with carved_pumpkin{CustomModelData:20016}

# 自分と偽物を拡散する
    execute if entity @s[scores={General.Mob.Tick=60}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/dummy_summon/
    execute if entity @s[scores={General.Mob.Tick=60}] run effect clear @s glowing

# 走り回る
    execute if entity @s[scores={General.Mob.Tick=60..160}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/random_move

# ハード以上の場合、時間を2.5秒飛ばす
    #execute if entity @s[scores={General.Mob.Tick=20}] if predicate api:global_vars/difficulty/min/hard run scoreboard players set @s General.Mob.Tick 50

# トゥルットゥーって鳴らす
    execute if entity @s[scores={General.Mob.Tick=160}] at @a[distance=..30] run playsound minecraft:item.goat_horn.sound.1 hostile @p ~ ~ ~ 1 1.5 0

# 自身と偽物は、走り回った後は最寄りのプレイヤーの方を向く
    execute if entity @s[scores={General.Mob.Tick=160..300}] run tp @s ~ ~ ~ facing entity @p feet
    execute if entity @s[scores={General.Mob.Tick=160..300}] as @e[type=husk,scores={MobID=224},distance=..40] at @s run tp @s ~ ~ ~ facing entity @p feet

# 分身中、確率で笑い声を出す
    execute if entity @s[scores={General.Mob.Tick=60..300}] if predicate lib:random_pass_per/3 run playsound entity.witch.celebrate hostile @a ~ ~ ~ 1 2 0

# hurt時につく被ダメタグがあった場合、クイズに正解して、このスキルを終える
    execute if entity @s[scores={General.Mob.Tick=60..300}] if entity @s[tag=1N.Hurt] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/quiz_clear

# クイズに失敗した場合、発光する
    execute if entity @s[scores={General.Mob.Tick=300}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/quiz_fail/glow

# 発光状態中の処理
    execute if entity @s[scores={General.Mob.Tick=300..}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/quiz_fail/glowing

# 終了処理
    execute if entity @s[scores={General.Mob.Tick=380..}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/end

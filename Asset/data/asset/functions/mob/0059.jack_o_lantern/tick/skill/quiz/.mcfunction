#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/
#
# クイズのメイン処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill_branch

# 自分をNoAIにする
    execute if entity @s[scores={General.Mob.Tick=0}] run data modify entity @s NoAI set value 1b

# 回転し始める
    execute if entity @s[scores={General.Mob.Tick=0..19}] run tp @s ~ ~ ~ ~20 0
    execute if entity @s[scores={General.Mob.Tick=20..39}] run tp @s ~ ~ ~ ~40 0
    execute if entity @s[scores={General.Mob.Tick=40..49}] run tp @s ~ ~ ~ ~20 0
    execute if entity @s[scores={General.Mob.Tick=50..69}] facing entity @p eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# 回転演出
    execute if entity @s[scores={General.Mob.Tick=0..19}] run particle cloud ~ ~1.2 ~ 0 0.5 0 0.1 3 normal @a
    execute if entity @s[scores={General.Mob.Tick=20..39}] run particle cloud ~ ~1.2 ~ 0 0.5 0 0.2 4 normal @a
    execute if entity @s[scores={General.Mob.Tick=40..50}] run particle cloud ~ ~1.8 ~ 0 0 0 0.3 5 normal @a
    execute if entity @s[scores={General.Mob.Tick=0..50}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/first_rotate_sound

# 煽りメッセージ
    execute if entity @s[scores={General.Mob.Tick=50}] run summon text_display ~ ~3 ~ {Tags:["1N.TextDisplay"],billboard:"center",shadow:1b,text:'[{"text":"探してみな！"},{"text":"\\n↓","color":"white"}]',background:16711680,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[2.0f,2.0f,2.0f]}}
    execute if entity @s[scores={General.Mob.Tick=70}] positioned ~ ~3 ~ run kill @e[type=text_display,distance=..0.01,sort=nearest,limit=1]

# 回転途中で頭を取り換える
    execute if entity @s[scores={General.Mob.Tick=35}] run particle explosion ~ ~1.8 ~ 0 0 0 0 1
    execute if entity @s[scores={General.Mob.Tick=40}] run item replace entity @s armor.head with carved_pumpkin{CustomModelData:20016}

# 自分と偽物を拡散し、発光を解除
# 自身にparticle非表示Tagを付与
    execute if entity @s[scores={General.Mob.Tick=70}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/dummy_summon/
    execute if entity @s[scores={General.Mob.Tick=70}] run effect clear @s glowing
    execute if entity @s[scores={General.Mob.Tick=70}] run tag @s add 1N.DisableParticle

# 走り回る
    execute if entity @s[scores={General.Mob.Tick=70..170}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/random_move/

# 分身中、確率で笑い声を出す
    execute if entity @s[scores={General.Mob.Tick=70..310}] if predicate lib:random_pass_per/3 run playsound entity.witch.celebrate hostile @a ~ ~ ~ 1 2 0

# hurt時につく被ダメタグがあった場合、クイズに正解して、このスキルを終える
    execute if entity @s[scores={General.Mob.Tick=70..310}] if entity @s[tag=1N.Hurt] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/quiz_clear

# トゥルットゥーって鳴らす
    execute if entity @s[scores={General.Mob.Tick=170}] at @a[distance=..30] run playsound minecraft:item.goat_horn.sound.1 hostile @p ~ ~ ~ 1 1.5 0

# ハード以上の場合、クイズの時間を2秒飛ばす
    execute if entity @s[scores={General.Mob.Tick=170}] if predicate api:global_vars/difficulty/min/hard run scoreboard players set @s General.Mob.Tick 200

# 自身と偽物は、走り回った後は最寄りのプレイヤーの方を向く
    execute if entity @s[scores={General.Mob.Tick=170..310}] run tp @s ~ ~ ~ facing entity @p feet
    execute if entity @s[scores={General.Mob.Tick=170..310}] as @e[type=husk,scores={MobID=224},distance=..40] at @s run tp @s ~ ~ ~ facing entity @p feet

# クイズに失敗した場合、発光する
    execute if entity @s[scores={General.Mob.Tick=310}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/quiz_fail/glow

# 発光状態中の処理
    execute if entity @s[scores={General.Mob.Tick=310..}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/quiz_fail/glowing

# 終了処理
    execute if entity @s[scores={General.Mob.Tick=390..}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/end

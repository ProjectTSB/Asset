#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/quiz_fail/glow
#
# 発光状態へ
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/quiz/

# 頭を取り換える
    item replace entity @s armor.head with stick{CustomModelData:20395}

# デバフを解除し移動速度上昇を得る
    effect clear @s slowness
    effect clear @s weakness
    effect give @s speed 5 6 true

# 発光状態用Tagを付与
    tag @s add 1N.Quiz.Glowing

# Particle非表示Tagを削除
    tag @s remove 1N.DisableParticle

# NoGravityとNoAIの解除
    data modify entity @s NoGravity set value 0b
    data modify entity @s NoAI set value 0b

# 演出
    particle witch ~ ~1 ~ 0 0 0 0.7 100
    particle flame ~ ~1.8 ~ 0 0 0 0.2 50 normal @a
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 0.5 0
    playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 0.5 1.5
    playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 2

# 巨大カボチャに変身させる偽物の数を設定
# イージー:3 ノーマル:6 ハード:12
    execute if predicate api:global_vars/difficulty/easy run scoreboard players set @s 1N.FakeCount 3
    execute if predicate api:global_vars/difficulty/normal run scoreboard players set @s 1N.FakeCount 6
    execute if predicate api:global_vars/difficulty/3_blessless run scoreboard players set @s 1N.FakeCount 12

#> asset:mob/0059.jack_o_lantern/tick/skill/missile/1.main
#
# カボチャミサイルのメイン処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill_branch

# ターゲットを決める
    execute if entity @s[scores={1N.Tick=0}] run function asset:mob/0059.jack_o_lantern/tick/skill/missile/2.select_target

# カボチャミサイルを撃つ
    execute if entity @s[scores={1N.Tick=0}] run function asset:mob/0059.jack_o_lantern/tick/skill/missile/3.shoot
    execute if entity @s[scores={1N.Tick=2}] run function asset:mob/0059.jack_o_lantern/tick/skill/missile/3.shoot
    execute if entity @s[scores={1N.Tick=4}] run function asset:mob/0059.jack_o_lantern/tick/skill/missile/3.shoot
    execute if entity @s[scores={1N.Tick=6}] run function asset:mob/0059.jack_o_lantern/tick/skill/missile/3.shoot
    execute if entity @s[scores={1N.Tick=8}] run function asset:mob/0059.jack_o_lantern/tick/skill/missile/3.shoot

# ターゲットを決める
    execute if entity @s[scores={1N.Tick=15}] run function asset:mob/0059.jack_o_lantern/tick/skill/missile/2.select_target

    execute if entity @s[scores={1N.Tick=15}] run function asset:mob/0059.jack_o_lantern/tick/skill/missile/3.shoot
    execute if entity @s[scores={1N.Tick=17}] run function asset:mob/0059.jack_o_lantern/tick/skill/missile/3.shoot
    execute if entity @s[scores={1N.Tick=19}] run function asset:mob/0059.jack_o_lantern/tick/skill/missile/3.shoot
    execute if entity @s[scores={1N.Tick=21}] run function asset:mob/0059.jack_o_lantern/tick/skill/missile/3.shoot
    execute if entity @s[scores={1N.Tick=23}] run function asset:mob/0059.jack_o_lantern/tick/skill/missile/3.shoot

# カボチャミサイルを撃つ
   # execute if entity @s[scores={1N.Tick=10..15}] run function asset:mob/0059.jack_o_lantern/tick/skill/missile/3.shoot

# リセット
    execute if entity @s[scores={1N.Tick=30..}] run function asset:mob/0059.jack_o_lantern/tick/skill/reset

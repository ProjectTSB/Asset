#> asset:mob/0059.jack_o_lantern/tick/skill/missile/
#
# カボチャミサイルのメイン処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill_branch

# ターゲットを決める
    execute if entity @s[scores={1N.Tick=0}] run function asset:mob/0059.jack_o_lantern/tick/skill/missile/select_target

# カボチャミサイルを撃つ
    execute if entity @s[scores={1N.Tick=0}] run function asset:mob/0059.jack_o_lantern/tick/skill/missile/shoot
    execute if entity @s[scores={1N.Tick=2}] run function asset:mob/0059.jack_o_lantern/tick/skill/missile/shoot
    execute if entity @s[scores={1N.Tick=4}] run function asset:mob/0059.jack_o_lantern/tick/skill/missile/shoot
    execute if entity @s[scores={1N.Tick=6}] run function asset:mob/0059.jack_o_lantern/tick/skill/missile/shoot
    execute if entity @s[scores={1N.Tick=8}] run function asset:mob/0059.jack_o_lantern/tick/skill/missile/shoot

# ハード以上でTickをスキップ
    execute if entity @s[scores={1N.Tick=10}] run scoreboard players set @s 1N.Tick 35

# ターゲットを決める
    execute if entity @s[scores={1N.Tick=40}] run function asset:mob/0059.jack_o_lantern/tick/skill/missile/select_target

# 撃つ
    execute if entity @s[scores={1N.Tick=40}] run function asset:mob/0059.jack_o_lantern/tick/skill/missile/shoot
    execute if entity @s[scores={1N.Tick=42}] run function asset:mob/0059.jack_o_lantern/tick/skill/missile/shoot
    execute if entity @s[scores={1N.Tick=44}] run function asset:mob/0059.jack_o_lantern/tick/skill/missile/shoot
    execute if entity @s[scores={1N.Tick=46}] run function asset:mob/0059.jack_o_lantern/tick/skill/missile/shoot
    execute if entity @s[scores={1N.Tick=48}] run function asset:mob/0059.jack_o_lantern/tick/skill/missile/shoot

# リセット
    execute if entity @s[scores={1N.Tick=40..}] if predicate api:global_vars/difficulty/easy run function asset:mob/0059.jack_o_lantern/tick/skill/reset
    execute if entity @s[scores={1N.Tick=60..}] run function asset:mob/0059.jack_o_lantern/tick/skill/reset

#> asset:mob/0363.white_spellbook/tick/magic
#
# 魔法陣を召喚
#
# @within function asset:mob/0363.white_spellbook/tick/

#> Private
# @private
    #declare tag Random
    #declare score_holder $Random

# 召喚のID設定
    data modify storage api: Argument.ID set value 364

# ハード以上なら確率で座標攻撃か自機外しに分岐する
# Tagが付与されてないなら座標攻撃
# 付与されていれば自機外し
    execute if predicate api:global_vars/difficulty/min/hard if predicate lib:random_pass_per/50 run tag @s add Random
    execute if entity @s[tag=!Random] at @p[distance=..10] run function api:mob/summon
    execute if entity @s[tag=Random] at @p[distance=..10] run function asset:mob/0363.white_spellbook/tick/spread

# 次に攻撃するタイミングをランダムにする
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $31 Const
    scoreboard players operation @s A3.Tick = $Random Temporary
    scoreboard players remove @s A3.Tick 120

# リセット
    tag @s remove Random
    scoreboard players reset $Random Temporary

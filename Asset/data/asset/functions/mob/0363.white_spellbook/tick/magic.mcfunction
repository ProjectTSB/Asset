#> asset:mob/0363.white_spellbook/tick/magic
#
# 魔法陣を召喚
#
# @within function asset:mob/0363.white_spellbook/tick/

#> Private
# @private
    #declare tag Random

# ハード以上なら確率で座標攻撃か自機外しに分岐する
# Tagが付与されてないなら座標攻撃
# 付与されていれば自機外し
    execute if predicate api:global_vars/difficulty/min/3_blessless if predicate lib:random_pass_per/50 run tag @s add Random
    execute if entity @s[tag=!Random] at @p[distance=..10] run function asset:mob/0363.white_spellbook/tick/summon
    execute if entity @s[tag=Random] at @p[distance=..10] run function asset:mob/0363.white_spellbook/tick/spread

# 次に攻撃するタイミングをランダムにする
    execute store result score @s General.Mob.Tick run random value -120..-90

# リセット
    tag @s remove Random

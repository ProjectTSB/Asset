#> asset:mob/0390.triple_rabbits/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/390/tick

# タイマー加算
    scoreboard players add @s General.Mob.Tick 1

# アキシャ to エクアル
    execute if score @s General.Mob.Tick matches 150 if entity @s[tag=AU.AxiaDeath] run function asset:mob/0390.triple_rabbits/ai/general/axia_to_ecual

# エクアル to ラビリア
    execute if score @s General.Mob.Tick matches 350 if entity @s[tag=AU.EcualDeath] run function asset:mob/0390.triple_rabbits/ai/general/ecual_to_labyria

# ラビリア to Death
    execute if score @s General.Mob.Tick matches 510 if entity @s[tag=AU.LabyriaDeath] run kill @s

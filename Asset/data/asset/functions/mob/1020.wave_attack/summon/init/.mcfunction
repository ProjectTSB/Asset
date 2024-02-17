#> asset:mob/1020.wave_attack/summon/init/
#
#
#
# @within function
#   asset:mob/1020.wave_attack/summon/2.summon
#   asset:mob/1020.wave_attack/summon/init/

# 下にずらして再帰
    execute if entity @s[distance=..16] if block ~ ~ ~ #lib:no_collision positioned ~ ~-1 ~ run function asset:mob/1020.wave_attack/summon/init/

# ブロックだったら移動終了する
    execute unless block ~ ~-1 ~ #lib:no_collision run function asset:mob/1020.wave_attack/summon/init/end

# 奈落だったり、下が遠すぎたら消滅
    execute unless entity @s[distance=..16] run kill @s
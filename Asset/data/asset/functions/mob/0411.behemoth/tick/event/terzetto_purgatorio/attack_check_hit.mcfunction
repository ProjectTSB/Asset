#> asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/attack_check_hit
#
# テルツェット・ディザスター
#
# @within asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/attack

# 距離測定
    scoreboard players set @s BF.Counter 40
    function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/attack_check_hit_loop
    scoreboard players reset @s BF.Counter

# 終了
    tag @s remove BF.Temp.Hit

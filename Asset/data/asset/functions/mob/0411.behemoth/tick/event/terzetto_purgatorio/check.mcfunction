#> asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/check
#
# テルツェット・プルガトリオ
#
# @within
#   function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/prediction_line_obj
#   function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/hit_line
#   function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/check

# 氷柱がある場合、中断
    execute positioned ~-1.5 ~-5 ~-1.5 if entity @e[type=item_display,tag=2180.Pillar,dx=3,dy=10,dz=3] run tag @s add BF.Temp.Hit

# 距離測定
    execute if entity @s[tag=BF.Temp.Hit] run tag @e[type=item_display,tag=2180.Pillar,sort=nearest,limit=1] add BF.Temp.Hit

# ループ
    scoreboard players remove @s BF.Counter 1
    execute unless entity @s[tag=BF.Temp.Hit] unless entity @s[distance=..2] if score @s BF.Counter matches 1.. positioned ^ ^ ^1 run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/check

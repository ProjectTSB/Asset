#> asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/attack_check_hit_loop
#
# テルツェット・ディザスター
#
# @within
#    function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/attack_check_hit
#    function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/attack_check_hit_loop

# 演出
    particle soul_fire_flame ~ ~ ~ 0.5 0.5 0.5 0.1 2
    particle dust 0.278 0.612 0.694 3 ~ ~ ~ 1 1 1 0.1 2
    particle dust 0.231 0.451 0.702 3 ~ ~ ~ 1 1 1 0.1 3

# 氷柱ヒット判定
    execute positioned ~-1.5 ~-5 ~-1.5 if entity @e[type=item_display,tag=2180.Pillar,tag=!2180.Pillar.Death,dx=3,dy=10,dz=3] run tag @s add BF.Temp.Hit
    execute if entity @s[tag=BF.Temp.Hit] run particle explosion ~ ~ ~ 1 1 1 0 5
    execute if entity @s[tag=BF.Temp.Hit] run tag @e[type=item_display,tag=2180.Pillar,tag=!2180.Pillar.Death,sort=nearest,limit=1] add 2180.Pillar.Death

# ヒット判定
    tag @a[tag=!PlayerShouldInvulnerable,distance=..1] add BF.Temp.AttackHit
    execute if entity @a[tag=!PlayerShouldInvulnerable,distance=..1] run particle explosion ~ ~ ~ 1 1 1 0 5

# ループ
    scoreboard players remove @s BF.Counter 1
    execute unless entity @s[tag=BF.Temp.Hit] unless entity @s[distance=..1] if score @s BF.Counter matches 1.. positioned ^ ^ ^0.8 run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/attack_check_hit_loop

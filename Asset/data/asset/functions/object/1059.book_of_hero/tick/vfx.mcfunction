#> asset:object/1059.book_of_hero/tick/vfx
#
#
#
# @within function asset:object/1059.book_of_hero/tick/attack

particle enchant ~ ~0.5 ~ 0 0.5 0 0 20
particle end_rod ~ ~0.5 ~ 0 0.5 0 0.13 10
particle explosion ~ ~ ~ 0 0 0 0 0

playsound entity.generic.explode neutral @a ~ ~ ~ 1 2
playsound minecraft:entity.puffer_fish.hurt neutral @a ~ ~ ~ 1 0.8

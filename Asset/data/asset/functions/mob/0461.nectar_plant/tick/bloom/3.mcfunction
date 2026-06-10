#> asset:mob/0461.nectar_plant/tick/bloom/3
#
#
#
# @within function asset:mob/0461.nectar_plant/tick/

    function asset:mob/0461.nectar_plant/tick/change_model/3
    playsound block.sweet_berry_bush.break hostile @a ~ ~ ~ 1 0.85
    playsound entity.warden.roar hostile @a ~ ~ ~ 1 2
    particle block pink_petals ~ ~ ~ 1 1 1 0 100

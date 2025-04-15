#> asset:mob/0436.landmine/tick/detonate/vfx
#
# 
#
# @within function asset:mob/0436.landmine/tick/detonate/detonate

# particle
    particle explosion ~ ~0.5 ~ 0 0 0 0 2

# sound
    playsound entity.generic.explode hostile @a[distance=..16] ~ ~0.5 ~ 1 1.5 0

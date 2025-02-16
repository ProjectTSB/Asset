#> asset:object/2174.heiloang_death_animation/tick/particle_end.m
#
# Objectのtick時の処理
#
# @within asset:object/2174.heiloang_death_animation/tick/event

# 討伐
    $execute positioned ^$(posx) ^$(posy) ^$(posz) run particle explosion ^ ^ ^ 5 5 5 0 1 force
    $execute positioned ^$(posx) ^$(posy) ^$(posz) run particle end_rod ^ ^ ^ 4 4 4 0.05 3 force

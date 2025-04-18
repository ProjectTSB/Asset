#> asset:object/2174.heiloang_death_animation/tick/particle.m
#
# Objectのtick時の処理
#
# @within asset:object/2174.heiloang_death_animation/tick/event

# 演出
    $execute positioned ^$(posx) ^$(posy) ^$(posz) run particle end_rod ^ ^ ^ 5 5 5 0.3 1 force

# 一定間隔
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $4 Const
    execute unless score $Interval Temporary matches 0 run return run scoreboard players reset $Interval Temporary
    scoreboard players reset $Interval Temporary

# 演出
    $execute positioned ^$(posx) ^$(posy) ^$(posz) run particle flash ^ ^ ^ 5 5 5 0 1 force
    $execute positioned ^$(posx) ^$(posy) ^$(posz) run particle explosion_emitter ^ ^ ^ 5 5 5 0 1 force
    $execute positioned ^$(posx) ^$(posy) ^$(posz) run particle lava ^ ^ ^ 5 5 5 0 3 force
    $execute positioned ^$(posx) ^$(posy) ^$(posz) run particle totem_of_undying ^ ^ ^ 5 5 5 0.5 30 force

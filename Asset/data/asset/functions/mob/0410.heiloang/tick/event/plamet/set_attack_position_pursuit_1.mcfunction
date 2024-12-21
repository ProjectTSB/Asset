#> asset:mob/0410.heiloang/tick/event/plamet/set_attack_position_pursuit_1
#
# 急降下
#
# @within asset:mob/0410.heiloang/tick/event/plamet/

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAKwBsAjAIYAsAZgEwoC0ADHI3B3wBGnAJz0UAZg4B2LrUYiUADgWUU5AgDt6AWwTJAYYoACWmAIx6GXQGck4FAHtCmiElbSCKOC7gY7YADd6bEJ9cAAPJC4CKCiAXziCK1I0QltEWhECawhLV0RosDhsbDQYa31aLkKMB1yIfUK0awBRErKKloBHQmDsKABlCy9yRGZgioSAXSA_3
# 円 1
execute positioned ^0 ^ ^-19 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}
execute positioned ^4.3817 ^ ^-18.48785 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}
execute positioned ^8.52718 ^ ^-16.97902 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}
execute positioned ^12.21296 ^ ^-14.55484 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}
execute positioned ^15.24034 ^ ^-11.34601 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}
execute positioned ^17.44611 ^ ^-7.52552 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}
execute positioned ^18.71135 ^ ^-3.29932 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}
execute positioned ^18.96786 ^ ^1.10475 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}
execute positioned ^18.2018 ^ ^5.44926 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}
execute positioned ^16.45448 ^ ^9.5 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}
execute positioned ^13.8201 ^ ^13.03859 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}
execute positioned ^10.44067 ^ ^15.87427 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}
execute positioned ^6.49838 ^ ^17.85416 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}
execute positioned ^2.20577 ^ ^18.87153 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}
execute positioned ^-2.20577 ^ ^18.87153 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}
execute positioned ^-6.49838 ^ ^17.85416 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}
execute positioned ^-10.44067 ^ ^15.87427 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}
execute positioned ^-13.8201 ^ ^13.03859 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}
execute positioned ^-16.45448 ^ ^9.5 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}
execute positioned ^-18.2018 ^ ^5.44926 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}
execute positioned ^-18.96786 ^ ^1.10475 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}
execute positioned ^-18.71135 ^ ^-3.29932 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}
execute positioned ^-17.44611 ^ ^-7.52552 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}
execute positioned ^-15.24034 ^ ^-11.34601 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}
execute positioned ^-12.21296 ^ ^-14.55484 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}
execute positioned ^-8.52718 ^ ^-16.97902 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}
execute positioned ^-4.3817 ^ ^-18.48785 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Plamet.SummonPosition"]}

# 角度調整
    execute as @e[type=area_effect_cloud,tag=BE.Temp.Plamet.SummonPosition] at @s facing entity @e[type=slime,tag=BE.EntityRoot,limit=1] feet run tp @s ~ ~ ~ ~180 0

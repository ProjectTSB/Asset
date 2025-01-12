#> asset:mob/0410.heiloang/tick/event/plamet/set_attack_position_pursuit_0
#
# 急降下
#
# @within asset:mob/0410.heiloang/tick/event/plamet/

# 攻撃位置召喚
    # [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAKwBsAjAIYAsAZgEwoC0ADHI3B3wBGnAJz0UAZg4B2LrUYiUADgWUU5AgDt6AWwTJAYYoACWmAIx6GXQGck4FAHtCmiElpKCKOC7gY7YADd6bEJ9cAAPJC4CKCiAXziCK1I0QltEWgkCawhLV0RosDhsbDQYa31aLkKMB1yIfUK0awBRErKKloBHQmDsKABlCy9yRGZgioSAXSA_3
    # 円 1
    execute positioned ^0 ^ ^-13 run summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.Plamet.SummonPosition"]}
    execute positioned ^4.44626 ^ ^-12.216 run summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.Plamet.SummonPosition"]}
    execute positioned ^8.35624 ^ ^-9.95858 run summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.Plamet.SummonPosition"]}
    execute positioned ^11.25833 ^ ^-6.5 run summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.Plamet.SummonPosition"]}
    execute positioned ^12.8025 ^ ^-2.25743 run summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.Plamet.SummonPosition"]}
    execute positioned ^12.8025 ^ ^2.25743 run summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.Plamet.SummonPosition"]}
    execute positioned ^11.25833 ^ ^6.5 run summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.Plamet.SummonPosition"]}
    execute positioned ^8.35624 ^ ^9.95858 run summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.Plamet.SummonPosition"]}
    execute positioned ^4.44626 ^ ^12.216 run summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.Plamet.SummonPosition"]}
    execute positioned ^0 ^ ^13 run summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.Plamet.SummonPosition"]}
    execute positioned ^-4.44626 ^ ^12.216 run summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.Plamet.SummonPosition"]}
    execute positioned ^-8.35624 ^ ^9.95858 run summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.Plamet.SummonPosition"]}
    execute positioned ^-11.25833 ^ ^6.5 run summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.Plamet.SummonPosition"]}
    execute positioned ^-12.8025 ^ ^2.25743 run summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.Plamet.SummonPosition"]}
    execute positioned ^-12.8025 ^ ^-2.25743 run summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.Plamet.SummonPosition"]}
    execute positioned ^-11.25833 ^ ^-6.5 run summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.Plamet.SummonPosition"]}
    execute positioned ^-8.35624 ^ ^-9.95858 run summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.Plamet.SummonPosition"]}
    execute positioned ^-4.44626 ^ ^-12.216 run summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.Plamet.SummonPosition"]}

# 角度調整
    execute as @e[type=area_effect_cloud,tag=BE.Temp.Plamet.SummonPosition] at @s facing entity @e[type=slime,tag=BE.EntityRoot,limit=1] feet run tp @s ~ ~ ~ ~180 0

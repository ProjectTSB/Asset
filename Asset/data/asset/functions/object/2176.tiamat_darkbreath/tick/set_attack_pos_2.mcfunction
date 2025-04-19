#> asset:object/2176.tiamat_darkbreath/tick/set_attack_pos_2
#
# Objectのtick時の処理
#
# @within asset:object/2176.tiamat_darkbreath/tick/

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAIwAM1c1lARgEwC0KcArAMysAszDqwAcw5o1YAzFAENqpSQDZFpAOxxFYAgDsZAWwTJAYYoACSlrAwZGfQGck4FAHtC2iEkrMCHN3AwOwADcZbEJDcAAPJGoCKGiAX3iCG1I0QntESj4AOk4CWwhrd0QYsDhsbDQYW0MaUownQohDUrRbAFEKqpr2gEdCEOwoAGUrDnJESRCaxIBdIA_3
# 円 1
execute positioned ^0 ^ ^-14.5 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2176.AttackPosition"]}
execute positioned ^7.25 ^ ^-12.55737 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2176.AttackPosition"]}
execute positioned ^12.55737 ^ ^-7.25 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2176.AttackPosition"]}
execute positioned ^14.5 ^ ^0 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2176.AttackPosition"]}
execute positioned ^12.55737 ^ ^7.25 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2176.AttackPosition"]}
execute positioned ^7.25 ^ ^12.55737 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2176.AttackPosition"]}
execute positioned ^0 ^ ^14.5 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2176.AttackPosition"]}
execute positioned ^-7.25 ^ ^12.55737 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2176.AttackPosition"]}
execute positioned ^-12.55737 ^ ^7.25 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2176.AttackPosition"]}
execute positioned ^-14.5 ^ ^0 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2176.AttackPosition"]}
execute positioned ^-12.55737 ^ ^-7.25 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2176.AttackPosition"]}
execute positioned ^-7.25 ^ ^-12.55737 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2176.AttackPosition"]}

# 角度調整
    execute as @e[type=area_effect_cloud,tag=2176.AttackPosition] at @s facing entity @e[type=marker,tag=2176.Root,limit=1] feet run tp @s ~ ~ ~ ~180 0

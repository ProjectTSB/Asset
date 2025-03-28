#> asset:object/1039.thelema_persuit_entity/tick/set_summon_pos
#
#
#
# @within function asset:object/1039.thelema_persuit_entity/tick/

# 最大HP20につき1本増加 最大10本まで
# 左右対称になるように、偶数本目は2パターン配置箇所が存在する

# 1本目
    execute if entity @s[scores={General.Object.Tick=1,1039.SwordCount=1..}] positioned ^ ^ ^0 run function asset:object/1039.thelema_persuit_entity/tick/summon_sword

# 2本目
    execute if entity @s[scores={General.Object.Tick=13,1039.SwordCount=2}] positioned ^ ^ ^3 run function asset:object/1039.thelema_persuit_entity/tick/summon_sword
    execute if entity @s[scores={General.Object.Tick=13,1039.SwordCount=3..}] positioned ^1.5 ^ ^0 run function asset:object/1039.thelema_persuit_entity/tick/summon_sword

# 3本目
    execute if entity @s[scores={General.Object.Tick=13,1039.SwordCount=3..}] positioned ^-1 ^ ^0 run function asset:object/1039.thelema_persuit_entity/tick/summon_sword

# 4本目
    execute if entity @s[scores={General.Object.Tick=15,1039.SwordCount=4}] positioned ^ ^ ^3 run function asset:object/1039.thelema_persuit_entity/tick/summon_sword
    execute if entity @s[scores={General.Object.Tick=15,1039.SwordCount=5..}] positioned ^1.5 ^ ^3 run function asset:object/1039.thelema_persuit_entity/tick/summon_sword

# 5本目
    execute if entity @s[scores={General.Object.Tick=15,1039.SwordCount=5..}] positioned ^-1.5 ^ ^3 run function asset:object/1039.thelema_persuit_entity/tick/summon_sword

# 6本目
    execute if entity @s[scores={General.Object.Tick=17,1039.SwordCount=6}] positioned ^ ^ ^3 run function asset:object/1039.thelema_persuit_entity/tick/summon_sword
    execute if entity @s[scores={General.Object.Tick=17,1039.SwordCount=7..}] positioned ^3 ^ ^1.5 run function asset:object/1039.thelema_persuit_entity/tick/summon_sword

# 7本目
    execute if entity @s[scores={General.Object.Tick=17,1039.SwordCount=7..}] positioned ^-3 ^ ^1.5 run function asset:object/1039.thelema_persuit_entity/tick/summon_sword

# 8本目
    execute if entity @s[scores={General.Object.Tick=19,1039.SwordCount=8}] positioned ^ ^ ^3 run function asset:object/1039.thelema_persuit_entity/tick/summon_sword
    execute if entity @s[scores={General.Object.Tick=19,1039.SwordCount=9..}] positioned ^ ^ ^3 run function asset:object/1039.thelema_persuit_entity/tick/summon_sword

# 9本目
    execute if entity @s[scores={General.Object.Tick=19,1039.SwordCount=9..}] positioned ^ ^ ^-1.5 run function asset:object/1039.thelema_persuit_entity/tick/summon_sword

# 10本目
    execute if entity @s[scores={General.Object.Tick=21,1039.SwordCount=10..}] positioned ^ ^ ^4.5 run function asset:object/1039.thelema_persuit_entity/tick/summon_sword

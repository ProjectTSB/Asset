#> asset:object/1039.thelema_persuit_entity/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1039/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 最大HP20につき1本増加 最大10本まで
# 左右対称になるように、偶数本目は2パターン配置箇所が存在する

# 1本目
    execute if entity @s[scores={General.Object.Tick=1,1039.MaxHP5Per=1..}] positioned ^ ^5 ^-1 run function asset:object/1039.thelema_persuit_entity/tick/summon_sword

# 2本目
    execute if entity @s[scores={General.Object.Tick=13,1039.MaxHP5Per=2}] positioned ^ ^5 ^1 run function asset:object/1039.thelema_persuit_entity/tick/summon_sword
    execute if entity @s[scores={General.Object.Tick=13,1039.MaxHP5Per=3..}] positioned ^1 ^5 ^-1 run function asset:object/1039.thelema_persuit_entity/tick/summon_sword

# 3本目
    execute if entity @s[scores={General.Object.Tick=13,1039.MaxHP5Per=3..}] positioned ^-1 ^5 ^-1 run function asset:object/1039.thelema_persuit_entity/tick/summon_sword

# 4本目
    execute if entity @s[scores={General.Object.Tick=15,1039.MaxHP5Per=4}] positioned ^ ^5 ^1 run function asset:object/1039.thelema_persuit_entity/tick/summon_sword
    execute if entity @s[scores={General.Object.Tick=15,1039.MaxHP5Per=5..}] positioned ^1 ^5 ^1 run function asset:object/1039.thelema_persuit_entity/tick/summon_sword

# 5本目
    execute if entity @s[scores={General.Object.Tick=15,1039.MaxHP5Per=5..}] positioned ^-1 ^5 ^1 run function asset:object/1039.thelema_persuit_entity/tick/summon_sword

# 6本目
    execute if entity @s[scores={General.Object.Tick=17,1039.MaxHP5Per=6}] positioned ^ ^5 ^1 run function asset:object/1039.thelema_persuit_entity/tick/summon_sword
    execute if entity @s[scores={General.Object.Tick=17,1039.MaxHP5Per=7..}] positioned ^2 ^5 ^ run function asset:object/1039.thelema_persuit_entity/tick/summon_sword

# 7本目
    execute if entity @s[scores={General.Object.Tick=17,1039.MaxHP5Per=7..}] positioned ^-2 ^5 ^ run function asset:object/1039.thelema_persuit_entity/tick/summon_sword

# 8本目
    execute if entity @s[scores={General.Object.Tick=19,1039.MaxHP5Per=8}] positioned ^ ^5 ^1 run function asset:object/1039.thelema_persuit_entity/tick/summon_sword
    execute if entity @s[scores={General.Object.Tick=19,1039.MaxHP5Per=9..}] positioned ^ ^5 ^1 run function asset:object/1039.thelema_persuit_entity/tick/summon_sword

# 9本目
    execute if entity @s[scores={General.Object.Tick=19,1039.MaxHP5Per=9..}] positioned ^ ^5 ^-2 run function asset:object/1039.thelema_persuit_entity/tick/summon_sword

# 10本目
    execute if entity @s[scores={General.Object.Tick=21,1039.MaxHP5Per=10..}] positioned ^ ^5 ^2 run function asset:object/1039.thelema_persuit_entity/tick/summon_sword

# 消滅処理
    kill @s[scores={General.Object.Tick=21..}]

# 実装フラグを立てる
    data modify storage asset:object Implement set value true

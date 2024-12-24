#> asset:object/2156.haruclaire_icepillar/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2156/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 拡大
    execute if entity @s[scores={General.Object.Tick=3}] run function asset:object/2156.haruclaire_icepillar/tick/show
    execute if entity @s[scores={General.Object.Tick=3..11}] run tp @s ~ ~ ~ ~18 ~
    execute if entity @s[scores={General.Object.Tick=3..11}] on passengers run tp @s ~ ~ ~ ~18 ~
    execute if predicate lib:random_pass_per/20 run particle firework ~ ~4 ~ 0.5 0.5 0.5 0.05 1

# 移動
    execute if entity @s[tag=!2156.StartAttack,scores={General.Object.Tick=20..}] run tp @s ~ ~-1 ~
    execute if entity @s[tag=!2156.StartAttack,scores={General.Object.Tick=20..}] unless block ~ ~ ~ #lib:no_collision run function asset:object/2156.haruclaire_icepillar/tick/set_ground
    execute if entity @s[tag=2156.Right,scores={General.Object.Tick=12..}] on passengers at @s run tp @s ~ ~ ~ ~3 ~
    execute if entity @s[tag=!2156.Right,scores={General.Object.Tick=12..}] on passengers at @s run tp @s ~ ~ ~ ~-3 ~

# 攻撃
    execute if entity @s[tag=2156.StartAttack] run scoreboard players add @s 2156.AttackTimer 1
    execute if entity @s[scores={2156.AttackTimer=121}] run function asset:object/2156.haruclaire_icepillar/tick/set_rotation
    execute if entity @s[scores={2156.AttackTimer=121..159}] rotated as @e[type=area_effect_cloud,tag=2156.AttackRotation,sort=nearest,limit=1] positioned ~ ~4 ~ positioned ^ ^ ^1.5 run function asset:object/2156.haruclaire_icepillar/tick/prediction
    execute if entity @s[scores={2156.AttackTimer=160}] run function asset:object/2156.haruclaire_icepillar/tick/attack
    execute if entity @s[scores={2156.AttackTimer=163..220}] if predicate api:global_vars/difficulty/min/hard run function asset:object/2156.haruclaire_icepillar/tick/turn_laser

# 消去
    execute if entity @s[scores={2156.AttackTimer=300..}] run function asset:object/2156.haruclaire_icepillar/tick/kill
    execute if entity @s[scores={General.Object.Tick=800..}] run function asset:object/2156.haruclaire_icepillar/tick/kill

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
    execute if entity @s[scores={General.Object.Tick=3..11}] on passengers if entity @s[tag=!2156.Prediction] run tp @s ~ ~ ~ ~18 ~
    execute if predicate lib:random_pass_per/20 run particle firework ~ ~1 ~ 0.5 0.5 0.5 0.05 1

# 移動
    execute if entity @s[tag=!2156.StartAttack,scores={General.Object.Tick=20..}] run function asset:object/2156.haruclaire_icepillar/tick/move
    execute if entity @s[tag=!2156.StartAttack,scores={General.Object.Tick=20..}] at @s unless block ~ ~-3.2 ~ #lib:no_collision run function asset:object/2156.haruclaire_icepillar/tick/set_ground
    execute if entity @s[tag=2156.Right,scores={General.Object.Tick=12..}] on passengers if entity @s[tag=2156.Append,tag=!2156.Prediction] at @s run tp @s ~ ~ ~ ~3 ~
    execute if entity @s[tag=!2156.Right,scores={General.Object.Tick=12..}] on passengers if entity @s[tag=2156.Append,tag=!2156.Prediction] at @s run tp @s ~ ~ ~ ~-3 ~

# 演出
    execute if entity @s[scores={General.Object.Tick=..145}] at @s facing entity @p eyes on passengers if entity @s[tag=2156.Crystal] run tp @s ~ ~ ~ ~ ~
    execute if entity @s[scores={General.Object.Tick=10..}] run function asset:object/2156.haruclaire_icepillar/tick/effect_append

# 攻撃
    execute if entity @s[tag=2156.StartAttack] run scoreboard players add @s 2156.AttackTimer 1
    execute if entity @s[scores={2156.AttackTimer=121}] run function asset:object/2156.haruclaire_icepillar/tick/set_rotation
    # 予告
        execute if entity @s[scores={2156.AttackTimer=121}] rotated as @e[type=area_effect_cloud,tag=2156.AttackRotation,sort=nearest,limit=1] positioned ~ ~ ~ positioned ^ ^ ^1.5 run function asset:object/2156.haruclaire_icepillar/tick/prediction
        execute if entity @s[scores={2156.AttackTimer=122}] on passengers if entity @s[tag=2156.Prediction] run data modify entity @s start_interpolation set value 0
        execute if entity @s[scores={2156.AttackTimer=122}] on passengers if entity @s[tag=2156.Prediction] run data modify entity @s transformation.scale set value [1f,1f,30f]
        execute if entity @s[scores={2156.AttackTimer=122..157}] if predicate api:global_vars/difficulty/min/3_blessless run function asset:object/2156.haruclaire_icepillar/tick/turn_prediction
        execute if entity @s[scores={2156.AttackTimer=152}] on passengers if entity @s[tag=2156.Prediction] run data modify entity @s start_interpolation set value 0
        execute if entity @s[scores={2156.AttackTimer=152}] on passengers if entity @s[tag=2156.Prediction] run data modify entity @s transformation.scale set value [0f,0f,30f]
    execute if entity @s[scores={2156.AttackTimer=170}] run function asset:object/2156.haruclaire_icepillar/tick/attack
    execute if entity @s[scores={2156.AttackTimer=173..230}] if predicate api:global_vars/difficulty/min/3_blessless run function asset:object/2156.haruclaire_icepillar/tick/turn_laser

# 消去
    execute if entity @s[scores={2156.AttackTimer=170}] on passengers if entity @s[tag=2156.Prediction] run kill @s
    execute if entity @s[scores={2156.AttackTimer=310..}] run function asset:object/2156.haruclaire_icepillar/tick/kill
    execute if entity @s[scores={General.Object.Tick=800..}] run function asset:object/2156.haruclaire_icepillar/tick/kill

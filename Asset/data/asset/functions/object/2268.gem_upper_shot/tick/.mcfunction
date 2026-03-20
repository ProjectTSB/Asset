#> asset:object/2268.gem_upper_shot/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2268/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 予兆
    execute if score @s General.Object.Tick matches 3 run data modify entity @s start_interpolation set value -1
    execute if score @s General.Object.Tick matches 3 run data modify entity @s transformation.scale set value [12.0f,0.0f,12.0f]
    # execute if entity @s[scores={General.Object.Tick=1}] run function asset:object/2268.gem_upper_shot/tick/prediction.m with storage asset:context this

# 攻撃
    execute if score @s General.Object.Tick = @s 2268.VfxTime run function asset:object/2268.gem_upper_shot/tick/summon_laser
    execute unless entity @s[tag=2268.IsNoDamage] if score @s General.Object.Tick = @s 2268.AttackTime run function asset:object/2268.gem_upper_shot/tick/damage
    execute if score @s General.Object.Tick = @s 2268.AttackTime run function asset:object/2268.gem_upper_shot/tick/damage_vfx
    execute if score @s General.Object.Tick = @s 2268.AttackTime run data modify entity @s start_interpolation set value -1
    execute if score @s General.Object.Tick = @s 2268.AttackTime run data modify entity @s transformation.scale set value [0.0f,0.0f,0.0f]

# 消滅処理
    execute if score @s General.Object.Tick >= @s 2268.KillTime run kill @s

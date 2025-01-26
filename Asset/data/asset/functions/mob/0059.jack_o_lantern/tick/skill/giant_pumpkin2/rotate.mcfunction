#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/rotate
#
# マーカーを中心に回転する
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/

# 演出
    execute at @s run particle dust 1 0.6 0 1.5 ~ ~1.8 ~ 0.4 0.4 0.4 0 2 normal @a
    execute at @s run particle dust 0.851 0 1 1.5 ~ ~1.8 ~ 0.4 0.4 0.4 0 2 normal @a
    execute at @s if predicate lib:random_pass_per/5 run playsound entity.witch.celebrate hostile @a ~ ~ ~ 0.8 2 0

# 残像を一定間隔で召喚
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if entity @s[scores={General.Mob.Tick=91..}] if score $Interval Temporary matches 0 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon_mirage
    scoreboard players reset $Interval Temporary

# 段々加速していく
# 左回転と右回転が存在する
    execute if entity @s[tag=1N.GiantPumpkin2.LeftRotate,scores={General.Mob.Tick=..30}] as @s rotated as @s rotated ~ 0 run tp @s ^ ^ ^-9 ~-1 ~
    execute if entity @s[tag=1N.GiantPumpkin2.LeftRotate,scores={General.Mob.Tick=31..60}] as @s rotated as @s rotated ~ 0 run tp @s ^ ^ ^-9 ~-2 ~
    execute if entity @s[tag=1N.GiantPumpkin2.LeftRotate,scores={General.Mob.Tick=61..90}] as @s rotated as @s rotated ~ 0 run tp @s ^ ^ ^-9 ~-3 ~
    execute if entity @s[tag=1N.GiantPumpkin2.LeftRotate,scores={General.Mob.Tick=91..120}] as @s rotated as @s rotated ~ 0 run tp @s ^ ^ ^-9 ~-4 ~
    execute if entity @s[tag=1N.GiantPumpkin2.LeftRotate,scores={General.Mob.Tick=121..}] as @s rotated as @s rotated ~ 0 run tp @s ^ ^ ^-9 ~-5 ~

    execute if entity @s[tag=!1N.GiantPumpkin2.LeftRotate,scores={General.Mob.Tick=..30}] as @s rotated as @s rotated ~ 0 run tp @s ^ ^ ^-9 ~1 ~
    execute if entity @s[tag=!1N.GiantPumpkin2.LeftRotate,scores={General.Mob.Tick=31..60}] as @s rotated as @s rotated ~ 0 run tp @s ^ ^ ^-9 ~2 ~
    execute if entity @s[tag=!1N.GiantPumpkin2.LeftRotate,scores={General.Mob.Tick=61..90}] as @s rotated as @s rotated ~ 0 run tp @s ^ ^ ^-9 ~3 ~
    execute if entity @s[tag=!1N.GiantPumpkin2.LeftRotate,scores={General.Mob.Tick=91..120}] as @s rotated as @s rotated ~ 0 run tp @s ^ ^ ^-9 ~4 ~
    execute if entity @s[tag=!1N.GiantPumpkin2.LeftRotate,scores={General.Mob.Tick=121..}] as @s rotated as @s rotated ~ 0 run tp @s ^ ^ ^-9 ~5 ~

#> asset:object/2056.tultaria_death/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2056/tick

#> インターバル用
# @private
#declare score_holder $Interval

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 表情変更
    execute if score @s General.Object.Tick matches 30 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/variants/face_eyehalf/apply
    execute if score @s General.Object.Tick matches 75 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/variants/face_eyeclose/apply

# 下がっていく
    execute if score @s General.Object.Tick matches ..9 run tp @s ^ ^ ^-0.05
    execute if score @s General.Object.Tick matches 10..39 run tp @s ^ ^ ^-0.02
    execute if score @s General.Object.Tick matches 40..79 run tp @s ^ ^ ^-0.01
    execute if score @s General.Object.Tick matches 80..120 run tp @s ^ ^ ^-0.007

# パーティクル
    execute if predicate lib:random_pass_per/50 run particle minecraft:end_rod ~ ~1 ~ 0.5 0.5 0.5 0 1 force @a[distance=..40]
    execute if predicate lib:random_pass_per/30 run particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0 1 force @a[distance=..40]
    particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0 1 force @a[distance=..40]


# 数Tickごとに爆発
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    execute if score @s General.Object.Tick matches ..39 run scoreboard players operation $Interval Temporary %= $10 Const
    execute if score @s General.Object.Tick matches 45..85 run scoreboard players operation $Interval Temporary %= $5 Const
    execute if score $Interval Temporary matches 0 positioned ~ ~1.5 ~ positioned ^ ^ ^1 run function asset:object/2056.tultaria_death/tick/explosion

# 消える
    execute if score @s General.Object.Tick matches 100 run function asset:object/2056.tultaria_death/tick/end

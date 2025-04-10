#> asset:object/1119.staff_of_the_willless_ending/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1119/tick

#> val
# @private
    #declare score_holder $Interval

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# くるくる回りだす
    execute if score @s General.Object.Tick matches 10..20 run tp @s ~ ~ ~ ~2.5 ~
# 回転加速
    execute if score @s General.Object.Tick matches 20..30 run tp @s ~ ~ ~ ~5 ~
    execute if score @s General.Object.Tick matches 30.. run tp @s ~ ~ ~ ~10 ~
# スタッフロール召喚！
    execute if score @s General.Object.Tick matches 340 facing entity @p eyes rotated ~ 0 positioned ^-3 ^ ^2 run function asset:object/1119.staff_of_the_willless_ending/tick/summon_staff_roll
# 演出適当に
    execute if score @s General.Object.Tick matches 40..80 run particle end_rod ~ ~1.5 ~ 0 0 0 0.5 2 force
    execute if score @s General.Object.Tick matches 80..160 run particle end_rod ~ ~1.5 ~ 0 0 0 0.9 5 force
    execute if score @s General.Object.Tick matches 160..320 run particle end_rod ~ ~1.5 ~ 0 0 0 1.3 10 force
    execute if score @s General.Object.Tick matches 320..640 run particle end_rod ~ ~1.5 ~ 0 0 0 0.5 5 force
    execute if score @s General.Object.Tick matches 320..640 run particle end_rod ~ ~1.5 ~ 0 0 0 1.8 5 normal

# 6ickおきに実行するやつ
# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
# 6tickおきに実行
    scoreboard players operation $Interval Temporary %= $6 Const
    execute if score $Interval Temporary matches 0 if score @s General.Object.Tick matches 600..640 run function asset:object/1119.staff_of_the_willless_ending/tick/vfx/2
# リセット
    scoreboard players reset $Interval

# 10tickおきに実行するやつ
# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
# 10tickおきに実行
    scoreboard players operation $Interval Temporary %= $10 Const
    execute if score $Interval Temporary matches 0 if score @s General.Object.Tick matches 320..599 run function asset:object/1119.staff_of_the_willless_ending/tick/vfx/2
    execute if score $Interval Temporary matches 0 if score @s General.Object.Tick matches 420..600 run particle explosion ~ ~7 ~ 7 7 7 0 4
    execute if score $Interval Temporary matches 0 if score @s General.Object.Tick matches 420..640 run particle flash ~ ~1.5 ~ 0 0 0 1 1 force
    execute if score $Interval Temporary matches 0 if score @s General.Object.Tick matches ..640 positioned ~ ~-2 ~ run function asset:object/1119.staff_of_the_willless_ending/tick/vfx/1
# リセット
    scoreboard players reset $Interval

# 40tickおきに実行するやつ
# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
# 40tickおきに実行
    scoreboard players operation $Interval Temporary %= $40 Const
    execute if score $Interval Temporary matches 0 if score @s General.Object.Tick matches 160..319 run function asset:object/1119.staff_of_the_willless_ending/tick/vfx/2
# リセット
    scoreboard players reset $Interval

# 徐々に上昇
    execute if score @s General.Object.Tick matches 640..660 run execute at @s run tp @s ~ ~0.2 ~
# 一気に上昇
    execute if score @s General.Object.Tick matches 660..690 run execute at @s run tp @s ~ ~0.8 ~
    execute if score @s General.Object.Tick matches 660..690 run particle dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1
# 豪華な演出
    execute if score @s General.Object.Tick matches 690 run function asset:object/1119.staff_of_the_willless_ending/tick/direction

# 消滅処理
    kill @s[scores={General.Object.Tick=690..}]

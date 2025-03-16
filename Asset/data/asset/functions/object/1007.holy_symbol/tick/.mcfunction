#> asset:object/1007.holy_symbol/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1007/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 1秒毎にMP回復と魔法陣の表示
    execute store result storage asset:context this.Interval int 0.9999999999 run data get storage asset:context this.Interval
    execute if data storage asset:context this{Interval:0} run function asset:object/1007.holy_symbol/tick/vfx
    execute if data storage asset:context this{Interval:0} as @a[distance=..4.5,limit=10] run function asset:object/1007.holy_symbol/tick/add_mp
    execute if data storage asset:context this{Interval:0} run data modify storage asset:context this.Interval set value 20

# プレイヤーにエフェクトを付与
    execute as @a[distance=..4.5] run function asset:object/1007.holy_symbol/tick/check_effect

# 消滅処理
    execute if score @s General.Object.Tick matches 200.. run kill @s

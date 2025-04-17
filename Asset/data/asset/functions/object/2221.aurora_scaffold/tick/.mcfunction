#> asset:object/2221.aurora_scaffold/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2221/tick

# vfx
    execute if predicate lib:random_pass_per/10 run particle dust_color_transition 0.000 1.000 0.886 0.7 0 0.235 1 ~ ~ ~ 0.4 0.4 0.4 0 1 normal @a

# Tick
    scoreboard players remove @s General.Object.Tick 1

# 40tick毎にOwnerが近くにいるかチェックする
    execute store result storage asset:context this.Interval int 0.9999999999 run data get storage asset:context this.Interval
    execute if data storage asset:context this{Interval:0} run function asset:object/2221.aurora_scaffold/tick/check_owner
    execute if data storage asset:context this{Interval:0} run data modify storage asset:context this.Interval set value 40

# 3x3のそれぞれが水色のステンドグラスではないかをチェック
    execute unless block ~ ~ ~ cyan_stained_glass run data modify storage asset:context this.CheckBreak.1 set value true
    execute unless block ~1 ~ ~ cyan_stained_glass run data modify storage asset:context this.CheckBreak.2 set value true
    execute unless block ~1 ~ ~1 cyan_stained_glass run data modify storage asset:context this.CheckBreak.3 set value true
    execute unless block ~1 ~ ~-1 cyan_stained_glass run data modify storage asset:context this.CheckBreak.4 set value true
    execute unless block ~-1 ~ ~ cyan_stained_glass run data modify storage asset:context this.CheckBreak.5 set value true
    execute unless block ~-1 ~ ~1 cyan_stained_glass run data modify storage asset:context this.CheckBreak.6 set value true
    execute unless block ~-1 ~ ~-1 cyan_stained_glass run data modify storage asset:context this.CheckBreak.7 set value true
    execute unless block ~ ~ ~1 cyan_stained_glass run data modify storage asset:context this.CheckBreak.8 set value true
    execute unless block ~ ~ ~-1 cyan_stained_glass run data modify storage asset:context this.CheckBreak.9 set value true

# 壊れる演出
    execute if score @s General.Object.Tick matches 30 run function asset:object/2221.aurora_scaffold/tick/break/set_display
    execute if score @s General.Object.Tick matches ..30 run function asset:object/2221.aurora_scaffold/tick/break/process/

# 消滅処理
    execute if score @s General.Object.Tick matches ..0 run function asset:object/2221.aurora_scaffold/tick/kill/

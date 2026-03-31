#> asset:object/2221.aurora_scaffold/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2221/tick

# vfx
    execute if predicate lib:random_pass_per/10 run particle dust_color_transition 0.000 1.000 0.886 0.7 0 0.235 1 ~ ~ ~ 1.4 0.4 1.4 0 5 normal @a

# Tick
    scoreboard players remove @s General.Object.Tick 1

# 40tick毎にOwnerが近くにいるかチェックする
# 壊れ始めているならチェックしない
    execute store result storage asset:context this.Interval int 0.9999999999 run data get storage asset:context this.Interval
    execute unless score @s General.Object.Tick matches ..30 if data storage asset:context this{Interval:0} run function asset:object/2221.aurora_scaffold/tick/check_owner
    execute unless score @s General.Object.Tick matches ..30 if data storage asset:context this{Interval:0} run data modify storage asset:context this.Interval set value 40

# 水色ステンドグラスが残っているかチェック
    execute unless score @s General.Object.Tick matches ..30 run function asset:object/2221.aurora_scaffold/tick/check_block

# 壊れる演出
    execute if score @s General.Object.Tick matches 30 run function asset:object/2221.aurora_scaffold/tick/break/set_display
    execute if score @s General.Object.Tick matches ..30 run function asset:object/2221.aurora_scaffold/tick/break/process/

# 消滅処理
    execute if score @s General.Object.Tick matches ..0 run function asset:object/2221.aurora_scaffold/tick/kill/

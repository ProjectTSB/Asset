#> asset:object/2221.aurora_scaffold/tick/kill/as_display
#
#
#
# @within function asset:object/2221.aurora_scaffold/tick/kill/

# 同座標の水色ステンドグラスを壊す
    execute if block ~ ~ ~ cyan_stained_glass run setblock ~ ~ ~ air destroy

# 消滅
    kill @s

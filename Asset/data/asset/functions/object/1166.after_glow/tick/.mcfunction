#> asset:object/1166.after_glow/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1166/tick

# Tick加算
    execute store result storage asset:context this.Tick int 0.9999999999 run data get storage asset:context this.Tick 1
    execute if data storage asset:context this{Tick:0} run function asset:object/1166.after_glow/tick/beem
# 着弾地点表示
    function asset:object/1166.after_glow/tick/preview

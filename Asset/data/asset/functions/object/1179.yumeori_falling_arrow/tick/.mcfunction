#> asset:object/1179.yumeori_falling_arrow/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1179/tick

# ディレイ
    execute store result storage asset:context this.Delay int 0.9999999999 run data get storage asset:context this.Delay

#
    execute if data storage asset:context this{Delay:0} run function asset:object/1179.yumeori_falling_arrow/tick/align_to_ground

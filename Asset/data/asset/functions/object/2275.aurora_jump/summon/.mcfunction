#> asset:object/2275.aurora_jump/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2275/summon

# 高さ64のフォントを指定Scaleの1/4で表示する
    data modify storage asset:temp Args.Scale set value [0f,0f,0.01f]
    execute store result storage asset:temp Args.Scale[0] float 0.000025 run data get storage asset:context this.Scale 10000
    data modify storage asset:temp Args.Scale[1] set from storage asset:temp Args.Scale[0]

# 表裏のtext_displayを召喚
    function asset:object/2275.aurora_jump/summon/m with storage asset:temp Args
    data remove storage asset:temp Args

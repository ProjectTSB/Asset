#> asset:object/1209.pluvia_circle/tick/laser/
#
#
#
# @within function asset:object/1209.pluvia_circle/tick/

#> Private
# @private
    #declare score_holder $Range
    #declare score_holder $MaxRange

# 再帰で何ブロックまで進めるかチェック
    data modify storage asset:context this.Range set from storage asset:context this.MaxRange
    function asset:object/1209.pluvia_circle/tick/laser/recursive

# データ設定
    data modify storage api: Argument.FieldOverride set value {Scale:[0.25f,10f,0.25f],Color:4492027,DisappearInterpolation:2,LifeTime:7}

# Scaleに代入
    execute store result score $Range Temporary run data get storage asset:context this.Range
    execute store result score $MaxRange Temporary run data get storage asset:context this.MaxRange
    execute store result storage api: Argument.FieldOverride.Scale[1] float 0.5 run scoreboard players operation $MaxRange Temporary -= $Range Temporary

# 召喚
    data modify storage api: Argument.ID set value 2168
    function api:object/summon

# リセット
    scoreboard players reset $Range Temporary
    scoreboard players reset $MaxRange Temporary

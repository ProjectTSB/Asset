#> asset:object/2074.water_magic/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2074/init

#> Private
# @private
    #declare score_holder $MagicCircleTick

# 予告を召喚
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride set value {Tick:30,Color:2851071,Scale:[4.5f,4.5f,0.01f]}
    function api:object/summon

# 魔法陣を召喚
    data modify storage api: Argument.ID set value 2279
    data modify storage api: Argument.FieldOverride.Char set value "0"
    data modify storage api: Argument.FieldOverride.Color set value "#2B80FF"
    data modify storage api: Argument.FieldOverride.AppearScale set value [2.25f,2.25f,0f]
    data modify storage api: Argument.FieldOverride.AppearDuration set value 30
    data modify storage api: Argument.FieldOverride.SpinDuration set value 10
    data modify storage api: Argument.FieldOverride.DisappearDuration set value 10
# 攻撃2回分を10tickの回転1回に対応させ、奇数回は回転の境界まで表示する
    execute store result score $MagicCircleTick Temporary run data get storage asset:context this.AttackCount
    scoreboard players add $MagicCircleTick Temporary 1
    scoreboard players operation $MagicCircleTick Temporary /= $2 Const
    scoreboard players operation $MagicCircleTick Temporary *= $10 Const
# 初回待機3tickと出現30tick、消失10tickを加える
    scoreboard players add $MagicCircleTick Temporary 43
    execute store result storage api: Argument.FieldOverride.Tick int 1 run scoreboard players get $MagicCircleTick Temporary
    scoreboard players reset $MagicCircleTick Temporary
    execute rotated ~ 90 run function api:object/summon

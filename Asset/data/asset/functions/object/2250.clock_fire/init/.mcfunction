#> asset:object/2250.clock_fire/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2250/init

# 演出
    playsound item.firecharge.use hostile @a ~ ~ ~ 1 1.4

# 召喚
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride.Color set value 16764108
    data modify storage api: Argument.FieldOverride.Scale set value [8f,8f,0.01f]
    data modify storage api: Argument.FieldOverride.Tick set from storage asset:context this.Delay
    function api:object/summon

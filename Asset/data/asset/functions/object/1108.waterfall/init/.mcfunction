#> asset:object/1108.waterfall/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1108/init

data modify storage api: Argument.ID set value 2168
data modify storage api: Argument.FieldOverride set value {Scale:[1f,18f,1f],Color:3058687,DisappearTick:30,DisappearInterpolation:5,LifeTime:45}
execute rotated ~ -90 run function api:object/summon

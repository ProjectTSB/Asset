#> asset:object/2168.general_long_laser/summon/debug
#
# 視線方向へレーザーを召喚して出現・消失を確認する
#
# @user
# @private

# 水色のレーザーを目の前に召喚
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Color:65535,Scale:[0.5f,20f,0.5f],AppearInterpolation:5,DisappearTick:40,DisappearInterpolation:10,LifeTime:55}
    execute anchored eyes positioned ^ ^ ^1 run function api:object/summon

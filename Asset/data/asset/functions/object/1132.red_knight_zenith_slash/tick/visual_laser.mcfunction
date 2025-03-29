#> asset:object/1132.red_knight_zenith_slash/tick/visual_laser
#
# 軌跡ライクなレーザー
#
# @within function asset:object/1132.red_knight_zenith_slash/tick/

# オブジェクト召喚
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[0.5f,25f,0.5f],Color:14570066,AppearInterpolation:4,DisappearTick:5,DisappearInterpolation:1,LifeTime:50}
    function api:object/summon

# パーティクル
    particle dust 0.6 0 0 2 ~ ~ ~ 0.2 0.2 0.2 1 10
    particle crit ~ ~ ~ 0.1 0.1 0.1 0.5 10

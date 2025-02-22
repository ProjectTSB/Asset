#> asset:object/2091.hyper_laser_manager/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation

# 召喚
    data modify storage api: Argument.ID set value 2091
    function api:object/summon

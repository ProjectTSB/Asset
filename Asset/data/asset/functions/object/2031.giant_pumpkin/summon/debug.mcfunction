#> asset:object/2031.giant_pumpkin/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# データ指定
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation

# 召喚
    data modify storage api: Argument.ID set value 2031
    function api:object/summon

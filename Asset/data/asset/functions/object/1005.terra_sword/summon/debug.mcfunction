#> asset:object/1005.terra_sword/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID

# 召喚
    data modify storage api: Argument.ID set value 1005
    function api:object/summon

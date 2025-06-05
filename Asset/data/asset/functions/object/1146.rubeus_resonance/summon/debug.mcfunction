#> asset:object/1146.rubeus_resonance/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# 召喚
    data modify storage api: Argument.ID set value 1146
    execute store result storage api: Argument.FieldOverride.OwnerID int 1 run scoreboard players get @s UserID
    function api:object/summon

#> asset:object/0006.magic_circle/summon/debug
#
# スターライトサークルの魔法陣を召喚する動作チェック用の処理
#
# @user
# @private

# 召喚
    data modify storage api: Argument.ID set value 6
    data modify storage api: Argument.FieldOverride.Char set value "0"
    data modify storage api: Argument.FieldOverride.Font set value "object/1200"
    function api:object/summon

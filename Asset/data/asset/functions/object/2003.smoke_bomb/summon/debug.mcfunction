#> asset:object/2003.smoke_bomb/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# 召喚
   data modify storage api: Argument.ID set value 2003
   function api:object/summon

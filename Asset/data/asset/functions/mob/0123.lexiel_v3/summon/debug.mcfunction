#> asset:mob/0123.lexiel_v3/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# 召喚
   data modify storage api: Argument.ID set value 123
   function api:mob/summon

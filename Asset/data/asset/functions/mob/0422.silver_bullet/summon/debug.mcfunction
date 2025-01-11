#> asset:mob/0422.silver_bullet/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# 召喚
   data modify storage api: Argument.ID set value 422
   function api:mob/summon
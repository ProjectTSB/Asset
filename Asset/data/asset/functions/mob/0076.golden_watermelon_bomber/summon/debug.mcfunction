#> asset:mob/0076.golden_watermelon_bomber/summon/debug
#
# モブの動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# モブを召喚
   data modify storage api: Argument.ID set value 76
   function api:mob/summon
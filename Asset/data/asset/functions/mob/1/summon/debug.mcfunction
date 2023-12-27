#> asset:mob/1/summon/debug
#
# モブの動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @within asset:mob/1/summon/debug

# モブを召喚
   data modify storage api: Argument.ID set value 1
   function api:mob/summon
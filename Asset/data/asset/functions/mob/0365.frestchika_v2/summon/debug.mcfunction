#> asset:mob/0365.frestchika_v2/summon/debug
#
# モブの動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @within asset:mob/0365.frestchika_v2/summon/debug

# モブを召喚
   data modify storage api: Argument.ID set value 365
   function api:mob/summon
#> asset:effect/0337.night_vision_goggle/remove/
#
# Effectが削除された時の処理
#
# @within function asset:effect/0337.night_vision_goggle/_/remove

playsound block.conduit.deactivate player @s ~ ~ ~ 0.3 1.5

function asset:effect/super.remove
data modify storage asset:context Implement set value true

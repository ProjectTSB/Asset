#> asset:effect/0337.night_vision_goggle/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:337} run function asset:effect/0337.night_vision_goggle/remove/

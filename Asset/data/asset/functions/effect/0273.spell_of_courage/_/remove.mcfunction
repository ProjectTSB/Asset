#> asset:effect/0273.spell_of_courage/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:273} run function asset:effect/0273.spell_of_courage/remove/
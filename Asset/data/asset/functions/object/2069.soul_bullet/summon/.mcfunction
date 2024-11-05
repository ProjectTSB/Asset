#> asset:object/2069.soul_bullet/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2069/summon

# 元となるEntityを召喚する
    tellraw @a {"storage":"asset:context","nbt":"this"}

    function asset:object/2069.soul_bullet/summon/.m with storage asset:context this

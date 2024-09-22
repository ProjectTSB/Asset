#> asset:mob/0181.magic_bookshelf/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/0181.magic_bookshelf/_/summon

# 元となるMobを召喚する
    summon skeleton ~ ~ ~ {Silent:1b,Tags:["MobInit","AlwaysInvisible"],DeathLootTable:"asset:mob/death/0181.magic_bookshelf"}

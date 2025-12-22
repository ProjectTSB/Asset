#> asset:object/1003.call_cat/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1003/summon

# 元となるEntityを召喚する
    summon cat ~ ~ ~ {Tags:["ObjectInit","Friend","Uninterferable"],Invulnerable:1b,DeathLootTable:"minecraft:empty",DeathTime:19s,PersistenceRequired:1b,CanPickUpLoot:0b,variant:"tabby"}

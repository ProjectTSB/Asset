#> asset:artifact/0295.call_elemental_familiar/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/295/click/


# 精霊を3体召喚する
    execute rotated ~ 0 positioned ^2 ^ ^ run function asset:artifact/0295.call_elemental_familiar/click/summon_fairy
    execute rotated ~ 0 positioned ^ ^ ^-2 run function asset:artifact/0295.call_elemental_familiar/click/summon_fairy
    execute rotated ~ 0 positioned ^-2 ^ ^ run function asset:artifact/0295.call_elemental_familiar/click/summon_fairy

# 音とパーティクル　neutralになってるのは妖精側の音だから
    playsound minecraft:item.bottle.fill_dragonbreath player @a ~ ~ ~ 2 2
    playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 2 1.75
    playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 2 2

#> asset:artifact/0822.sound_of_a_star/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/822/click/

# 演出
    playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.7 0 0
    playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.4 0.5 0
    playsound minecraft:block.bell.resonate player @a ~ ~ ~ 0.8 0.5

# 1個目
    execute anchored eyes positioned ^ ^0.2 ^0.6 run function asset:artifact/0822.sound_of_a_star/click/summon_star.m {Damage:600,StartDelay:10}

# MP割合が34%以上なら2個目
    execute if score $MPValue Temporary matches 34.. anchored eyes positioned ^0.4 ^-0.3 ^0.6 run function asset:artifact/0822.sound_of_a_star/click/summon_star.m {Damage:800,StartDelay:15}

# MP割合が67%以上なら3個目
    execute if score $MPValue Temporary matches 67.. anchored eyes positioned ^-0.4 ^-0.3 ^0.6 run function asset:artifact/0822.sound_of_a_star/click/summon_star.m {Damage:1000,StartDelay:20}

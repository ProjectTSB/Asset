#> asset:artifact/0981.soulfire_burst/click/big_fireball/2.tick
#
#
#
# @within function
#   asset:artifact/0981.soulfire_burst/click/big_fireball/2.tick
#   asset:artifact/0981.soulfire_burst/click/
#   asset:artifact/0981.soulfire_burst/click/rejoin_process

# エンティティに実行させる
    execute as @e[type=armor_stand,tag=R9.BigFireball] at @s run function asset:artifact/0981.soulfire_burst/click/big_fireball/

# エンティティがいればループ
    execute if entity @e[type=armor_stand,tag=R9.BigFireball] run schedule function asset:artifact/0981.soulfire_burst/click/big_fireball/2.tick 1t
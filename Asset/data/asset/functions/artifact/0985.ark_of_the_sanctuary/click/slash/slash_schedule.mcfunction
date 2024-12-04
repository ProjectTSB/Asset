#> asset:artifact/0985.ark_of_the_sanctuary/click/slash/slash_schedule
#
#
#
# @within function
#       asset:artifact/0985.ark_of_the_sanctuary/click/slash/slash?
#       asset:artifact/0985.ark_of_the_sanctuary/click/slash/slash_schedule
#       asset:artifact/0985.ark_of_the_sanctuary/click/rejoin_process

# エンティティに実行させる
    execute as @e[type=armor_stand,tag=RD.SlashSweep] at @s run function asset:artifact/0985.ark_of_the_sanctuary/click/slash/slash_anime

# エンティティがいればループ
    execute if entity @e[type=armor_stand,tag=RD.SlashSweep,limit=1] run schedule function asset:artifact/0985.ark_of_the_sanctuary/click/slash/slash_schedule 1t
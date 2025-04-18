#> asset:artifact/0985.ark_of_the_sanctuary/trigger/schedule_loop
#
# 常に実行されている
#
# @within function
#   asset:artifact/0985.ark_of_the_sanctuary/trigger/3.main
#   asset:artifact/0985.ark_of_the_sanctuary/trigger/schedule_loop
#   asset:artifact/0985.ark_of_the_sanctuary/trigger/rejoin_process

# エンティティに実行させる
    execute as @a[scores={RD.BurstCount=0..}] at @s run function asset:artifact/0985.ark_of_the_sanctuary/trigger/rapid_slash

# エンティティがいればループ
    execute if entity @p[scores={RD.BurstCount=0..}] run schedule function asset:artifact/0985.ark_of_the_sanctuary/trigger/schedule_loop 1t

#> asset:artifact/0295.call_elemental_familiar/click/shot/2.tick
#
# ショット動かすやつ
#
# @within function
#   asset:artifact/0295.call_elemental_familiar/click/fairy/4.shoot
#   asset:artifact/0295.call_elemental_familiar/click/shot/2.tick
#   asset:artifact/0295.call_elemental_familiar/click/rejoin_process

# エンティティに実行させる
    execute as @e[type=armor_stand,tag=87.Shot] at @s run function asset:artifact/0295.call_elemental_familiar/click/shot/

# エンティティがいればループ
    execute if entity @e[type=armor_stand,tag=87.Shot,limit=1] run schedule function asset:artifact/0295.call_elemental_familiar/click/shot/2.tick 1t
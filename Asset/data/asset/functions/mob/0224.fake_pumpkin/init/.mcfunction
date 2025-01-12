#> asset:mob/0224.fake_pumpkin/init/
#
# Mob召喚時のInit処理
#
# @within function asset:mob/alias/224/init

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算する
    scoreboard players operation $Random Temporary %= $9 Const

# 顔選択
    execute if score $Random Temporary matches 0 run item replace entity @s armor.head with carved_pumpkin{CustomModelData:20201}
    execute if score $Random Temporary matches 1 run item replace entity @s armor.head with carved_pumpkin{CustomModelData:20202}
    execute if score $Random Temporary matches 2 run item replace entity @s armor.head with carved_pumpkin{CustomModelData:20203}
    execute if score $Random Temporary matches 3 run item replace entity @s armor.head with carved_pumpkin{CustomModelData:20204}
    execute if score $Random Temporary matches 4 run item replace entity @s armor.head with carved_pumpkin{CustomModelData:20205}
    execute if score $Random Temporary matches 5 run item replace entity @s armor.head with carved_pumpkin{CustomModelData:20206}
    execute if score $Random Temporary matches 6 run item replace entity @s armor.head with carved_pumpkin{CustomModelData:20282}
    execute if score $Random Temporary matches 7 run item replace entity @s armor.head with carved_pumpkin{CustomModelData:20283}
    execute if score $Random Temporary matches 8 run item replace entity @s armor.head with carved_pumpkin{CustomModelData:20284}

# リセット
    scoreboard players reset $Random Temporary

# 最寄りのプレイヤーを見る
    execute facing entity @p[gamemode=!spectator,distance=..64] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~

#> asset:mob/0445.sharkboss/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/445/hurt

# 継承元の処理実行
    function asset:mob/super.hurt

# 効果音とパーティクル
    playsound minecraft:entity.camel.hurt hostile @a ~ ~ ~ 0.7 0.8
    playsound minecraft:entity.player.swim hostile @a ~ ~ ~ 0.1 1.4
    playsound minecraft:block.rooted_dirt.break hostile @a ~ ~ ~ 2 0.3
    playsound minecraft:block.grass.break hostile @a ~ ~ ~ 0.7 1.2
    particle minecraft:bubble_pop ~ ~ ~ 0.8 0.8 0.8 0 30 normal
    #particle minecraft:splash ~ ~ ~ 1 1 1 0 10 normal
    #particle minecraft:block water ~ ~ ~ 0.6 0.6 0.6 1 10

# ダウン中に殴られるとぶっ飛ぶ
    execute if entity @s[tag=CD.Down] run function asset:mob/0445.sharkboss/tick/action/utility/end
    execute if entity @s[tag=CD.Down] run tag @s add CD.Reserving
    execute if entity @s[tag=CD.Down] run tag @s add CD.Action.Down1
    execute if entity @s[tag=CD.Down] run tag @s remove CD.Down

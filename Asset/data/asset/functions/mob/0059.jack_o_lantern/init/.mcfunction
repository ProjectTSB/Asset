#> asset:mob/0059.jack_o_lantern/init/
#
# Mob召喚時のInit処理
#
# @within function asset:mob/0059.jack_o_lantern/_/init

# 演出
    playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.5 1
    playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 1.5 1.5
    particle minecraft:large_smoke ~ ~1 ~ 0.3 0.5 0.3 0 50

# 上に持ってくる
    tp @s ~ ~ ~

# プレイヤーをみる
    tp @s ~ ~ ~ facing entity @p

# スコアをセットする
    scoreboard players set @s 1N.Tick -30

#> asset:object/1029.barrage_spirit/tick/shoot
#
# ショット発射！
#
# @within asset:object/1029.barrage_spirit/tick/

# 弾を召喚する
    say shot

# カウントを増やす
    scoreboard players add @s 1029.ShotCount 1

# サウンド
    playsound minecraft:entity.shulker_bullet.hurt neutral @a ~ ~ ~ 1.5 2
    playsound minecraft:block.amethyst_cluster.break neutral @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.vex.ambient neutral @a ~ ~ ~ 1.5 2

# リセット
    scoreboard players reset @s 1029.ActionTime

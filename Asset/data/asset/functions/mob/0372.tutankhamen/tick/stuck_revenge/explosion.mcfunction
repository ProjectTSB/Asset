#> asset:mob/0372.tutankhamen/tick/stuck_revenge/explosion
#
# 爆発！
#
# @within function asset:mob/0372.tutankhamen/tick/stuck_revenge/

# 演出
    playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1 1.5

# 壁破壊
    execute positioned ~ ~0.1 ~ run function asset:mob/0372.tutankhamen/tick/stuck_revenge/break

# リセット
    scoreboard players reset @s AC.Count.Stuck

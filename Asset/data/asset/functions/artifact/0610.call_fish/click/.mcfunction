#> asset:artifact/0610.call_fish/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/610/click/

# 演出
    execute positioned ~ ~0.5 ~ rotated ~ 0 run function asset:artifact/0610.call_fish/click/particle.1
    playsound minecraft:entity.puffer_fish.blow_up neutral @a ~ ~ ~ 1 1.3

# 魚召喚
    summon cod ~ ~ ~ {Invulnerable:1b,Tags:["GY.Fish","GY.First","Friend"]}

# 魚の寿命を設定する
    scoreboard players set @e[type=cod,tag=GY.First] GY.FishTime 200

# ユーザーID適応
    scoreboard players operation @e[type=cod,tag=GY.First] GY.UserID = @s UserID

# タグを消す
    tag @e[type=cod,tag=GY.First] remove GY.First

# 再帰先へ飛ばす
    execute as @e[type=cod,tag=GY.Fish,limit=1] run function asset:artifact/0610.call_fish/click/3.1.tick

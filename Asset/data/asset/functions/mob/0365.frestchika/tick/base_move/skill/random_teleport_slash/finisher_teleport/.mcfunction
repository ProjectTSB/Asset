#> asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/finisher_teleport/
#
# 最後は確定で一定の距離に現れる
#
# @within function
#   asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/
#   asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/phase2/

# 自分の位置にマーカーを召喚
    summon marker ~ ~1.2 ~ {Tags:["A5.Marker","A5.Marker.Teleport"]}

# 向き指定
    execute store result storage asset:context this.Rotation int 1 run random value -180..180

# 演出
    particle dust 0.0 0.7 1 1 ~ ~1 ~ 0.5 0.5 0.5 0 25 normal @a
    playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1.3
    playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1.5

# 適当なプレイヤー狙いでワープ
    function asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/finisher_teleport/m with storage asset:context this

# これの呼び出し元にて召喚したマーカーに向けて、見た目レーザーが伸びる
    execute at @s positioned ~ ~1.2 ~ facing entity @e[type=marker,tag=A5.Marker.Teleport,distance=..64,sort=nearest,limit=1] feet run function asset:mob/0365.frestchika/tick/base_move/teleport/laser/summon

# ワープ後近くにいるやつの方を向く
    execute at @s facing entity @p[gamemode=!spectator,distance=..64] feet run tp @s ~ ~ ~ ~ ~

# リセット
    data remove storage asset:context this.Rotation

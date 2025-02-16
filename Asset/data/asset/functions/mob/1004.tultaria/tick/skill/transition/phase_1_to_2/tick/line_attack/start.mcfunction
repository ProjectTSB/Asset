#> asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/line_attack/start
#
# ライン攻撃出す前の移動
#
# @within function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/attack

# TickLock
    tag @s add RW.TickLock

# これをループされると困るのでTickを1増やす
    scoreboard players add @s General.Mob.Tick 1

# 速度設定
    scoreboard players set @s RW.Speed 8

# 残ってたらヤなのでマーカーを消す
    kill @e[type=marker,tag=RW.TeleportMarker,distance=..128,sort=nearest,limit=1]

# 1~4を選択
    #execute store result score @s RW.LineAttack run random value 1..1
    scoreboard players set @s RW.LineAttack 1

# 移動先を設置
    execute if score @s RW.LineAttack matches 1 at @e[type=marker,tag=RW.Marker.SpawnPoint,sort=nearest,limit=1] positioned ~20 ~5 ~ run summon marker ~ ~ ~ {Tags:[RW.TeleportMarker,RW.MarkerInit]}
    execute if score @s RW.LineAttack matches 2 at @e[type=marker,tag=RW.Marker.SpawnPoint,sort=nearest,limit=1] positioned ~-20 ~5 ~ run summon marker ~ ~ ~ {Tags:[RW.TeleportMarker,RW.MarkerInit]}
    execute if score @s RW.LineAttack matches 3 at @e[type=marker,tag=RW.Marker.SpawnPoint,sort=nearest,limit=1] positioned ~ ~5 ~20 run summon marker ~ ~ ~ {Tags:[RW.TeleportMarker,RW.MarkerInit]}
    execute if score @s RW.LineAttack matches 4 at @e[type=marker,tag=RW.Marker.SpawnPoint,sort=nearest,limit=1] positioned ~ ~5 ~-20 run summon marker ~ ~ ~ {Tags:[RW.TeleportMarker,RW.MarkerInit]}

# リセット
    scoreboard players reset @s RW.LineAttack

# 行動中タグ付与
    tag @s add RW.Move

#> asset:mob/1004.tultaria/tick/skill/fire/move_shot/move/
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/fire/move_shot/tick

# TickLock
    tag @s add RW.TickLock

# これをループされると困るのでTickを1増やす
    scoreboard players add @s General.Mob.Tick 1

# 速度設定
    scoreboard players set @s RW.Speed 8

# 残ってたらヤなのでマーカーを消す
    kill @e[type=marker,tag=RW.TeleportMarker,distance=..128,sort=nearest,limit=1]

# 付近のランダムなプレイヤーIDを自分のデータに持つ
    execute store result storage asset:context this.TargetID int 1 run scoreboard players get @r[gamemode=!spectator,distance=..64] UserID

# 向き指定
    execute store result storage asset:context this.Rotation int 1 run random value -180..180

# プレイヤーの足元に召喚
    function asset:mob/1004.tultaria/tick/skill/fire/move_shot/move/m with storage asset:context this

# 移動先を設置
    execute at @e[type=marker,tag=RW.RotateMarker,distance=..128,limit=1] run summon marker ~ ~ ~ {Tags:[RW.TeleportMarker,RW.MarkerInit]}

# 回るマーカーをキル
    kill @e[type=marker,tag=RW.RotateMarker,distance=..128,limit=1]

# リセット
    tag @e[type=marker,tag=RW.TeleportMarker,tag=RW.MarkerInit,distance=..128,limit=1] remove RW.MarkerInit
    data remove storage asset:context this.Rotation

# 行動中タグ付与
    tag @s add RW.Move

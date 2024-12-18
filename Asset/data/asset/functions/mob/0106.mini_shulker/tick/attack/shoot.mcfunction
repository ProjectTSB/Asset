#> asset:mob/0106.mini_shulker/tick/attack/shoot
# @within asset:mob/0106.mini_shulker/tick/attack/

# データを取得
    function api:global_vars/get_difficulty
    summon marker ~ ~ ~ {Tags:["2Y.Rotation"]}
    execute as @e[type=marker,tag=2Y.Rotation,limit=1] run data modify entity @s Rotation set from storage asset:context this.Rotation

# ターゲットの視認を試みる
    function asset:mob/0106.mini_shulker/tick/target
# 弾を召喚
    data modify storage api: Argument.ID set value 263
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    execute store result storage api: Argument.FieldOverride.OwnerUUID int 1 run scoreboard players get @s MobUUID
    execute store result storage api: Argument.FieldOverride.TurnLimit int 0.9999999999 run data get storage api: Return.Difficulty 1
    execute store result storage api: Argument.FieldOverride.TargetID int 1 run scoreboard players get @a[tag=2Y.Target,distance=..50,limit=1] UserID
    data modify storage api: Argument.FieldOverride.TargetPos set from storage asset:context this.Pos
    execute rotated as @e[type=marker,tag=2Y.Rotation,limit=1] run function api:mob/summon

# リセット
    kill @e[type=marker,tag=2Y.Rotation,limit=1]
    data remove storage asset:temp 2Y

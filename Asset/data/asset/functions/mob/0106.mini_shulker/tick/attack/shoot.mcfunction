#> asset:mob/0106.mini_shulker/tick/attack/shoot
# @within asset:mob/0106.mini_shulker/tick/attack/

# ターゲットの再視認を試みる
    execute as @a[tag=2Y.Target,distance=..25,limit=1] facing entity @s eyes run function asset:mob/0106.mini_shulker/tick/target/
# データを取得
    function api:global_vars/get_difficulty
    data modify entity @s Rotation set from storage asset:context this.Target.Rotation

# 弾を召喚
    data modify storage api: Argument.ID set value 263
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    execute store result storage api: Argument.FieldOverride.OwnerUUID int 1 run scoreboard players get @e[type=#lib:living,tag=this,distance=..1.5,limit=1] MobUUID
    execute store result storage api: Argument.FieldOverride.TurnLimit int 0.9999999999 run data get storage api: Return.Difficulty 1
    data modify storage api: Argument.FieldOverride.TargetID set from storage asset:context this.Target.ID
    data modify storage api: Argument.FieldOverride.TargetPos set from storage asset:context this.Target.Pos
    execute rotated as @s as @e[type=#lib:living,tag=this,distance=..1.5,limit=1] run function api:mob/summon

# リセット
    kill @s

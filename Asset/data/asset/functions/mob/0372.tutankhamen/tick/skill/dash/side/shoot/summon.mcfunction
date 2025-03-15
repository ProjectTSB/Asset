#> asset:mob/0372.tutankhamen/tick/skill/dash/side/shoot/summon
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/skill/dash/side/shoot/

# データ設定
    execute store result storage api: Argument.FieldOverride.Damage int 1 run data get storage asset:context this.Damage.ManyShoot
    data modify storage api: Argument.FieldOverride.StartDelay set value 40
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute store result storage api: Argument.FieldOverride.TargetID int 1 run scoreboard players get @r[gamemode=!spectator,distance=..64] UserID

# 召喚
    data modify storage api: Argument.ID set value 2092
    execute positioned ~ ~2 ~ run function api:object/summon
    execute positioned ~ ~2 ~ run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.05 10 force @a[distance=..32]

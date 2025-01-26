#> asset:mob/0417.astro_skeleton/tick/teleport
#
# テレポーターを召喚
#
# @within function asset:mob/0417.astro_skeleton/tick/

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2170
    execute at @a[tag=!PlayerShouldInvulnerable,distance=..64,sort=random,limit=1] run function api:object/summon

# リセット
    scoreboard players reset @s General.Mob.Tick

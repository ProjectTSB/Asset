#> asset:artifact/0953.meteor_rain/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/953/click/

# サウンド
    playsound minecraft:entity.blaze.ambient player @a ~ ~ ~ 3 1.2
    playsound minecraft:entity.blaze.ambient player @a ~ ~ ~ 3 0.8
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 3 1.5
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 3 1.2
    playsound minecraft:entity.ghast.shoot player @a ~ ~ ~ 3 0.5

# メテオレインのエミッターを召喚
    data modify storage api: Argument.ID set value 1079
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon

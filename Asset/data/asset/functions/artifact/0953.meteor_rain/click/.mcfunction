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

# スコアリセット
    scoreboard players set @s QH.MeteorCastedCount 0

# 一定時間メテオを降らす
    schedule function asset:artifact/0953.meteor_rain/click/4.emitter_tick 1t replace

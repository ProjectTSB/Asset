#> asset:mob/0401.darkness_spellbook/ai/bullet/1.init
#
# 初期化処理
#
# @within function asset:mob/0401.darkness_spellbook/ai/bullet/0.summon

# スコア初期化
    scoreboard players set @s B5.Tick 0

# UUIDスコア紐づけ
    scoreboard players operation @s B5.UUID = $B5.Temp B5.UUID

# 発射音
    playsound block.sculk_sensor.clicking hostile @a ~ ~ ~ 0.8 0 0
    playsound ogg:block.amethyst.step6 hostile @a[distance=..32] ~ ~ ~ 1 2 0
    playsound block.respawn_anchor.deplete hostile @a[distance=..32] ~ ~ ~ 1 2 0

# リセット
    tag @s remove B5.Temp

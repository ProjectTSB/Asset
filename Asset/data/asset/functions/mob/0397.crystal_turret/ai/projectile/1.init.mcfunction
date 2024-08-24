#> asset:mob/0397.crystal_turret/ai/projectile/1.init
#
# 初期化処理
#
# @within function asset:mob/0397.crystal_turret/ai/projectile/0.summon

# スコア初期化
    scoreboard players set @s B1.Tick 0

# UUIDスコア紐づけ
    scoreboard players operation @s B1.UUID = $B1.Temp B1.UUID

# 発射音
    playsound ogg:block.amethyst.step6 hostile @a[distance=..32] ~ ~ ~ 1 2 0
    playsound ogg:block.amethyst.step6 hostile @a[distance=..32] ~ ~ ~ 1 1.95 0
    playsound ogg:block.amethyst.step6 hostile @a[distance=..32] ~ ~ ~ 1 1.9 0
    playsound block.respawn_anchor.deplete hostile @a[distance=..32] ~ ~ ~ 1 2 0

# リセット
    tag @s remove B1.Temp

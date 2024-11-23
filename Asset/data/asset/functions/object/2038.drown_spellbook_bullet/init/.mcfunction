#> asset:object/2038.drown_spellbook_bullet/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2038/init

# 向きを決定
    tp @s ~ ~ ~ ~ ~

# 発射音
    playsound ogg:block.amethyst.step6 hostile @a[distance=..32] ~ ~ ~ 1 2 0
    playsound ogg:block.amethyst.step6 hostile @a[distance=..32] ~ ~ ~ 1 1.95 0
    playsound ogg:block.amethyst.step6 hostile @a[distance=..32] ~ ~ ~ 1 1.9 0
    playsound block.respawn_anchor.deplete hostile @a[distance=..32] ~ ~ ~ 1 2 0

# フィールドのデータからスコアを設定
    execute store result score @s 1.Speed run data get storage asset:context this.Speed
    execute store result score @s 1.Range run data get storage asset:context this.Range

# 上記が設定されてなければ、デフォルト値で0.5にする
    execute unless data storage asset:context this.MovePerStep run data modify storage asset:context this.MovePerStep set value 0.5

# エラー
    execute unless data storage asset:context this.Speed run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"速度が設定されていない！"}]
    execute unless data storage asset:context this.Range run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"飛距離が設定されていない！"}]

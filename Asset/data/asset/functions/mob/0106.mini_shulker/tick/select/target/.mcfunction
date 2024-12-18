#> asset:mob/0106.mini_shulker/tick/select/target/
# @within asset:mob/0106.mini_shulker/tick/select/

# ターゲットが完了していれば終了
    execute if entity @a[tag=2Y.Target,distance=..25,limit=1] run return fail

# データを設定
    data modify storage asset:temp 2Y.Step set value 0.5d
# タグ付け
    tag @s add 2Y.This

# プレイヤーへ向かって壁チェック
    execute facing entity @a[tag=2Y.This,distance=..25,limit=1] eyes run function asset:mob/0106.mini_shulker/tick/select/target/rec.m with storage asset:temp 2Y

# リセット
    tag @s remove 2Y.This
    data remove storage asset:temp 2Y

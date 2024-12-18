#> asset:mob/0106.mini_shulker/tick/select/foreach
# @within asset:mob/0106.mini_shulker/tick/select/

# ターゲットが完了していれば終了
    execute if entity @a[tag=2Y.Target,distance=..25,limit=1] run return fail

# プレイヤーが視認できるか確認する
    tag @s add 2Y.Target
    data modify storage asset:temp 2Y.Step set value 0.5d
    execute facing entity @a[tag=2Y.Target,distance=..25,limit=1] eyes run function asset:mob/0106.mini_shulker/tick/target.m with storage asset:temp 2Y
    execute if data storage asset:temp 2Y{Visible:false} run tag @s remove 2Y.Target

# リセット
    data remove storage asset:temp 2Y

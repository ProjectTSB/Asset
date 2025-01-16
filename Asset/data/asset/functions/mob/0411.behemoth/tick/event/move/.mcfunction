#> asset:mob/0411.behemoth/tick/event/move/
#
# 移動
#
# @within asset:mob/0411.behemoth/tick/event/

# タイマー増加
    scoreboard players add @s BF.EventTimer 1

# ターゲットを向く
    function asset:mob/0411.behemoth/tick/util/rotate_to_target

# 移動
    execute at @s run tp @s ^ ^ ^0.3

# ターゲットが近い場合、移動停止
    execute if entity @p[tag=BF.MainTarget,distance=..6] run function asset:mob/0411.behemoth/tick/event/move/end_move

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~


# 終了
    execute if score @s BF.EventTimer matches 46.. run function asset:mob/0411.behemoth/tick/event/move/end

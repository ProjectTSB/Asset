#> asset:mob/0411.behemoth/tick/event/idle/
#
# 待機
#
# @within asset:mob/0411.behemoth/tick/event/

# タイマー増加
    scoreboard players add @s BF.EventTimer 1

# ターゲットを向く
    function asset:mob/0411.behemoth/tick/util/rotate_to_target

# ターゲットが遠い場合、移動
    execute unless entity @s[tag=BF.State.Wait] unless entity @p[tag=BF.MainTarget,distance=..10] run function asset:mob/0411.behemoth/tick/event/idle/start_move

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 演出
    execute if score @s BF.EventTimer matches 24 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7

# 終了
    execute if score @s BF.EventTimer matches 45.. run function asset:mob/0411.behemoth/tick/event/idle/end

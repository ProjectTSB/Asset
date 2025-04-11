#> asset:mob/0412.tiamat/tick/event/idle/
#
# 待機
#
# @within asset:mob/0412.tiamat/tick/event/

# タイマー増加
    scoreboard players add @s BG.EventTimer 1

# ターゲットを向く
    function asset:mob/0412.tiamat/tick/util/rotate_to_target

# ターゲットが遠い場合、移動
    execute unless entity @s[tag=BG.State.Wait] unless entity @p[tag=BG.MainTarget,distance=..14] run function asset:mob/0412.tiamat/tick/event/idle/start_move

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 演出
    execute if score @s BG.EventTimer matches 30 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65

# 終了
    execute if score @s BG.EventTimer matches 50.. run function asset:mob/0412.tiamat/tick/event/idle/end

#> asset:object/2262.gem_panjan_drone/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2262/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1
# モデル紐づけ
    function asset:object/2262.gem_panjan_drone/tick/link_model.m with storage asset:context this

# 登場
    execute if entity @s[tag=2262.Phase.Start] run function asset:object/2262.gem_panjan_drone/tick/event_start
# 待機
    execute if entity @s[tag=2262.Phase.Idle] run function asset:object/2262.gem_panjan_drone/tick/event_idle
# 移動
    execute if entity @s[tag=2262.Phase.Move] run function asset:object/2262.gem_panjan_drone/tick/event_move
# 攻撃
    execute if entity @s[tag=2262.Phase.Attack] run function asset:object/2262.gem_panjan_drone/tick/event_attack
# ダメージ床
    execute if entity @s[tag=2262.Phase.Flame] positioned ~ ~0.5 ~ run function asset:object/2262.gem_panjan_drone/tick/event_flame

# 消去
    execute if entity @s[tag=CO.Drone.Remove] run function asset:object/2262.gem_panjan_drone/tick/remove

# モデルを自身の位置に合わせる
    tp @e[type=item_display,tag=2262.Model.Target,distance=..80,sort=nearest,limit=1] ~ ~ ~ ~ ~
# 紐づけ解除
    tag @e[type=item_display,tag=2262.Model.Target,distance=..80,sort=nearest,limit=1] remove 2262.Model.Target

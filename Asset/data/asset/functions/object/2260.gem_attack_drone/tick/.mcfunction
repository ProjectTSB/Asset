#> asset:object/2260.gem_attack_drone/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2260/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1
# 最も近くにあるモデルを紐づけ
    tag @e[type=item_display,tag=2260.Model,distance=..5,sort=nearest,limit=1] add 2260.Model.Target

# 登場
    execute if entity @s[tag=2260.Phase.Start] run function asset:object/2260.gem_attack_drone/tick/event_start
# 待機
    execute if entity @s[tag=2260.Phase.Idle] run function asset:object/2260.gem_attack_drone/tick/event_idle
# 攻撃
    execute if entity @s[tag=2260.Phase.Attack] run function asset:object/2260.gem_attack_drone/tick/event_attack

# 消去
    execute if entity @s[tag=CO.Drone.Remove] run function asset:object/2260.gem_attack_drone/tick/remove

# モデルを自身の位置に合わせる
    tp @e[type=item_display,tag=2260.Model.Target,distance=..80,sort=nearest,limit=1] ~ ~ ~ ~ ~
# 紐づけ解除
    tag @e[type=item_display,tag=2260.Model.Target,distance=..80,sort=nearest,limit=1] remove 2260.Model.Target

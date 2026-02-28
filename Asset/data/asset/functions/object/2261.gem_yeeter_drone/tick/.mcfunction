#> asset:object/2261.gem_yeeter_drone/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2261/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1
# 最も近くにあるモデルを紐づけ
    execute positioned ~ ~5 ~ run tag @e[type=item_display,tag=2261.Model,distance=..6,sort=nearest,limit=1] add 2261.Model.Target

# 登場
    execute if entity @s[tag=2261.Phase.Start] run function asset:object/2261.gem_yeeter_drone/tick/event_start
# 待機
    execute if entity @s[tag=2261.Phase.Idle] run function asset:object/2261.gem_yeeter_drone/tick/event_idle
# 攻撃
    execute if entity @s[tag=2261.Phase.Attack] run function asset:object/2261.gem_yeeter_drone/tick/event_attack

# 消去
    execute if entity @s[tag=CO.Drone.Remove] run function asset:object/2261.gem_yeeter_drone/tick/remove

# モデルを自身の位置に合わせる
    tp @e[type=item_display,tag=2261.Model.Target,distance=..80,sort=nearest,limit=1] ~ ~5 ~ ~ ~
# 紐づけ解除
    tag @e[type=item_display,tag=2261.Model.Target,distance=..80,sort=nearest,limit=1] remove 2261.Model.Target

#> asset:mob/0464.drain_plant/tick/move/
#
#
#
# @within function asset:mob/0464.drain_plant/tick/

# 地面に潜る
    execute if score @s General.Mob.Tick matches 0..29 run function asset:mob/0464.drain_plant/tick/move/burrow

# 落下無効化
    execute if score @s General.Mob.Tick matches 10 run function asset:mob/0464.drain_plant/tick/fall/disable/true

# 地面に潜り切ったときに周囲にプレイヤーがいなければremoveする
    execute if score @s General.Mob.Tick matches 30 unless entity @p[gamemode=!spectator,distance=..20] run return run function api:mob/remove

# 透明化
    execute if score @s General.Mob.Tick matches 30 run function asset:mob/0464.drain_plant/tick/change_model/invisible

# tp
    execute if score @s General.Mob.Tick matches 35 run function asset:mob/0464.drain_plant/tick/move/teleport/

# モデル適用
    execute if score @s General.Mob.Tick matches 41 run function asset:mob/0464.drain_plant/tick/change_model/0

# 落下有効化
    execute if score @s General.Mob.Tick matches 66 run function asset:mob/0464.drain_plant/tick/fall/disable/false

# 地面から出てくる
    execute if score @s General.Mob.Tick matches 42..76 at @s run function asset:mob/0464.drain_plant/tick/move/emerge

# リセット
    execute if score @s General.Mob.Tick matches 100.. run function asset:mob/0464.drain_plant/tick/reset/

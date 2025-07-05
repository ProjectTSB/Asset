#> asset:mob/0106.mini_shulker/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/106/tick

# 確率でテレポートに移行
    execute if score @s General.Mob.Tick matches 0 if predicate lib:random_pass_per/20 run scoreboard players set @s General.Mob.Tick 1000

# 状態制御
    execute if score @s General.Mob.Tick matches 0 if function asset:mob/0106.mini_shulker/tick/select/ run scoreboard players set @s General.Mob.Tick 500

# 待機処理
    execute if score @s General.Mob.Tick matches 0..50 run function asset:mob/0106.mini_shulker/tick/wait
# 攻撃処理
    execute if score @s General.Mob.Tick matches 500..550 run function asset:mob/0106.mini_shulker/tick/attack/
# テレポート
    execute if score @s General.Mob.Tick matches 1000 summon marker run function asset:mob/0106.mini_shulker/tick/teleport/

# 加算
    scoreboard players add @s General.Mob.Tick 1

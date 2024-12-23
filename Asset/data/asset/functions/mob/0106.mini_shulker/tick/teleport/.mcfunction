#> asset:mob/0106.mini_shulker/tick/teleport/
#
# テレポート処理
#
# @within asset:mob/0106.mini_shulker/tick/

# データを設定
    data modify storage asset:temp 2Y set value {Range:3,Target:[]}

# マーカーを用意
    data modify storage lib: Argument.Bounds set value [[10d,10d],[6d,6d],[10d,10d]]
    function lib:spread_entity/
    execute at @s align xyz run tp @s ~0.5 ~0.2399 ~0.5
# 壁の選定
    execute at @s run function asset:mob/0106.mini_shulker/tick/teleport/secure/
# 壁がなければ再試行
    execute unless data storage asset:temp 2Y.Target[0] run scoreboard players set @e[type=#lib:living,tag=this,distance=..0.01,limit=1] General.Mob.Tick 995
# 壁があればTPする
    execute if data storage asset:temp 2Y.Target[0] as @e[type=#lib:living,tag=this,distance=..0.01,limit=1] run function asset:mob/0106.mini_shulker/tick/teleport/do/

# リセット
    kill @s
    data remove storage asset:temp 2Y

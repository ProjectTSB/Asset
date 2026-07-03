#> asset:effect/0603.domination/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0603.domination/_/tick

#> Private
# @private
    #declare tag FacingTarget
    #declare score_holder $Interval

# 演出
    execute if predicate lib:random_pass_per/30 run particle minecraft:electric_spark ~ ~1 ~ 0.4 0.4 0.4 0 1

# ターゲットにTagを付与
    execute at @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..30] if score @s 603.TargetUUID = @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..0.01,sort=nearest,limit=1] MobUUID run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..0.01,sort=nearest,limit=1] add FacingTarget

# 2tick毎に実行するようにする
    scoreboard players add @s 603.Tick 1
# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s 603.Tick
# 2tickおきに実行
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 facing entity @e[type=#lib:living,tag=FacingTarget,distance=..30,limit=1] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-400 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
# ターゲットの方を向く
# リセット
    scoreboard players reset $Interval 603.Tick

# ターゲットが周囲にいなければデバフ解除
    execute unless entity @e[type=#lib:living,tag=FacingTarget,distance=..30,limit=1] run function asset:effect/0603.domination/tick/remove_effect

# ターゲットのTag削除
    tag @e[type=#lib:living,tag=FacingTarget,distance=..30,limit=1] remove FacingTarget

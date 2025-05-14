#> asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/summon/interval
#
# インターバル処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/summon/

# 一定間隔で召喚
# ノーマル以下:6tick ハード以上:4tick

# Tick指定とTickに対する剰余算では誤差が生じるため
# ノーマル以下では2tick減算から剰余する

    scoreboard players operation $Interval Temporary = @s General.Mob.Tick
    execute if predicate api:global_vars/difficulty/max/normal run scoreboard players operation $Interval Temporary -= $2 Const
    execute if predicate api:global_vars/difficulty/max/normal run scoreboard players operation $Interval Temporary %= $6 Const
    execute if predicate api:global_vars/difficulty/min/3_blessless run scoreboard players operation $Interval Temporary %= $4 Const
    execute if score $Interval Temporary matches 0 run tag @s add 1N.PumpkinRain.Interval
    scoreboard players reset $Interval Temporary

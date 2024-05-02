#> asset:artifact/0606.traffic_sign/trigger/5.damage
#
# ダメージを与える処理
#
# @within function asset:artifact/0606.traffic_sign/trigger/4.1.schedule_tick

# 速度を取得
    execute store result score $GU.Temp Temporary run attribute @s generic.movement_speed get 100
    scoreboard players operation $GU.Temp Temporary -= $100 Const
    scoreboard players operation $GU.Temp Temporary *= $-1 Const

# 計算結果をArgument.Damageに代入
# Damage = (1 - 速度) * 50
    execute store result storage lib: Argument.Damage float 0.5 run scoreboard players operation $GU.Temp Temporary > $1 Const

# ダメージ
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    execute as @p[tag=GU.Owner] run function lib:damage/modifier
    function lib:damage/

# パーティクル
    particle item anvil ~ ~0.1 ~ 1 0.5 1 0.1 15

# リセット
    function lib:damage/reset


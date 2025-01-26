#> asset:artifact/0931.d_u_t_y/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/931/attack_melee/

#> prv
# @private
    #declare score_holder $PV.EnemyNum

# ダメージ計算
    execute store result score $PV.EnemyNum Temporary if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..5]
    execute if score $PV.EnemyNum Temporary matches 11.. run scoreboard players set $PV.EnemyNum Temporary 10
    execute store result storage lib: Argument.Damage float 80 run scoreboard players get $PV.EnemyNum Temporary

# 攻撃対象に追加ダメージ
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Fire"
    function lib:damage/modifier
    execute if data storage lib: Argument.Damage as @e[type=#lib:living,tag=Victim,distance=..5] run function lib:damage/

# reset
    function lib:damage/reset
    scoreboard players reset $PV.EnemyNum Temporary

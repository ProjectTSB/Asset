#> asset:artifact/0931.d_u_t_y/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0931.d_u_t_y/trigger/2.check_condition

#> prv
# @within function asset:artifact/0931.d_u_t_y/trigger/**
    #declare score_holder $PV.EnemyNum

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く
# ダメージ計算
    execute as @e[type=#lib:living,tag=Enemy,tag=!ExtendedCollision,tag=!Uninterferable,distance=..5] run function asset:artifact/0931.d_u_t_y/trigger/add_enemy_num
    execute as @e[type=#lib:living,tag=Enemy,tag= ExtendedCollision,distance=..5] run function api:mob/apply_to_forward_target/with_non-idempotent.m {CB:"asset:artifact/0931.d_u_t_y/trigger/add_enemy_num",Key:"asset:artifact/0931.d_u_t_y/trigger/3.main",IsForwardedOnly:true}
    function api:mob/apply_to_forward_target/reset_initial_apply.m {Key:"asset:artifact/0931.d_u_t_y/trigger/3.main"}
    execute if score $PV.EnemyNum Temporary matches 11.. run scoreboard players set $PV.EnemyNum Temporary 10
    execute store result storage api: Argument.Damage float 80 run scoreboard players get $PV.EnemyNum Temporary

# 攻撃対象に追加ダメージ
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute if data storage api: Argument.Damage as @e[type=#lib:living,tag=Victim,distance=..5] run function api:damage/

# reset
    function api:damage/reset
    scoreboard players reset $PV.EnemyNum Temporary

#> asset:artifact/0733.percentage_sword/attack_melee/angel_damage_calc
#
# 天使に対してのダメージ
#
# @within function asset:artifact/0733.percentage_sword/attack_melee/

#> Private
# @private
    #declare score_holder $Damage

# 最大体力の1%を取得
    execute store result score $Damage Temporary run function api:mob/get_max_health
    scoreboard players operation $Damage Temporary /= $100 Const

# 上限
    scoreboard players operation $Damage Temporary < $5000 Const

# 代入
    execute store result storage api: Argument.Damage int 1 run scoreboard players get $Damage Temporary

# リセット
    scoreboard players reset $Damage Temporary

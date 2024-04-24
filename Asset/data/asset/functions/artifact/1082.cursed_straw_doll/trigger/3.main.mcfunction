#> asset:artifact/1082.cursed_straw_doll/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1082.cursed_straw_doll/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare score_holder $MaxHealth
    #declare score_holder $CurrentHealth
    #declare score_holder $DamageValue

# 演出
    execute as @e[type=#lib:living,tag=Attacker,distance=..50,limit=1] at @s run function asset:artifact/1082.cursed_straw_doll/trigger/vfx/

# 最大体力の13倍、現在体力の13倍を取得
    execute store result score $MaxHealth Temporary run attribute @s generic.max_health get 13
    function api:data_get/health
    execute store result score $CurrentHealth Temporary run data get storage api: Health 13

# 失っている体力を求める
    execute store result score $DamageValue Temporary run scoreboard players operation $MaxHealth Temporary -= $CurrentHealth Temporary

# 最大体力、現在体力の100倍を取得
    execute store result score $MaxHealth Temporary run attribute @s generic.max_health get
    function api:data_get/health
    execute store result score $CurrentHealth Temporary run data get storage api: Health 100

# 現在体力割合を求める
    scoreboard players operation $CurrentHealth Temporary /= $MaxHealth Temporary

# 50%以下ならダメージを1.5倍にする
    execute if score $CurrentHealth Temporary matches ..50 run scoreboard players operation $DamageValue Temporary *= $3 Const
    execute if score $CurrentHealth Temporary matches ..50 run scoreboard players operation $DamageValue Temporary /= $2 Const

# 50%以下なら追加演出
    execute if score $CurrentHealth Temporary matches ..50 at @e[type=#lib:living,tag=Victim,distance=..50] run particle witch ~ ~1.2 ~ 0.4 0.4 0.4 0 60 normal @a

# ダメージ上限(4444)
    execute if score $DamageValue Temporary matches 4444.. run scoreboard players set $DamageValue Temporary 4444

# ダメージへ代入
    execute store result storage api: Argument.Damage int 1 run scoreboard players get $DamageValue Temporary
    data modify storage api: Argument.AttackType set value "Magic"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Attacker,distance=..50] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $MaxHealth Temporary
    scoreboard players reset $CurrentHealth Temporary
    scoreboard players reset $DamageValue Temporary

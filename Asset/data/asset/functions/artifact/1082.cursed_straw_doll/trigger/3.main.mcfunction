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
    #declare score_holder $LostHealth

# 演出
    execute as @e[type=#lib:living,tag=Attacker,distance=..50,limit=1] at @s run function asset:artifact/1082.cursed_straw_doll/trigger/vfx/

# 最大体力の10倍、現在体力の10倍を取得
    execute store result score $MaxHealth Temporary run attribute @s generic.max_health get 10
    function api:data_get/health
    execute store result score $CurrentHealth Temporary run data get storage api: Health 10

# 失っている体力を求める
# 変数を変えているのは役割が変数名と一致しなくなるから
# 別に変えなくてよくない？って思うのならレビュー求
    execute store result score $LostHealth Temporary run scoreboard players operation $MaxHealth Temporary -= $CurrentHealth Temporary

# ダメージ上限(1200)
    execute if score $LostHealth Temporary matches 1200.. run scoreboard players set $LostHealth Temporary 1200

# ダメージへ代入
    execute store result storage api: Argument.Damage int 1 run scoreboard players get $LostHealth Temporary
    data modify storage api: Argument.AttackType set value "Magic"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Attacker,distance=..50] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $MaxHealth Temporary
    scoreboard players reset $CurrentHealth Temporary
    scoreboard players reset $LostHealth Temporary
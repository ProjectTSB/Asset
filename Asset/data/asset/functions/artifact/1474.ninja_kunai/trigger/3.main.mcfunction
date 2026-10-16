#> asset:artifact/1474.ninja_kunai/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1474.ninja_kunai/trigger/2.check_condition

#> Private
#@within function asset:artifact/1474.ninja_kunai/trigger/**
    #declare score_holder $Damage

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
# 最初にダメージをスコアで設定
    scoreboard players set $Damage Temporary 80
# 後ろから攻撃したなら+70
    execute at @e[type=#lib:living_without_player,tag=Victim,distance=..5] rotated ~ 0 positioned ^ ^ ^50 unless entity @s[distance=..50] at @p[tag=this] run function asset:artifact/1474.ninja_kunai/trigger/3.1.backstab
# Effect385が付与されているなら+100
    data modify storage api: Argument.ID set value 385
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run function asset:artifact/1474.ninja_kunai/trigger/3.2.first_strike

# $Damageから引数に代入
    execute store result storage api: Argument.Damage float 1.0 run scoreboard players get $Damage Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Victim,distance=..5,sort=nearest,limit=1] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $Damage Temporary

# 演出
    playsound item.trident.hit player @a ~ ~ ~ 2 1

#> asset:artifact/0249.wakinyan/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0249.wakinyan/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare score_holder $AroundWater

# ここから@sのTemporaryは強さ指数に変化(1..4)
# 指数を雨なら2、雷雨なら3に設定
    execute if predicate lib:weather/is_sunny run scoreboard players set @s Temporary 1
    execute if predicate lib:weather/is_raining run scoreboard players set @s Temporary 2
    execute if predicate lib:weather/is_thundering run scoreboard players set @s Temporary 3
# 相手が水に浸かってたら(Temporaryが1..)指数を1増やす
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..100,limit=1] store result score $AroundWater Temporary run clone ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 ~-0.5 ~-0.5 ~-0.5 filtered water force
    execute if score $AroundWater Temporary matches 1.. run scoreboard players add @s Temporary 1

# ダメージ
    execute store result storage api: Argument.Damage float 60 run scoreboard players get @s Temporary
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.DamageType set value "Projectile"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..100,limit=1] at @s run function asset:artifact/0249.wakinyan/trigger/4.damage

# リセット
    scoreboard players reset $AroundWater Temporary
    scoreboard players reset @s Temporary
    function api:damage/reset

#> asset:artifact/0927.lexiel_s_oath/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0927.lexiel_s_oath/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $RandomDamage

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle sweep_attack ~ ~1 ~ 0 0 0 1 20
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle end_rod ~ ~1 ~ 0 0 0 0.1 20
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.4 10

    playsound minecraft:item.trident.return player @a ~ ~ ~ 1 2
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 0.5
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1 2

# ダメージ
    execute store result storage api: Argument.Damage float 1 run random value 720..820
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"

# 確率で相手に9999ダメージ
    execute if predicate lib:random_pass_per/5 run function asset:artifact/0927.lexiel_s_oath/trigger/4.critical_hit

# 対象がトゥルタリアなら2ダメージ
    execute if entity @e[type=#lib:living,tag=Victim,scores={MobID=1004},distance=..10] run data modify storage api: Argument.Damage set value 2f

# 補正functionを実行
    function api:damage/modifier
# ダメージを与える
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function api:damage/

# リセット
    function api:damage/reset
    scoreboard players reset $RandomDamage Temporary

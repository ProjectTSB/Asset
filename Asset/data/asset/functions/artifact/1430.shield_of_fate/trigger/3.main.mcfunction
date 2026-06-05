#> asset:artifact/1430.shield_of_fate/trigger/3.main
#
# 装備時の具体的な処理
#
# @within function asset:artifact/1430.shield_of_fate/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# 装備タグの付与
    tag @s add 13Q.Equipped

# 現在体力割合を取得する
    function api:entity/player/get_health_per
    execute store result score $13Q.HealthPer Temporary run data get storage api: Return.HealthPer 1000

# 現在体力が30％以下でデバフを、30％より上でバフを付与する
    execute if score $13Q.HealthPer Temporary matches ..300 run function asset:artifact/1430.shield_of_fate/effect/debuff_give
    execute unless score $13Q.HealthPer Temporary matches ..300 run function asset:artifact/1430.shield_of_fate/effect/buff_give

# リセット
    scoreboard players reset $13Q.HealthPer Temporary

# sound
    playsound minecraft:block.copper_trapdoor.open player @a ~ ~ ~ 1.0 0.5 0.0
    
    playsound disabled_sounds:item.armor.equip_iron player @a ~ ~ ~ 1 1

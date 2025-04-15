#> asset:mob/0410.heiloang/tick/event/enhanced_disaster/give_debuff
#
# エンハンスドディザスター
#
# @within asset:mob/0410.heiloang/tick/event/enhanced_disaster/

#> Val
# @private
#declare score_holder $BE.Temp

# ランダムでデバフ付与
    execute store result score $BE.Temp Temporary run random value 1..3

# 火
    execute unless score $BE.Temp Temporary matches 1 run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/give_debuff_fire

# 水
    execute unless score $BE.Temp Temporary matches 2 run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/give_debuff_water

# 雷
    execute unless score $BE.Temp Temporary matches 3 run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/give_debuff_thunder

# 終了
    scoreboard players reset $BE.Temp Temporary

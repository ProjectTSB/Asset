#> asset:mob/0166.flying_potion/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/166/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

#> Private
# @private
    #declare score_holder $Random

# デバフ
# スタックのあるものは難易度比例でスタックが伸びる
# スタックのないものは難易度比例で効果時間が伸びる
# ダメージはinstant_damageの再現
    execute store result score $Random Temporary run random value 0..7
    execute if score $Random Temporary matches 0 run function asset:mob/0166.flying_potion/attack/debuff/attack_base_debuff
    execute if score $Random Temporary matches 1 run function asset:mob/0166.flying_potion/attack/debuff/damage
    execute if score $Random Temporary matches 2 run function asset:mob/0166.flying_potion/attack/debuff/darkness
    execute if score $Random Temporary matches 3 run function asset:mob/0166.flying_potion/attack/debuff/hunger
    execute if score $Random Temporary matches 4 run function asset:mob/0166.flying_potion/attack/debuff/mining_fatigue
    execute if score $Random Temporary matches 5 run function asset:mob/0166.flying_potion/attack/debuff/nausea
    execute if score $Random Temporary matches 6 run function asset:mob/0166.flying_potion/attack/debuff/poison
    execute if score $Random Temporary matches 7 run function asset:mob/0166.flying_potion/attack/debuff/slowness
    scoreboard players reset $Random Temporary

# 演出
    particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.1 100
    playsound entity.splash_potion.break hostile @a ~ ~ ~ 1 1

# 自殺する
    function api:mob/remove

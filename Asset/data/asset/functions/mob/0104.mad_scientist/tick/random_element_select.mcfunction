#> asset:mob/0104.mad_scientist/tick/random_element_select
#
# 次に投げるポーションを設定
#
# @within function
#   asset:mob/0104.mad_scientist/init/
#   asset:mob/0104.mad_scientist/tick/reset

 # 25%ずつの確率で4つに分岐 それぞれ毒、火、水、雷
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $4 Const
    execute if score $Random Temporary matches 0 run data modify storage asset:context this.Element set value "Poison"
    execute if score $Random Temporary matches 1 run data modify storage asset:context this.Element set value "Fire"
    execute if score $Random Temporary matches 2 run data modify storage asset:context this.Element set value "Water"
    execute if score $Random Temporary matches 3 run data modify storage asset:context this.Element set value "Thunder"
    scoreboard players reset $Random Temporary

# ポーションの色合わせ
    execute if data storage asset:context this{Element:Poison} run item replace entity @s weapon.mainhand with splash_potion{CustomPotionColor:26112}
    execute if data storage asset:context this{Element:Fire} run item replace entity @s weapon.mainhand with splash_potion{CustomPotionColor:13369344}
    execute if data storage asset:context this{Element:Water} run item replace entity @s weapon.mainhand with splash_potion{CustomPotionColor:8454143}
    execute if data storage asset:context this{Element:Thunder} run item replace entity @s weapon.mainhand with splash_potion{CustomPotionColor:16776960}

# ポーションの色をフィールドに突っ込んでおく
    data modify storage asset:context this.PotionColor set from entity @s HandItems[0].tag.CustomPotionColor

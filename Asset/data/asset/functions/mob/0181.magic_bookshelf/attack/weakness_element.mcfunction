#> asset:mob/0181.magic_bookshelf/attack/weakness_element
#
# 最も脆弱な耐性の属性で攻撃
#
# @within function asset:mob/0181.magic_bookshelf/attack/

#> Private
# @private
    #declare score_holder $MinDefense
    #declare score_holder $FireDefense
    #declare score_holder $WaterDefense
    #declare score_holder $ThunderDefense
    #declare score_holder $Length
    #declare score_holder $Random

# 最も脆弱な耐性の属性で攻撃する
# もし複数同値の耐性があるならその中でランダムでに攻撃する

# 対象の属性耐性を取得してスコアへ代入
    execute as @p[tag=Victim,distance=..6] run function api:modifier/defense/fire/get
    execute as @p[tag=Victim,distance=..6] run function api:modifier/defense/water/get
    execute as @p[tag=Victim,distance=..6] run function api:modifier/defense/thunder/get
    execute store result score $FireDefense Temporary run data get storage api: Return.Defense.Fire 100
    execute store result score $WaterDefense Temporary run data get storage api: Return.Defense.Water 100
    execute store result score $ThunderDefense Temporary run data get storage api: Return.Defense.Thunder 100

# それぞれTempと比較する
    scoreboard players operation $MinDefense Temporary > $FireDefense Temporary
    scoreboard players operation $MinDefense Temporary > $WaterDefense Temporary
    scoreboard players operation $MinDefense Temporary > $ThunderDefense Temporary

# MinDefenseと同じ値の属性耐性をstorageに突っ込む
    execute if score $MinDefense Temporary = $FireDefense Temporary run data modify storage asset:temp Element append value "Fire"
    execute if score $MinDefense Temporary = $WaterDefense Temporary run data modify storage asset:temp Element append value "Water"
    execute if score $MinDefense Temporary = $ThunderDefense Temporary run data modify storage asset:temp Element append value "Thunder"

# 要素数を取得
    execute store result score $Length Temporary if data storage asset:temp Element[]

# 乱数取得
    execute store result score $Random Temporary run function lib:random/

# 要素数で余剰算
    scoreboard players operation $Random Temporary %= $Length Temporary

# (乱数)番目の要素を移す
    execute if score $Random Temporary matches 0 run data modify storage asset:temp Element set from storage asset:temp Element[0]
    execute if score $Random Temporary matches 1 run data modify storage asset:temp Element set from storage asset:temp Element[1]
    execute if score $Random Temporary matches 2 run data modify storage asset:temp Element set from storage asset:temp Element[2]

# 配列の0番目の要素に応じて攻撃属性を分岐
    execute if data storage asset:temp {Element:Fire} run function asset:mob/0181.magic_bookshelf/attack/elements/fire
    execute if data storage asset:temp {Element:Water} run function asset:mob/0181.magic_bookshelf/attack/elements/water
    execute if data storage asset:temp {Element:Thunder} run function asset:mob/0181.magic_bookshelf/attack/elements/thunder

# リセット
    scoreboard players reset $MinDefense Temporary
    scoreboard players reset $FireDefense Temporary
    scoreboard players reset $WaterDefense Temporary
    scoreboard players reset $ThunderDefense Temporary
    scoreboard players reset $Length Temporary
    scoreboard players reset $Random Temporary
    data remove storage asset:temp Element

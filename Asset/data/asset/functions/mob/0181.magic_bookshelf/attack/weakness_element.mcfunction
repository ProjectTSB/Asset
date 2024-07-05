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

# 最も脆弱な耐性の属性で攻撃する
# もし複数同値の耐性があるならその中でランダムでに攻撃する

# 対象の属性耐性を取得してスコアへ代入
    execute as @p[tag=Victim,distance=..6] run function api:modifier/defense/fire/get
    execute as @p[tag=Victim,distance=..6] run function api:modifier/defense/water/get
    execute as @p[tag=Victim,distance=..6] run function api:modifier/defense/thunder/get
    execute store result score $FireDefense Temporary run data get storage api: Return.Defense.Fire 100
    execute store result score $WaterDefense Temporary run data get storage api: Return.Defense.Water 100
    execute store result score $ThunderDefense Temporary run data get storage api: Return.Defense.Thunder 100

# TempにIntMaxを入れてそれぞれTempと比較する
    scoreboard players set $MinDefense Temporary 2147483647
    scoreboard players operation $MinDefense Temporary < $FireDefense Temporary
    scoreboard players operation $MinDefense Temporary < $WaterDefense Temporary
    scoreboard players operation $MinDefense Temporary < $ThunderDefense Temporary

# セッション開ける
    function lib:array/session/open

# Tempと同じ値の属性耐性をstorageに突っ込む
    execute if score $MinDefense Temporary = $FireDefense Temporary run data modify storage lib: Array append value "Fire"
    execute if score $MinDefense Temporary = $WaterDefense Temporary run data modify storage lib: Arrary append value "Water"
    execute if score $MinDefense Temporary = $ThunderDefense Temporary run data modify storage lib: Array append value "Thunder"

# 2つ以上要素があるならシャッフルする
    execute if data storage lib: Array[1] run function lib:array/shuffle

# 0番目の要素を移しておく
    data modify storage asset:temp Elements set from storage lib: Array[0]

# セッション閉じる
    function lib:array/session/close

# 配列の0番目の要素に応じて攻撃属性を分岐
    execute if data storage asset:temp {Elements:Fire} run function asset:mob/0181.magic_bookshelf/attack/elements/fire
    execute if data storage asset:temp {Elements:Water} run function asset:mob/0181.magic_bookshelf/attack/elements/water
    execute if data storage asset:temp {Elements:Thunder} run function asset:mob/0181.magic_bookshelf/attack/elements/thunder

# リセット
    scoreboard players reset $MinDefense Temporary
    scoreboard players reset $FireDefense
    scoreboard players reset $WaterDefense
    scoreboard players reset $ThunderDefense
    data remove storage asset:temp Elements

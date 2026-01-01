#> asset:object/1155.snowball/hit/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1155/hit

#> Private
# @private
    #declare score_holder $UserID

# 判定がかなり広いが、これは雪玉の割れる位置の関係なのか
# スケルトンなどの敵にヒットすると稀に当たらないため、広く取っておく
# あと少し下側からの判定にしておく

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute positioned ~-1 ~-1.2 ~-1 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=1,dy=1,dz=1,sort=random,limit=1] run function api:damage/
    function api:damage/reset

# super
    function asset:object/super.method

# リセット
    scoreboard players reset $UserID Temporary

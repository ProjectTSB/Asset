#> asset:mob/0372.tutankhamen/tick/skill/coffin/summon
#
# 棺を召喚する
#
# @within function asset:mob/0372.tutankhamen/tick/skill/coffin/

# 配列を作成
    data modify storage asset:context this.CoffinPoints set value [0,1,2,3,4,5,6,7,8]

# どこに棺がいるかチェックする
# 該当箇所に棺があれば対応する要素を配列から削除する
    execute rotated ~ 0 positioned ^ ^ ^7 if entity @e[type=polar_bear,scores={MobID=373..374},distance=..0.01] run data remove storage asset:context this.CoffinPoints 

#> asset:mob/0429.killer_bee_formation/tick/set_model
#
# モデル装着時の処理
#
# @within function asset:mob/0429.killer_bee_formation/tick/

# 演出
    particle cloud ~ ~1.65 ~ 0 0 0 0.2 10 normal @a
    particle flash ~ ~1.65 ~ 0 0 0 0.2 1 normal @a
    playsound entity.item.pickup hostile @a ~ ~ ~ 1 0.7 0

# モデル装着
    item replace entity @s armor.head with stone{CustomModelData:20054}

# ModelsetDelayを-1にして一度しか実行されないように
    data modify storage asset:context this.ModelSetDelay set value -1

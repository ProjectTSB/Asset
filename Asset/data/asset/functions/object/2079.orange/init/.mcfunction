#> asset:object/2079.orange/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2079/init

# ランダムなIDを入れておく
    execute store result entity @s Item.tag.OrangeID int 1 run random value 0..2147483646

# 演出
    playsound entity.item.pickup hostile @a ~ ~ ~ 0.5 1 0

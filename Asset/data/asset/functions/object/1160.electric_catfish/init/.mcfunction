#> asset:object/1160.electric_catfish/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1160/init

# ブロックの中心にtp（召喚時にtpするとinitされない）
    execute align xz run tp @s ~0.5 ~ ~0.5

# item_displayを設定（召喚時のtransformationは反映されない）
    data modify entity @s transformation.scale set value [1.0f, 0.2f, 1.0f]
    data modify entity @s transformation.translation set value [0.0f, 0.1f, 0.0f]

# 演出
    particle poof ~ ~0.5 ~ 0.1 0.1 0.1 0.05 5

    playsound entity.player.hurt neutral @a ~ ~ ~ 1 0.5

#> asset:object/1160.electric_catfish/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1160/init

# ブロックの中心にtp（召喚時にtpするとinitされない）
    execute align xz run tp @s ~0.5 ~ ~0.5

# 演出
    execute align xz run particle poof ~0.5 ~0.5 ~0.5 0.1 0.1 0.1 0.05 5

    playsound entity.player.hurt neutral @a ~ ~ ~ 1 0.5

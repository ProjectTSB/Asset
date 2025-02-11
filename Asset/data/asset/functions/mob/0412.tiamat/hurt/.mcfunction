#> asset:mob/0412.tiamat/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/412/hurt

# 継承元の処理実行
    function asset:mob/super.hurt

# 効果音
    playsound entity.generic.hurt hostile @a ~ ~ ~ 1 1

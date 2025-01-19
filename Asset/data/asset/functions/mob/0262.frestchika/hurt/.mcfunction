#> asset:mob/0262.frestchika/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/262/hurt

# 演出
    playsound minecraft:entity.player.hurt hostile @a ~ ~ ~ 1 1

# スーパーメソッド呼び出し
    function asset:mob/super.hurt

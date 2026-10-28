#> asset:object/1160.electric_catfish/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1160/init

# ブロックの中心にtp（召喚時にtpするとinitされない）
    execute align xz run tp @s ~0.5 ~ ~0.5

# 存在する時間を設定
    execute store result score @s General.Object.Tick run data get storage asset:context this.Ticks

# 攻撃範囲のFieldを設定
    execute store result storage asset:context this.AttackRadius double -0.5 run data get storage asset:context this.AttackRange
    execute store result storage asset:context this.AttackHitbox int 0.9999999999 run data get storage asset:context this.AttackRange

# 演出
    execute align xz run particle poof ~0.5 ~0.5 ~0.5 0.1 0.1 0.1 0.05 5
    playsound entity.player.hurt neutral @a ~ ~ ~ 1 0.5

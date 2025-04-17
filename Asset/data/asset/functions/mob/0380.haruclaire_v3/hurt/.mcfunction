#> asset:mob/0380.haruclaire_v3/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/380/hurt

# 継承元の処理実行
    function asset:mob/super.hurt

# フェーズ変更
    execute if entity @s[tag=!AK.Stat.Latter] run function asset:mob/0380.haruclaire_v3/hurt/check_health

# 演出
    playsound entity.generic.hurt hostile @a ~ ~ ~ 1 1
    particle firework ~ ~1 ~ 0 0 0 0.3 3

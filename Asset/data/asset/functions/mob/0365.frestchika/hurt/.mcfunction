#> asset:mob/0365.frestchika/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/365/hurt

# ヘルスチェック
    execute if entity @s[scores={A5.Phase=1}] run function asset:mob/0365.frestchika/hurt/health_check

# Super!
    function asset:mob/super.hurt

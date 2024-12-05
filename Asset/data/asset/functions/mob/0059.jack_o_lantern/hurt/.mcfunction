#> asset:mob/0059.jack_o_lantern/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/59/hurt

# スーパーメソッド呼び出し
    function asset:mob/super.hurt

# 被ダメ時に自身にTagを付与
    tag @s add 1N.Hurt

# 体力割合チェック
    execute if entity @s[tag=!1N.HealthLess40Per] run function asset:mob/0059.jack_o_lantern/hurt/check_health_per

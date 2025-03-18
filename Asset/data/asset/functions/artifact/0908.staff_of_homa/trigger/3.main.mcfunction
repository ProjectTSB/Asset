#> asset:artifact/0908.staff_of_homa/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0908.staff_of_homa/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare score_holder $Diff
    #declare score_holder $HealthPer

# 攻撃回数カウント
    execute store result score $Diff Temporary run time query gametime
    scoreboard players operation $Diff Temporary -= $P8.LatestUseTick Temporary
    execute unless score $Diff Temporary matches ..50 run scoreboard players reset @s P8.AttackCount
    scoreboard players add @s P8.AttackCount 1

# 体力割合を取得
    function api:entity/player/get_health_per
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100

# 50%以下ならTagをつけておく
    execute if score $HealthPer Temporary matches ..50 run tag @s add HPLess50Per

# ダメージ関連
    function asset:artifact/0908.staff_of_homa/trigger/damage

# 演出等用Object召喚
    function asset:artifact/0908.staff_of_homa/trigger/summon_object

# 6段目なら攻撃回数をリセット
    execute if score @s P8.AttackCount matches 6.. run scoreboard players reset @s P8.AttackCount

# リセット
    scoreboard players reset $HealthPer Temporary
    scoreboard players reset $P8.Damage Temporary
    tag @s remove HPLess50Per

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

# 演出
    playsound block.fire.ambient player @a ~ ~ ~ 0.4 1.3 0
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.5 0.8
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.5 1.2
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 0.5 0.5
    playsound minecraft:block.sculk_shrieker.break player @a ~ ~ ~ 0.4 0.8
    playsound minecraft:block.sculk_shrieker.break player @a ~ ~ ~ 0.4 1.2

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

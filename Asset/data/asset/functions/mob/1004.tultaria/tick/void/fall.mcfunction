#> asset:mob/1004.tultaria/tick/void/fall
#
#
#
# @within function asset:mob/1004.tultaria/tick/void/

# 自身のヘルス割合をチェックし、それで処理を分岐させる
    function api:entity/player/get_health_per
    execute store result score @s Temporary run data get storage api: Return.HealthPer 100

# 浮遊にかかっているかを確認
    data modify storage api: Argument.ID set value 125
    function api:entity/mob/effect/get/from_id

# エフェクトが付与されておらず、ヘルスが31%以上なら、打ち上げ処理を実行する
    execute unless data storage api: Return.Effect if score @s Temporary matches 31.. run function asset:mob/1004.tultaria/tick/void/damaging_levitation

# 演出
    particle dust 0.718 0.188 0.188 1 ~ ~1 ~ 0.3 0.5 0.3 0 5

# 全部終わったのでリセット
    scoreboard players reset @s Temporary

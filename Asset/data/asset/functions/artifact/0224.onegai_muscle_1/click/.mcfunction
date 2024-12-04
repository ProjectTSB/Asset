#> asset:artifact/0224.onegai_muscle_1/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/224/click/

    # 体力を変更
        scoreboard players set $Set Lib 100
        function lib:score_to_health_wrapper/set
    # 効果
        effect give @s strength 10 5 true
        execute if predicate player_manager:is_believe/urban run effect give @s strength 10 1 true
    # 演出
        playsound entity.player.hurt player @a ~ ~ ~ 1 1
        playsound minecraft:entity.zombie_villager.cure player @s ~ ~ ~ 1 2
        particle angry_villager ~ ~1 ~ 0.5 0.5 0.5 0 30 normal @s
    # リセット
        scoreboard players reset @s Temporary
#> asset:mob/0339.twins_sapphiel/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/339/tick

# 対象のanimated javaモデルを紐づけ
    execute store result storage asset:temp 9E.Uid int 1 run scoreboard players get @s 9E.Uid
    function asset:mob/0339.twins_sapphiel/tick/app/1.start_link_model.m with storage asset:temp 9E
    data remove storage asset:temp 9E

# 耐性付与
    execute if entity @s[tag=9F.State.IsGuard] run function asset:mob/0339.twins_sapphiel/tick/give_resistance

# タイマー処理
    # アニメーション用タイマー増加
        scoreboard players add @s 9F.AnimationTimer 1
    # 与ダメージクールダウン減少
        execute if score @s 9F.DamageCooldown matches 1.. run scoreboard players remove @s 9F.DamageCooldown 1

# スキル選択
    execute if score @s 9F.AnimationTimer matches 0 run function asset:mob/0339.twins_sapphiel/tick/app/skill/select/1.main

# スキルイベントハンドラ
    execute if score @s 9F.AnimationTimer matches 1.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# animated javaモデルを自分の位置に移動
    execute at @s rotated ~ 0 run tp @e[type=item_display,tag=9F.ModelRoot.Target,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 紐づけ終了
    tag @e[type=item_display,tag=9F.ModelRoot.Target] remove 9F.ModelRoot.Target

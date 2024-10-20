#> asset:mob/0301.sinful_thoughts/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/301/tick

#> private
# @private
    #declare score_holder $Count

# スコアを増やす
    scoreboard players add @s 8D.Tick 1

# もし初回スコアなら最初のモーションが入る
    execute if entity @s[tag=8D.FirstMotion] if score @s 8D.Tick matches -100..-1 run function asset:mob/0301.sinful_thoughts/tick/first_motion


# プレイヤーが周囲にいないのに時間が着てしまった場合。スコアを戻す
    execute if score @s 8D.Tick matches 0 unless entity @p[gamemode=!spectator,distance=..100] run scoreboard players set @s 8D.Tick -5

# その後発動するスキル
# プレイヤーが周囲にいたらスキル選択
    execute if score @s 8D.Tick matches 0 run function asset:mob/0301.sinful_thoughts/tick/skill_select

# 選択したスキル発動
    execute if score @s 8D.Tick matches 0.. run function asset:mob/0301.sinful_thoughts/tick/skill_active

# 以下エラー時の処理
# もし同一座標に2体存在した場合瞬時にteleportする
    # 数のカウント
        execute store result score $Count Temporary if entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01]
    # もしいたらテレポ
        execute if score $Count Temporary matches 2.. run function asset:mob/0301.sinful_thoughts/tick/move/spread
    # スコアも一応戻す
        execute if score $Count Temporary matches 2.. run scoreboard players reset @s 8D.Tick
    # リセット
        scoreboard players reset $Count

# もしアマスタがどっかいってしまったら(tpの関係でatが無いと死ぬ)
    execute at @s unless entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01] run function asset:mob/0301.sinful_thoughts/tick/armorstand_respawn

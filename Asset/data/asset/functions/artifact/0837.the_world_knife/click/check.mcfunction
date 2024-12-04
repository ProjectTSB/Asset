#> asset:artifact/0837.the_world_knife/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/837/click/check

#> Private
# @private
    #declare score_holder $Count

# 数みる
    # 数のカウント
        execute store result score $Count Temporary if entity @e[type=armor_stand,tag=N9.Knife,distance=..100]
    # もしいたらtagけす
        execute if score $Count Temporary matches 30.. run tag @s remove CanUsed
    # リセット
        scoreboard players reset $Count Temporary

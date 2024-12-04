#> asset:artifact/0737.summer_festival_of_remembrance/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/737/click/


# 花火の処理を実行するエンティティを召喚
    summon marker ~ ~ ~ {Tags:["KH.FireworkCore","Object"]}

# ループ開始
    schedule function asset:artifact/0737.summer_festival_of_remembrance/click/firework_process/core/loop 1t replace
#> asset:artifact/0566.great_sage_helmet/heal/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/566/heal/

# 確率で話しかけてくる
    execute if predicate lib:random_pass_per/5 run function asset:artifact/0566.great_sage_helmet/heal/talk

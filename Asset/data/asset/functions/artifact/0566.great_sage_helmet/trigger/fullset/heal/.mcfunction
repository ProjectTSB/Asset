#> asset:artifact/0566.great_sage_helmet/trigger/fullset/heal/
#
#
#
# @within function asset:artifact/0566.great_sage_helmet/trigger/fullset/heal/check

# 確率で話しかけてくる
    execute if predicate lib:random_pass_per/5 run function asset:artifact/0566.great_sage_helmet/trigger/fullset/heal/talk

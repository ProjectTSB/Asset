#> asset:mob/1004.tultaria/tick/base_move/skill_select/element/select
#
# 属性チェンジ
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_select/main

# 属性をランダムに選択
# TODO: あとで個人用ストレージにしておくこと
    # 要素がない場合は再付与
        execute if data storage rw_storage: Element{List:[]} run data modify storage rw_storage: Element.List set value [Fire,Water,Thunder]
    # ストレージの要素数を取得
        execute store result storage rw_storage: Element.Count int 1 run data get storage rw_storage: Element.List
    # 取得した要素数を使ってランダムに属性を選ぶ
        execute unless data storage rw_storage: Element{Count:1} run function asset:mob/1004.tultaria/tick/base_move/skill_select/element/roll.m with storage rw_storage: Element
    # 要素数１個しかないとき
        execute if data storage rw_storage: Element{Count:1} run function asset:mob/1004.tultaria/tick/base_move/skill_select/element/only_one_element with storage rw_storage: Element

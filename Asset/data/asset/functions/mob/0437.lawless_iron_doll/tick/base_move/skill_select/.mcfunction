#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/
#
# これを呼び出し元で"C5.InAction"のチェックを行っているのにもう一度行う理由は、コレしないと全部一気に実行されるからです
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/

# お疲れタグが付いていたら歩行。
    execute if entity @s[tag=C5.Exhausted,tag=!C5.InAction] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/force_walk

# ダッシュ回数溜まってたら突進。
    execute if score @s[tag=!C5.CycleReset,tag=!C5.InAction] C5.Count.Move matches 3 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/force_dash

# 前回の発動で技のリストが空になってないなら、普通に技を出す。
    execute if entity @s[tag=!C5.CycleReset,tag=!C5.InAction] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/from_list/

# リストが空だったら、サイクル再開の処理をスタート
    execute if entity @s[tag=C5.CycleReset,tag=!C5.InAction] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/cycle_reset/

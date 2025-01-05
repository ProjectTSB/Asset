#> asset:mob/0380.haruclaire_v3/tick/util/remove_all_tag
#
# 他エンティティに付与しているタグをすべて消去する
#
# @within asset:mob/0380.haruclaire_v3/tick/**
# @within asset:mob/0380.haruclaire_v3/death/
# @within asset:mob/0380.haruclaire_v3/remove/

# ターゲット用タグ
    tag @a remove AK.MainTarget
    # tag @a remove AK.AttackTarget
    # tag @a remove AK.HateTarget

# オブジェクト処理用タグ
    # tag @a remove AK.Temp.MoveEnd

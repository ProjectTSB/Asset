#> asset:mob/0380.haruclaire_v3/tick/util/remove_all_tag
#
# 他エンティティに付与しているタグをすべて消去する
#
# @within asset:mob/0380.haruclaire_v3/tick/**
# @within asset:mob/0380.haruclaire_v3/death/
# @within asset:mob/0380.haruclaire_v3/remove/

# ターゲット用タグ
    tag @a[tag=AK.MainTarget] remove AK.MainTarget
    # tag @a[tag=AK.MainTarget] remove AK.AttackTarget
    # tag @a[tag=AK.MainTarget] remove AK.HateTarget

# オブジェクト処理用タグ
    # tag @a[tag=AK.Temp.MoveEnd] remove AK.Temp.MoveEnd

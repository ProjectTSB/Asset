#> asset:mob/0410.heiloang/tick/util/remove_all_tag
#
# 他エンティティに付与しているタグをすべて消去する
#
# @within asset:mob/0410.heiloang/tick/**
# @within asset:mob/0410.heiloang/death/
# @within asset:mob/0410.heiloang/remove/

# ターゲット用タグ
    tag @a remove BE.MainTarget
    tag @a remove BE.AttackTarget
    tag @a remove BE.HateTarget

# オブジェクト処理用タグ
    tag @a remove BE.Temp.MoveEnd

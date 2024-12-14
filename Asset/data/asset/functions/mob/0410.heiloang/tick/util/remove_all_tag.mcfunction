#> asset:mob/0410.heiloang/tick/util/remove_all_tag
#
# 他エンティティに付与しているタグをすべて消去する
#
# @within asset:mob/0410.heiloang/tick/**

# ターゲット用タグ
    tag @a remove BE.MainTarget
    tag @a remove BE.AttackTarget

# オブジェクト処理用タグ
    tag @a remove BE.Temp.MoveEnd

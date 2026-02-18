#> asset:mob/0410.heiloang/tick/util/remove_all_tag
#
# 他エンティティに付与しているタグをすべて消去する
#
# @within asset:mob/0410.heiloang/tick/**
# @within asset:mob/0410.heiloang/death/
# @within asset:mob/0410.heiloang/remove/

# ターゲット用タグ
    tag @a[tag=BE.MainTarget] remove BE.MainTarget
    tag @a[tag=BE.AttackTarget] remove BE.AttackTarget
    tag @a[tag=BE.HateTarget] remove BE.HateTarget

# オブジェクト処理用タグ
    tag @e[type=item_display,tag=BE.Temp.MoveEnd,distance=..80] remove BE.Temp.MoveEnd

#> asset:mob/0411.behemoth/tick/util/remove_all_tag
#
# 他エンティティに付与しているタグをすべて消去する
#
# @within asset:mob/0411.behemoth/tick/**
# @within asset:mob/0411.behemoth/death/
# @within asset:mob/0411.behemoth/remove/

# ターゲット用タグ
    tag @a[tag=BF.MainTarget] remove BF.MainTarget
    tag @a[tag=BF.FlareTarget] remove BF.FlareTarget

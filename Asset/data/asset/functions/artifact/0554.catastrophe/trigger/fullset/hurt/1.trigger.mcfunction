#> asset:artifact/0554.catastrophe/trigger/fullset/hurt/1.trigger
#
# フルセット時の被ダメトリガー
#
# @within function asset:artifact/damage/from_entity/

# フルセット状態でのみ発動
    execute if entity @s[tag=FE.Fullset] run function asset:artifact/0554.catastrophe/trigger/fullset/hurt/2.main

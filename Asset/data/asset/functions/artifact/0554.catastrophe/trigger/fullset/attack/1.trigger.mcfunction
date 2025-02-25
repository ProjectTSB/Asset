#> asset:artifact/0554.catastrophe/trigger/fullset/attack/1.trigger
#
# フルセット時の攻撃トリガー
#
# @within tag/function asset:artifact/attack

# フルセット状態でのみ発動
    execute if entity @s[tag=FE.Fullset] run function asset:artifact/0554.catastrophe/trigger/fullset/attack/2.check

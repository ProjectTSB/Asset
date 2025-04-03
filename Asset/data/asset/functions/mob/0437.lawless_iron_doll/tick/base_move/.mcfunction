#> asset:mob/0437.lawless_iron_doll/tick/base_move/
#
# 基本動作。攻撃など。
#
# @within function asset:mob/0437.lawless_iron_doll/tick/

# 行動中じゃないなら、歩行周りの処理を行う
    execute if entity @s[tag=!C5.InAction] run function asset:mob/0437.lawless_iron_doll/tick/base_move/walk/

# プレイヤーが周囲にいたらスキル選択
    execute if score @s[tag=!C5.CycleReset,tag=!C5.InAction,scores={C5.Phase=1}] General.Mob.Tick matches 60.. if entity @p[distance=..64] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/select/

# 第2形態でのスキル選択、発生ちょっと早くてワープもする
#    execute if score @s[tag=!C5.CycleReset,tag=!C5.InAction,scores={C5.Phase=2..}] General.Mob.Tick matches 0 run function asset:mob/0437.lawless_iron_doll/tick/base_move/teleport/
#    execute if score @s[tag=!C5.CycleReset,tag=!C5.InAction,scores={C5.Phase=2..}] General.Mob.Tick matches 10.. if entity @p[distance=..64] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/select/

# 技が一周していたら、確定で動作を選択
    execute if score @s[tag=C5.CycleReset,tag=!C5.InAction] General.Mob.Tick matches 10.. run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/select/cycle_reset

# そこらのプレイヤーより上にいて、行動中じゃない場合、ゆっくりと落ちていく
    execute if entity @s[tag=!C5.InAction] positioned ~-50 ~2 ~-50 unless entity @a[dx=99,dy=50,dz=99] at @s if block ~ ~-0.1 ~ #lib:no_collision run tp @s ~ ~-0.1 ~

# 選択したスキル発動
    execute if entity @s[tag=C5.InAction] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/active

# スタック回避
    execute if predicate api:area/is_breakable run function asset:mob/0437.lawless_iron_doll/tick/base_move/stuck_revenge/

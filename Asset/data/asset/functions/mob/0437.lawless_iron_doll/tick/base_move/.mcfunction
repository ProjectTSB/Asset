#> asset:mob/0437.lawless_iron_doll/tick/base_move/
#
# 基本動作。攻撃など。
#
# @within function asset:mob/0437.lawless_iron_doll/tick/

# 行動中じゃないなら、歩行周りの処理を行う
    execute if entity @s[tag=!C5.InAction] run function asset:mob/0437.lawless_iron_doll/tick/base_move/walk/tick

# 臆病風エリア！
    function asset:mob/0437.lawless_iron_doll/tick/base_move/chicken_out/boarder

# プレイヤーが周囲にいたらスキル選択
    execute if score @s[tag=!C5.CycleReset,tag=!C5.InAction] General.Mob.Tick matches 20.. if entity @p[distance=..64] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/select/

# 技が一周していたら、確定で動作を選択
    execute if score @s[tag=C5.CycleReset,tag=!C5.InAction] General.Mob.Tick matches 10.. run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/select/cycle_reset/

# 行動中じゃないかつ、足元になにもないときは、足元にパーティクルが出てくる
    execute if entity @s[tag=!C5.InAction] if block ~ ~-0.25 ~ #lib:no_collision run particle minecraft:enchant ~ ~ ~ 0.7 0 0.7 0 30 force @a[distance=..32]

# 選択したスキル発動
    execute if entity @s[tag=C5.InAction] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/active

# スタック回避
    execute if predicate api:area/is_breakable run function asset:mob/0437.lawless_iron_doll/tick/base_move/stuck_revenge/

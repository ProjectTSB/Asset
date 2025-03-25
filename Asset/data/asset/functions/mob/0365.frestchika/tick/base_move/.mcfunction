#> asset:mob/0365.frestchika/tick/base_move/
#
# 基本動作。攻撃など。
#
# @within function asset:mob/0365.frestchika/tick/

# プレイヤーが周囲にいたらスキル選択
    execute if score @s[tag=!A5.CycleReset,tag=!A5.InAction,scores={A5.Phase=1}] General.Mob.Tick matches 20.. if entity @p[distance=..64] run function asset:mob/0365.frestchika/tick/base_move/skill/select/

# 第2形態でのスキル選択、発生ちょっと早くてワープもする
    execute if score @s[tag=!A5.CycleReset,tag=!A5.InAction,scores={A5.Phase=2..}] General.Mob.Tick matches 0 run function asset:mob/0365.frestchika/tick/base_move/teleport/
    execute if score @s[tag=!A5.CycleReset,tag=!A5.InAction,scores={A5.Phase=2..}] General.Mob.Tick matches 10.. if entity @p[distance=..64] run function asset:mob/0365.frestchika/tick/base_move/skill/select/

# 技が一瞬してたら確定で動作を選択
    execute if score @s[tag=A5.CycleReset,tag=!A5.InAction] General.Mob.Tick matches 10.. run function asset:mob/0365.frestchika/tick/base_move/skill/select/cycle_reset

# そこらのプレイヤーより上にいて、行動中じゃない場合、ゆっくりと落ちていく
    execute if entity @s[tag=!A5.InAction] positioned ~-50 ~2 ~-50 unless entity @a[dx=99,dy=50,dz=99] at @s if block ~ ~-0.05 ~ #asset:mob/0365.frestchika/no_collision run tp @s ~ ~-0.05 ~

# 選択したスキル発動
    execute if entity @s[tag=A5.InAction] run function asset:mob/0365.frestchika/tick/base_move/skill/active

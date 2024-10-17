#> asset:mob/1004.tultaria/tick/base_move/
#
# ベース動作。他モブでいうTickに相当
#
# @within function asset:mob/1004.tultaria/tick/

# こっち向く
    execute if entity @s[tag=!RW.InAction] unless entity @s[scores={RW.FakeInertia=0..}] facing entity @p feet run tp @s ~ ~ ~ ~ ~

# 属性チェンジ可能であれば属性を選択
    execute if score @s[tag=RW.CanElementChange,tag=!RW.InAction] RW.Tick matches 20 if entity @p[distance=..100] run function asset:mob/1004.tultaria/tick/base_move/element_select/

# プレイヤーが周囲にいたらスキル選択
    execute if score @s[tag=!RW.InAction] RW.Tick matches 40 if entity @p[distance=..100] run function asset:mob/1004.tultaria/tick/base_move/skill_select/

# プレイヤーが周囲にいないのに時間がきてしまった場合。スコアを戻す
    execute if score @s RW.Tick matches 40.. unless entity @p[gamemode=!spectator,distance=..100] run scoreboard players set @s RW.Tick 0

# 選択したスキル発動
    execute if entity @s[tag=RW.InAction] run function asset:mob/1004.tultaria/tick/base_move/skill_active

# 移動タグ付きなら移動
    execute if entity @s[tag=RW.Move] run function asset:mob/1004.tultaria/tick/move/teleport/move_to_marker

# リセットからの復帰時に待機アニメを再生
    execute if score @s RW.Tick matches -1 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/neutral_air/play

## 嘘慣性
    # 下が空気なら通常実行
        execute if entity @s[tag=!RW.DisableInertia,scores={RW.FakeInertia=0..}] if block ~ ~-1 ~ #lib:no_collision run function asset:mob/1004.tultaria/tick/base_move/fake_inertia
    # 下が空気じゃないなら縦軸を無視
        execute if entity @s[tag=!RW.DisableInertia,scores={RW.FakeInertia=0..}] unless block ~ ~-1 ~ #lib:no_collision rotated ~ 0 run function asset:mob/1004.tultaria/tick/base_move/fake_inertia

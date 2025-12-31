#> asset:mob/0311.blazing_inferno/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/311/tick

# 最寄りのモデルのRootにタグ付与
    tag @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] add 8N.ModelRoot.Target

# モデルをこっちに向かす
    execute if entity @s[tag=8N.PlayerFacing] as @e[type=item_display,tag=8N.ModelRoot.Target,sort=nearest,limit=1] facing entity @p[gamemode=!spectator,distance=..64] feet run tp @s ~ ~ ~ ~ 0

# 最寄りのモデルを自分と同じ向きにする
    execute as @e[type=item_display,tag=8N.ModelRoot.Target,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 0

# こっちを向く
    execute if entity @s[tag=8N.PlayerFacing] facing entity @p[gamemode=!spectator,distance=..64] feet run tp @s ~ ~ ~ ~ ~

# Tick加算
    scoreboard players add @s General.Mob.Tick 1

# 動作
    # イントロ
        execute if entity @s[tag=8N.Moveset.Intro] run function asset:mob/0311.blazing_inferno/tick/intro/
    # 通常動作
        execute if entity @s[tag=8N.Moveset.BaseMove] run function asset:mob/0311.blazing_inferno/tick/base_move/
    # フェイズ移行
        execute if entity @s[tag=8N.Moveset.Transition] run function asset:mob/0311.blazing_inferno/tick/phase_transition/

# リセット
    tag @e[type=item_display,tag=8N.ModelRoot.Target,sort=nearest,limit=1] remove 8N.ModelRoot.Target

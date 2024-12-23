#> asset:mob/0311.blazing_inferno/tick/intro/battle_start
#
# これを実行すると戦闘モードになる
#
# @within function asset:mob/0311.blazing_inferno/tick/intro/

# タグ付与
    tag @s remove 8N.Moveset.Intro
    tag @s add 8N.Moveset.BaseMove
    tag @s add 8N.RailMove
    tag @s add 8N.Turn.Clockwise

# スコアリセット
    scoreboard players reset @s General.Mob.Tick

# 無敵解除
    tag @s remove Uninterferable
    data modify entity @s Invulnerable set value 0b

# テレポート演出
    execute at @s run function asset:mob/0311.blazing_inferno/tick/base_move/teleport_vfx

# テレポート
    execute at @e[type=marker,tag=8N.Marker.SpawnPoint,distance=..64,sort=nearest,limit=1] rotated as @s rotated ~ 0 run tp @s ^ ^1 ^-15 ~ ~

# テレポート演出
    execute at @s run function asset:mob/0311.blazing_inferno/tick/base_move/teleport_vfx

# アニメーション
    execute as @e[type=item_display,tag=8N.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/neutral_fighting/tween {to_frame: 0, duration: 5}

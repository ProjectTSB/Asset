#> asset:mob/1004.tultaria/tick/skill/spread_shot/tick
#
# プレイヤーとの距離を一定に保ちつつ弾幕攻撃
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

# 向き決定
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/spread_shot/select_direction

# テレポート
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/base_move/teleport/vfx

# モデルをプレイヤーに向ける
    execute if score @s RW.Tick matches 0..60 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] facing entity @p eyes run tp @s ~ ~ ~ ~ 0

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s RW.Tick

# 射撃
    execute if score @s[tag=RW.Direction.Left] RW.Tick matches 0..60 at @p as @s rotated as @s rotated ~ 0 run tp @s ^ ^ ^-12 ~-2.5 ~
    execute if score @s[tag=RW.Direction.Right] RW.Tick matches 0..60 at @p as @s rotated as @s rotated ~ 0 run tp @s ^ ^ ^-12 ~2.5 ~
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 if score @s RW.Tick matches 20..60 positioned ~ ~1.2 ~ facing entity @p eyes run function asset:mob/1004.tultaria/tick/skill/spread_shot/shoot

# テレポート
    execute if score @s RW.Tick matches 0 at @s run function asset:mob/1004.tultaria/tick/base_move/teleport/vfx

# リセット
    execute if score @s RW.Tick matches 100 run function asset:mob/1004.tultaria/tick/base_move/reset
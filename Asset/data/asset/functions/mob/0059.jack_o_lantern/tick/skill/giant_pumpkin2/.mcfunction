#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/
#
# 巨大カボチャ転がし2のメイン処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill_branch

# このmcfのコマンド全てはスポーンマーカーの位置で実行される

# 最初のTickでのみ実行
    execute if entity @s[scores={General.Mob.Tick=0}] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/first_tick

# 回転
    execute if entity @s[scores={General.Mob.Tick=..280}] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/rotate

# 吸い込み関連
    # 14x4x14より外のプレイヤーを吸い込む
        execute as @a[gamemode=!spectator,distance=..20] positioned ~-7 ~ ~-7 unless entity @s[dx=13,dy=3,dz=13] at @s facing entity @e[type=marker,tag=1N.SpawnMarker,distance=..64] eyes run tp @s ^ ^ ^0.5

    # 吸い込み範囲を視覚的に表示
        scoreboard players operation $Interval Temporary = @s General.Mob.Tick
        scoreboard players operation $Interval Temporary %= $10 Const
        execute if score $Interval Temporary matches 0 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/vfx
        scoreboard players reset $Interval Temporary

# 攻撃処理
    # Hard以下
        execute if predicate api:global_vars/difficulty/max/2_hard run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/difficulty/max_hard

    # Blessless
        execute if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/difficulty/blessless

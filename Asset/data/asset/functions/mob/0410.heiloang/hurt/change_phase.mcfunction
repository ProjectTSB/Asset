#> asset:mob/0410.heiloang/hurt/change_phase
#
# Mobのダメージ時の処理
#
# @within function asset:mob/0410.heiloang/hurt/

# フェーズ移行
    scoreboard players add @s BE.Phase 1
    scoreboard players set @s BE.ActCount 0
    scoreboard players set @s BE.Idle.Count 0

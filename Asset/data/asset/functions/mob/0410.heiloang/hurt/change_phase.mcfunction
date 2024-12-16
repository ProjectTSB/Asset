#> asset:mob/0410.heiloang/hurt/change_phase
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/410/hurt

# フェーズ移行
    scoreboard players add @s BE.Phase 1
    scoreboard players set @s BE.ActCount 1
    scoreboard players set @s BE.Idle.Count 1

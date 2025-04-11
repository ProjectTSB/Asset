#> asset:mob/0410.heiloang/tick/act/phase_3/change_phase
#
# フェーズ3
#
# @within
#    function asset:mob/0410.heiloang/tick/act/phase_3/**
#    function asset:mob/0410.heiloang/tick/event/rage/end

# フェーズ移行
    scoreboard players add @s BE.Phase 1
    scoreboard players set @s BE.ActCount 0
    scoreboard players set @s BE.Idle.Count 0

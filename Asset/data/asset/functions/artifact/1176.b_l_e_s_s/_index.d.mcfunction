#> asset:artifact/1176.b_l_e_s_s/_index.d
#
# 
#
# @within function asset:artifact/1176.b_l_e_s_s/trigger/select_target

#> target_check
# @within
#   function asset:artifact/1176.b_l_e_s_s/trigger/select_target
#   function asset:artifact/1176.b_l_e_s_s/trigger/block_check
    #declare tag WO.Candidate
    #declare tag WO.Target

#> block_check
# @within
#   function asset:artifact/1176.b_l_e_s_s/trigger/block_check
#   function asset:artifact/1176.b_l_e_s_s/trigger/block_check_recursive
    #declare score_holder $WO.BlockDetect
    #declare score_holder $WO.LoopEnd
    #declare score_holder $WO.LoopNum

#> target_info
# @within function asset:artifact/1176.b_l_e_s_s/trigger/**
    #declare score_holder $WO.TargetID

#> asset:artifact/1176.b_l_e_s_s/_index.d
#
#
#
# @within function asset:artifact/1176.b_l_e_s_s/trigger/select_target

#> item_count
# @within function asset:artifact/1176.b_l_e_s_s/trigger/2.check_condition
    #declare score_holder $A1176.ItemCount

#> target_check
# @within function asset:artifact/1176.b_l_e_s_s/trigger/select_target
#   asset:artifact/1176.b_l_e_s_s/trigger/block_check
    #declare tag A1176.Candidate
    #declare tag A1176.Target

#> block_check
# @within function
#   asset:artifact/1176.b_l_e_s_s/trigger/block_check
#   asset:artifact/1176.b_l_e_s_s/trigger/block_check_recursive
    #declare score_holder $A1176.BlockDetect
    #declare score_holder $A1176.LoopEnd
    #declare score_holder $A1176.LoopNum

#> target_info
# @within function asset:artifact/1176.b_l_e_s_s/trigger/**
    #declare score_holder $A1176.TargetID

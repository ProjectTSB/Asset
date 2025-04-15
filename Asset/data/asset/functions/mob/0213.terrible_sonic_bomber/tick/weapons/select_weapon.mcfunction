#> asset:mob/0213.terrible_sonic_bomber/tick/weapons/select_weapon
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/motions/attack_motion_prepare

#> prv
# @private
    #declare score_holder $5X.CandCount Temporary


# 武器候補リスト作成
    function asset:mob/0213.terrible_sonic_bomber/tick/weapons/make_weapon_candidates

# リストから武器をランダム選択
    execute store result storage asset:temp args.CandCount int 1 if data storage asset:temp action.Candidates[]
    function asset:mob/0213.terrible_sonic_bomber/tick/weapons/pick_weapon.m with storage asset:temp args

# reset
    data remove storage asset:temp args

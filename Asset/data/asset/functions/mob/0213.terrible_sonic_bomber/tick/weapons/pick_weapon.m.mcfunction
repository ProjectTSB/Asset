#> asset:mob/0213.terrible_sonic_bomber/tick/weapons/pick_weapon.m
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/weapons/select_weapon

#> prv
# @private
    #declare score_holder $5X.Random Temporary

# セッション開始
    function lib:array/session/open

# 引き抜くindex決定、引数段階で1引く書き方はめんどくさいので乱数引いてから1引く    
    $execute store result score $5X.Random Temporary run random value 1..$(CandCount)
    data modify storage lib: Picks set value [0]
    execute store result storage lib: Picks[0] int 1 run scoreboard players remove $5X.Random Temporary 1

# 抜き取り
    data modify storage lib: Array set from storage asset:temp action.Candidates
    function lib:array/picks
    data modify storage asset:context Action.Selected set from storage lib: Elements[0].Cand
        #tellraw @p [{"nbt":"action.Candidates","storage":"asset:temp"}]
        #tellraw @p [{"nbt":"Action.Selected","storage":"asset:context"}]
        #tellraw @p [{"nbt":"Action.LastUse","storage":"asset:context"}]

# リセット
    function lib:array/session/close
    scoreboard players reset $5X.Random Temporary

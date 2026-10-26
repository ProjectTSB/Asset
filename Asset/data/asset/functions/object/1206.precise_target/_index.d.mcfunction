#> asset:object/1206.precise_target/_index.d
# @private

#> tag
# @within function asset:object/1206.precise_target/**
    #declare tag PreCise.Owner
    #declare tag PreCise.Moving
    #declare tag PreCise.Aimed
    #declare tag PreCise.Placing

#> tag
# @within function
#   asset:object/1206.precise_target/**
#   asset:artifact/1681.pre_cise/**
#   asset:artifact/1682.pre_cise_empty/**
    #declare tag PreCise.Target

#> tag
# @within function
#   asset:object/1206.precise_target/**
#   asset:artifact/1681.pre_cise/**
    #declare tag PreCise.Center

#> tag
# @within function
#   asset:object/1206.precise_target/**
#   asset:artifact/1681.pre_cise/**
    #declare tag PreCise.Source1681

#> tag
# @within function
#   asset:object/1206.precise_target/**
#   asset:artifact/1682.pre_cise_empty/**
    #declare tag PreCise.Source1682

#> score_holder
# @within function asset:object/1206.precise_target/**
    #declare score_holder $UserID
    #declare score_holder $Alive
    #declare score_holder $MobUUID
    #declare score_holder $Attempts
    #declare score_holder $Close
    #declare score_holder $X
    #declare score_holder $Y

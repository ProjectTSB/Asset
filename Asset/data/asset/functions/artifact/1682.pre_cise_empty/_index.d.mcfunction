#> asset:artifact/1682.pre_cise_empty/_index.d
# @private

#> tag
# @within function asset:artifact/1682.pre_cise_empty/**
    #declare tag PreCise.Hit
    #declare tag PreCise.Owner
    #declare tag PreCise.Moving
    #declare tag PreCise.Rotation

#> tag
# @within function
#   asset:artifact/1682.pre_cise_empty/**
#   asset:object/1206.precise_target/**
    #declare tag PreCise.Target

#> tag
# @within function
#   asset:artifact/1682.pre_cise_empty/**
#   asset:object/1207.big_precise/**
    #declare tag PreCise.BigPrecise

#> tag
# @within function
#   asset:artifact/1682.pre_cise_empty/**
#   asset:object/1206.precise_target/**
#   asset:object/1207.big_precise/**
    #declare tag PreCise.Source1682

#> score_holder
# @within function asset:artifact/1682.pre_cise_empty/**
    #declare score_holder $UserID
    #declare score_holder $Hit
    #declare score_holder $BigExists
    #declare score_holder $TargetExists
    #declare score_holder $XMin
    #declare score_holder $XSpan
    #declare score_holder $X
    #declare score_holder $Y

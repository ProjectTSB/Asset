#> asset:artifact/1681.pre_cise/_index.d
# @private

#> tag
# @within function asset:artifact/1681.pre_cise/**
    #declare tag PreCise.Hit
    #declare tag PreCise.Owner
    #declare tag PreCise.Moving
    #declare tag PreCise.Candidate
    #declare tag PreCise.Seen
    #declare tag PreCise.Aimed
    #declare tag PreCise.Landing

#> tag
# @within function
#   asset:artifact/1681.pre_cise/**
#   asset:object/1206.precise_target/**
    #declare tag PreCise.Target
    #declare tag PreCise.Center

#> tag
# @within function
#   asset:artifact/1681.pre_cise/**
#   asset:object/1207.big_precise/**
    #declare tag PreCise.BigPrecise

#> tag
# @within function
#   asset:artifact/1681.pre_cise/**
#   asset:object/1206.precise_target/**
#   asset:object/1207.big_precise/**
    #declare tag PreCise.Source1681

#> score_holder
# @within function asset:artifact/1681.pre_cise/**
    #declare score_holder $UserID
    #declare score_holder $Hit
    #declare score_holder $BigExists
    #declare score_holder $TargetExists
    #declare score_holder $Changed
    #declare score_holder $Prev
    #declare score_holder $MobUUID
    #declare score_holder $Visible
    #declare score_holder $Steps
    #declare score_holder $Landing

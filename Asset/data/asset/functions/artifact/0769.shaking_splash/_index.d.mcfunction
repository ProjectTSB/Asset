#> asset:artifact/0769.shaking_splash/_index.d
# @private

#> 弾に持たせるTag
# @within function
#   asset:artifact/0769.shaking_splash/4.shoot
#   asset:artifact/0769.shaking_splash/rejoin_process
#   asset:artifact/0769.shaking_splash/bullet/**
    #declare tag LD.Bullet

#> Init Tag
# @within function asset:artifact/0769.shaking_splash/4.shoot
    #declare tag LD.Init

#> ビームで使うTag
# @within function
#   asset:artifact/0769.shaking_splash/5.beam
#   asset:artifact/0769.shaking_splash/beam_recursive
    #declare tag LandingTarget

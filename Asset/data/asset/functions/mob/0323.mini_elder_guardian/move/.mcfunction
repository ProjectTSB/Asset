#> asset:mob/0323.mini_elder_guardian/move/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/323/move

# 攻撃中ではないかつHurtTime:0でなら移動
    execute if data storage asset:context this{AttackMode:false,HurtTime:-1} run function asset:mob/super.method


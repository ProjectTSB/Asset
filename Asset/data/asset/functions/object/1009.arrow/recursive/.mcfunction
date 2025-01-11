#> asset:object/1009.arrow/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1009/recursive

execute if data storage asset:context this{ShowCritParticle:true} run particle crit ~ ~ ~ 0 0 0 0.05 1

function asset:object/super.method

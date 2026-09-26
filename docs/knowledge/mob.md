# Mob と AJ

まず [型・インスタンス・継承モデル](object-model.md) を読む。Mob は `Asset/data/asset/functions/mob/<4桁ID>.<name>/` にある型定義とメソッドの集合で、親の Field やメソッドを継承できる。個別ディレクトリに関数がないことを、振る舞いがないことと解釈しない。

`register.mcfunction` は `storage asset:mob` に親からの定義を取り込み、ID、Type、Health 等の型情報と既定 Field を組み立てる。生成 API から呼び出される型側の summon／init と、生成を要求する呼出側を区別する。tick／attack／hurt 等も ID alias と継承探索を通じて呼ばれ、親の振る舞いを引き継ぐ場合と子で override する場合がある。`attack`／`hurt` のイベント入力は `asset:context Attack/Hurt` であり、個体 Field とは別である。

Wiki の [Mob 作成手順](https://github.com/ProjectTSB/TheSkyBlessing/wiki/create-mob) にある `summon/2.summon` 中心の説明は旧テンプレートである。現行 v3 型は `register` と alias dispatch を入口に読み、旧形式が残る対象だけ個別に旧経路を追う。一方、Wiki の Attack/Hurt における `Victim`／`Attacker` 一時 tag は現行にも残っている。[Attack handler](https://github.com/ProjectTSB/TheSkyBlessing/blob/f88cdd5bcb2216d24b26e48684f4a7951a686c94/TheSkyBlessing/data/asset_manager/functions/mob/triggers/attack/foreach.mcfunction) と [Hurt handler](https://github.com/ProjectTSB/TheSkyBlessing/blob/f88cdd5bcb2216d24b26e48684f4a7951a686c94/TheSkyBlessing/data/asset_manager/functions/mob/triggers/hurt/foreach.mcfunction) は、それに加えて詳細なイベント入力を `asset:context Attack/Hurt` に展開する。tag と payload は併存する。

`enroll_pool.mcfunction` は `# @within tag/function asset:mob/enroll_pool` の形で pool に ID を append する。pool への参加と召喚時のクラス定義の構築は別である。`load.mcfunction` は `tag/function asset:mob/load` から呼ばれる。個体 Field は OhMyDat の `MobField` に保存され、イベント中は本体が `asset:context this.*` に展開して処理後に書き戻す。時間経過は `General.Mob.Tick` 等の score と組み合わせる。

AJ 演出は `animated_java` のタグ・名前空間を参照する既存 mob（例 `0301.karmic`）に倣い、reset、pause、link のライフサイクルを壊さない。継承元が担う初期化・終了処理も読み、子の override を追加するときは必要な `super.*` を維持する。`scripts/mob_upgrade_v3.scala.sc` は旧形式から register/alias と trigger を生成・更新する移行用スクリプトであり、すべての型定義が生成物という意味ではない。移行時の作用先は [生成処理の文書](runtime-and-tools.md) を確認する。

AJ のモデル関数を optional に登録する `required:false` は現行でも使われている。Asset-AnimatedJava の [global/root/on_load.json](https://github.com/ProjectTSB/Asset-AnimatedJava/blob/e48a116501b931a6688d5bd77e8f60c82de27ffa/AnimatedJava/data/animated_java/tags/functions/global/root/on_load.json) と [global/on_load.json](https://github.com/ProjectTSB/Asset-AnimatedJava/blob/e48a116501b931a6688d5bd77e8f60c82de27ffa/AnimatedJava/data/animated_java/tags/functions/global/on_load.json) が各モデル関数を列挙する。Wiki の旧 `mob/model/...json` という配置だけを新規作業へ転記せず、現在の集約 tag を参照する。Asset 側の [Karmic init](../../Asset/data/asset/functions/mob/0301.karmic/init/.mcfunction) にある直接関数呼出しも、この optional 登録と併存する。

## 装備の変更と見た目を分ける

手持ちアイテムを振る演出には、`item replace entity @s weapon with ...` による装備の置き換えを使う。置き換え自体が振るモーションを起こすため、同じアイテムを再設定する処理も冗長な代入として削除しない。[Decapitation の attack](../../Asset/data/asset/functions/mob/0089.decapitation/attack/.mcfunction) は、[register](../../Asset/data/asset/functions/mob/0089.decapitation/register.mcfunction) と同じ `stick{CustomModelData:20022}` を設定し、装備内容を維持してモーションを起こしている。同じアイテムであることは発動条件ではない。この意図はユーザーに確認済みで、Mob 53・89・416 に現行実例がある。手にアイテムを持つMob全般でも使えるとの見込みだが、全種類での実機確認済みとは扱わない。

頭装備のモデルを一時的に隠す場合も、日光への耐性を保つ必要がある。[Dark Summoner の teleport](../../Asset/data/asset/functions/mob/0264.dark_summoner/tick/teleport.mcfunction) は `stone{CustomModelData:20019}` を頭に装備する。CMD 20019 は透明なアイテムモデルで、見えなくしても頭装備を残すことで日光による炎上を防ぐ（ユーザー確認済み）。airへの置換は見た目だけなら同じでも、この保護を失う。日光で燃えるMobの透明化では、モデルの表示と装備の有無を別々に判断する。

装備の `AttributeModifiers:[]` は空の無意味なデータではなく、アイテム既定の攻撃力等を持ち込まない指定である。[Skull Soldier の持ち替え](../../Asset/data/asset/functions/mob/0205.skull_soldier/tick/event/switch_melee.mcfunction) は石の斧を攻撃力なしで装備する。本体のMob召喚処理も初期装備のAttributeModifiersを空にするが、後から `item replace` するアイテムへ自動で引き継がれる処理ではない。既存の持ち替えから空リストを省く場合は、Mob定義側の攻撃力に装備既定の補正が加わらないか確認する。

## 死亡処理と死亡の見た目を分ける

slime を実体に使うボスの終了処理では、分裂対策と見た目の処理を分けて読む。[Heiloang の death](../../Asset/data/asset/functions/mob/0410.heiloang/death/.mcfunction) は「Sizeによる分裂対策」の下に `tp @s ~ ~-100 ~` と `data modify entity @s Size set value 0` を並べるが、先に下へ移す意図は、実体が一瞬プレイヤーに見えるのを防ぐこと（ユーザー確認済み）。Size の変更だけで十分として tp を削除しない。100ブロック下へ移すことを、どの場所でも不可視になる保証やワールドの奈落へ移す処理とは扱わない。

召喚時の `DeathTime:19s` は、死亡時に赤くなって倒れるモーションを消すための指定である（ユーザー確認済み）。[Blazing Inferno の summon](../../Asset/data/asset/functions/mob/0311.blazing_inferno/summon/.mcfunction) などで使われる。白い煙のパーティクルは消えないため、死亡演出をすべて消す指定として流用しない。生存個体に設定する意味がないとして削除するのも誤りとなる。

## 個体の関連付けとイベント入力

同じ型の実体やモデルを複数組生成する場合は、型の分類と組ごとの関連付けを分ける。AJモデルと実体の対応は、型のtagだけでは個体を区別できない。[Corundum Twins の関連付け](../../Asset/data/asset/functions/mob/0338.corundum_twins/app/general/1.start_link.m.mcfunction) はmanagerのUidを `9E.Link.$(Uid)` というtag名へ展開して、双子の実体とモデルに付与する。[Sapphiel のモデル選択](../../Asset/data/asset/functions/mob/0339.twins_sapphiel/tick/app/1.start_link_model.m.mcfunction) はそのtagで自身に対応するモデルを取得する。読める文字列への変換は単なるデバッグ表示ではなく、selectorで結合するためのキーであり、最寄りの同型モデルの選択と同等ではない。

[Thunder Trifler のattack](../../Asset/data/asset/functions/mob/0056.thunder_trifler/attack/.mcfunction) は `Attack{IsVanilla:true}` の場合だけ独自のDamage API処理へ進む。AttackイベントはAPI経由でも作られるため、この入口の条件は自身の独自攻撃を再びVanilla攻撃として処理しないための区別でもある。イベントが来たからすべて処理してよいと条件を外さず、そのMobがどの攻撃経路を入力とするか確認する。

Mobの無敵演出で使うresistanceの強さは、依存先TheSkyBlessingの `docs/knowledge/api-and-storage.md` の耐性計算を参照する。本体のDamage APIでは独自の倍率と演出用amplifierの特別扱いがあるため、Vanillaで十分なLvをそのまま根拠にしない。

## 独自移動とVanillaの移動を切り替える

独自のtp移動とVanillaの移動を切り替える場合は、同じ時間帯に両方が個体を動かさないよう、移動の担当と復帰条件を揃える。被弾時だけNoAIを解除する実装は、通常の移動処理との組み合わせで読む。[Killer Bee の hurt](../../Asset/data/asset/functions/mob/0176.killer_bee/hurt/.mcfunction) は独自score `4W.HurtTime` を20にし、`4W.MoveTime <= 49` のとき `NoAI:0b` にする。[tick](../../Asset/data/asset/functions/mob/0176.killer_bee/tick/.mcfunction) はHurtTimeが非負の間、通常移動のtpを抑え、HurtTimeが0以下になると `NoAI:1b` へ戻す。この例から使えるのは、AIの切替・独自移動の抑制・カウンタによる復帰を組にする構造である。ノックバックを許すためという意図は未確定なので、全MobでNoAIを解除すればノックバックするという規則にはしない。突進等の別分岐も同時に動かないか、対象のhurt/tickを照合する。

## 変更前の照合

レビューでは内部 ID の誤り（PR #2112）、`@within` 漏れ（PR #2098）、不要な selector やコメントの古さが実害になった。レビュー指摘は根拠として記録しつつ、現行コードと workflow の検証結果を優先する。

具体的な継承の読み方は [Lunatic Mage と abstract_angel](object-model.md#実例-lunatic-mage-と-abstract_angel) を参照する。子の register だけでなく親の Field、子の init における `super.init`、親が同じ個体の `this` を使う処理までを追う。

実装変更では、型 ID と alias の対応、親から継承するメソッド、override 内の super の順序、pool への参加、Field の初期化・保存を確認する。tick score の未初期化、death 時の tag 残留、別個体を拾う selector に加え、不要な override による親処理の消失や `this` の破壊も確認対象となる。[mini shulker fetch](../../Asset/data/asset/functions/mob/0106.mini_shulker/tick/target/fetch.mcfunction) は score/entity 由来の情報を `this` に格納する一例である。

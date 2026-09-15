# Mob と AJ

まず [型・インスタンス・継承モデル](object-model.md) を読む。Mob は `Asset/data/asset/functions/mob/<4桁ID>.<name>/` にある型定義とメソッドの集合で、親の Field やメソッドを継承できる。個別ディレクトリに関数がないことを、振る舞いがないことと解釈しない。

`register.mcfunction` は `storage asset:mob` に親からの定義を取り込み、ID、Type、Health 等の型情報と既定 Field を組み立てる。生成 API から呼び出される型側の summon／init と、生成を要求する呼出側を区別する。tick／attack／hurt 等も ID alias と継承探索を通じて呼ばれ、親の振る舞いを引き継ぐ場合と子で override する場合がある。`attack`／`hurt` のイベント入力は `asset:context Attack/Hurt` であり、個体 Field とは別である。

Wiki の [Mob 作成手順](https://github.com/ProjectTSB/TheSkyBlessing/wiki/create-mob) にある `summon/2.summon` 中心の説明は旧テンプレートである。現行 v3 型は `register` と alias dispatch を入口に読み、旧形式が残る対象だけ個別に旧経路を追う。一方、Wiki の Attack/Hurt における `Victim`／`Attacker` 一時 tag は現行にも残っている。[Attack handler](https://github.com/ProjectTSB/TheSkyBlessing/blob/f88cdd5bcb2216d24b26e48684f4a7951a686c94/TheSkyBlessing/data/asset_manager/functions/mob/triggers/attack/foreach.mcfunction) と [Hurt handler](https://github.com/ProjectTSB/TheSkyBlessing/blob/f88cdd5bcb2216d24b26e48684f4a7951a686c94/TheSkyBlessing/data/asset_manager/functions/mob/triggers/hurt/foreach.mcfunction) は、それに加えて詳細なイベント入力を `asset:context Attack/Hurt` に展開する。tag と payload は併存する。

`enroll_pool.mcfunction` は `# @within tag/function asset:mob/enroll_pool` の形で pool に ID を append する。pool への参加と召喚時のクラス定義の構築は別である。`load.mcfunction` は `tag/function asset:mob/load` から呼ばれる。個体 Field は OhMyDat の `MobField` に保存され、イベント中は本体が `asset:context this.*` に展開して処理後に書き戻す。時間経過は `General.Mob.Tick` 等の score と組み合わせる。

AJ 演出は `animated_java` のタグ・名前空間を参照する既存 mob（例 `0301.karmic`）に倣い、reset、pause、link のライフサイクルを壊さない。継承元が担う初期化・終了処理も読み、子の override を追加するときは必要な `super.*` を維持する。`scripts/mob_upgrade_v3.scala.sc` は旧形式から register/alias と trigger を生成・更新する移行用スクリプトであり、すべての型定義が生成物という意味ではない。移行時の作用先は [生成処理の文書](runtime-and-tools.md) を確認する。

AJ のモデル関数を optional に登録する `required:false` は現行でも使われている。Asset-AnimatedJava の [global/root/on_load.json](https://github.com/ProjectTSB/Asset-AnimatedJava/blob/e48a116501b931a6688d5bd77e8f60c82de27ffa/AnimatedJava/data/animated_java/tags/functions/global/root/on_load.json) と [global/on_load.json](https://github.com/ProjectTSB/Asset-AnimatedJava/blob/e48a116501b931a6688d5bd77e8f60c82de27ffa/AnimatedJava/data/animated_java/tags/functions/global/on_load.json) が各モデル関数を列挙する。Wiki の旧 `mob/model/...json` という配置だけを新規作業へ転記せず、現在の集約 tag を参照する。Asset 側の [Karmic init](../../Asset/data/asset/functions/mob/0301.karmic/init/.mcfunction) にある直接関数呼出しも、この optional 登録と併存する。

レビューでは内部 ID の誤り（PR #2112）、`@within` 漏れ（PR #2098）、不要な selector やコメントの古さが実害になった。レビュー指摘は根拠として記録しつつ、現行コードと workflow の検証結果を優先する。

具体的な継承の読み方は [Lunatic Mage と abstract_angel](object-model.md#実例-lunatic-mage-と-abstract_angel) を参照する。子の register だけでなく親の Field、子の init における `super.init`、親が同じ個体の `this` を使う処理までを追う。

実装変更では、型 ID と alias の対応、親から継承するメソッド、override 内の super の順序、pool への参加、Field の初期化・保存を確認する。tick score の未初期化、death 時の tag 残留、別個体を拾う selector に加え、不要な override による親処理の消失や `this` の破壊も確認対象となる。[mini shulker fetch](../../Asset/data/asset/functions/mob/0106.mini_shulker/tick/target/fetch.mcfunction) は score/entity 由来の情報を `this` に格納する一例である。

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


work_1 = Work.create(name:"ボウリング、バレーボール、社交ダンス（ワルツ、サンバ、タンゴ）、ピラティス、太極拳", cost:3.0)
work_2 = Work.create(name:"自転車エルゴメーター（30～50 ワット）、自体重を使った軽い筋力トレーニング（軽・中等度）、体操（家で、軽・中等度）、ゴルフ（手ひきカートを使って）、カヌー", cost:3.5)
Work.create(name:"全身を使ったテレビゲーム（スポーツ・ダンス）", cost:3.8)
Work.create(name:"卓球、パワーヨガ、ラジオ体操第 1", cost:4.0)
Work.create(name:"やや速歩（平地、やや速めに＝93m/分）、ゴルフ（クラブを担いで運ぶ）", cost:4.3)
Work.create(name:"テニス（ダブルス）＊、水中歩行（中等度）、ラジオ体操第 2", cost:4.5)
Work.create(name:"水泳（ゆっくりとした背泳）", cost:4.8)
Work.create(name:"かなり速歩（平地、早く＝107m/分）、野球、ソフトボール、サーフィン、バレエ（モダン・ジャズ）", cost:5.0)
Work.create(name:"水泳（ゆっくりとした平泳ぎ）、スキー、アクアビクス", cost:5.3)
Work.create(name:"バドミントン", cost:5.5)
Work.create(name:"ゆっくりとしたジョギング、ウェイトトレーニング（高強度、パワーリフティング、ボディビル）、バスケットボール、水泳（のんびり泳ぐ）", cost:6.0)
Work.create(name:"山を登る（0～4.1Kg の荷物持って）", cost:6.5)
Work.create(name:"自転車エルゴメーター（90～100 ワット）", cost:6.8)
Work.create(name:"ジョギング、サッカー、スキー、スケート、ハンドボール", cost:7.0)
Work.create(name:"エアロビクス、テニス（シングルス）＊、山を登る（約 4.5～9.0Kg の荷物を持って）", cost:7.3)
Work.create(name:"サイクリング（約 20 ㎏/時）", cost:8.0)
Work.create(name:"ランニング（134m/分）、水泳（クロール、ふつうの速さ）", cost:8.3)
Work.create(name:"ランニング（139m/分）", cost:9.0)
Work.create(name:"ランニング（161m/分）", cost:9.8)
Work.create(name:"水泳（クロール、速い、69m/分）", cost:10.0)
Work.create(name:"武道・武術（柔道、柔術、空手、キックボクシング、テコンドー）", cost:10.3)
Work.create(name:"ランニング（188m/分）、自転車エルゴメーター（161～200 ワット）", cost:11.0)
Work.create(name:"ストレッチング、全身を使ったテレビゲーム（バランス運動、ヨガ）", cost:2.3)
Work.create(name:"ヨガ、ビリヤード", cost:2.5)
Work.create(name:"座って行うラジオ体操", cost:2.8)


user_1 = User.create(name:"ryoji", email:"sample1@example.com", password:"password1")
user_2 = User.create(name:"ryoji2", email:"sample2@example.com", password:"password2")

post_1 = Post.create(user_id: user_1.id, text: "text")
post_2 = Post.create(user_id: user_2.id, text: "text")

Measurement.create(weight:60, fat_rate:10, user_id: user_1.id)
Measurement.create(weight:60, fat_rate:10, user_id: user_2.id)

exercise_1 = Exercise.create(user_id: user_1.id)
exercise_2 = Exercise.create(user_id: user_2.id)

ExerciseWork.create(exercise_id: exercise_1.id, work_id: work_1.id)
ExerciseWork.create(exercise_id: exercise_2.id, work_id: work_2.id)

Like.create(user_id: user_1.id, post_id: post_1.id)
Like.create(user_id: user_2.id, post_id: post_2.id)
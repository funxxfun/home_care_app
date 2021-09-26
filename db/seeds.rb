# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: ENV["OWENER_ADDRESS"], password: ENV["ADMIN_PASSWORD"], password_confirmation: ENV["ADMIN_PASSWORD"])

# 職種のサンプルデータ
User.create!(name: "山田かなこ",
             genre_name: 0,
             email: "f@example.com",
             password: "password",
             password_confirmation: "password")
User.create!(name: "医師桃子",
             genre_name: 1,
             email: "d@example.com",
             password: "password",
             password_confirmation: "password")
User.create!(name: "看護さつき",
             genre_name: 2,
             email: "n@example.com",
             password: "password",
             password_confirmation: "password")
User.create!(name: "薬師丸はな",
             genre_name: 3,
             email: "p@example.com",
             password: "password",
             password_confirmation: "password")
User.create!(name: "回復太郎",
             genre_name: 4,
             email: "c@example.com",
             password: "password",
             password_confirmation: "password")
User.create!(name: "介護みどり",
             genre_name: 5,
             email: "h@example.com",
             password: "password",
             password_confirmation: "password")
User.create!(name: "支援一郎",
             genre_name: 6,
             email: "m@example.com",
             password: "password",
             password_confirmation: "password")

# 利用者様のサンプルデータ
Patient.create!(number: 1,
                 name: "山田花子",
                 gender: 2,
                 birthday: "1930-01-01",
                 address: "福岡市博多区１−１−１",
                 phone_number: "092-111-1111",
                 supporters_phone_number: "090-1111-1111",
                 supporters_name: "山田かなこ",
                 relation: "娘様",
                 main_disease: "高血圧、高脂血症、狭心症",
                 medical_history: "脳梗塞、早期胃がん（2000年7月:胃1/3切除術）",
                 allergy: "なし",
                 information: "娘様ご同居。歌うことや絵を描くことが好き。"
                 )
Patient.create!(number: 2,
                 name: "鈴木一郎",
                 gender: 1,
                 birthday: "1940-02-02",
                 address: "福岡市中央区２−２−２",
                 phone_number: "092-222-2222",
                 supporters_phone_number: "090-2222-2222",
                 supporters_name: "田中美佐子",
                 relation: "妹様",
                 main_disease: "脳梗塞後遺症",
                 medical_history: "誤嚥性肺炎（2019.12〜2020.1 入院歴あり）",
                 allergy: "青魚アレルギー",
                 information: "妹様は佐賀にご住居"
                 )

# patient 1のcareサンプルデータ
Care.create!(user_id: 1,
            patient_id: 1,
            weight: 55,
            body_temperature: 36.6,
            blood_pressure: "120/90",
            pulse_rate: 68,
            detail: "バイタル問題なし。定期薬２週間分処方。",
            start_time: "2021-9-1"
            )
Care.create!(user_id: 1,
            patient_id: 1,
            weight: 56.2,
            body_temperature: 36.2,
            blood_pressure: "126/96",
            pulse_rate: 70,
            detail: "バイタル問題なし。",
            start_time: "2021-9-15"
            )
Care.create!(user_id: 1,
            patient_id: 1,
            weight: 57.8,
            body_temperature: 36.0,
            blood_pressure: "150/100",
            pulse_rate: 70,
            detail: "体重増加と血圧高値のためフロセミド(10) 1錠 1×朝食後　追加、定期薬２週間分処方。",
            start_time: "2021-9-29"
            )

Care.create!(user_id: 5,
            patient_id: 1,
            weight: 55.5,
            body_temperature: 36.5,
            blood_pressure: "137/91",
            pulse_rate: 68,
            detail: "買い物、食事見守り(朝:10割)、服薬確認",
            start_time: "2021-9-5"
            )
Care.create!(user_id: 5,
            patient_id: 1,
            weight: 56.6,
            body_temperature: 36.0,
            blood_pressure: "150/100",
            pulse_rate: 71,
            detail: "買い物、食事見守り(朝:8割)、服薬確認",
            start_time: "2021-9-9"
            )

# patient ２のcareサンプルデータ
Care.create!(user_id: 1,
            patient_id: 2,
            weight: 41.1,
            body_temperature: 38.8,
            blood_pressure: "120/71",
            pulse_rate: 71,
            detail: "発熱のためカロナール(200) 2錠 1×発熱時/5回分　処方",
            start_time: "2021-9-9"
            )

Care.create!(user_id: 2,
            patient_id: 2,
            weight: "",
            body_temperature: 36.6,
            blood_pressure: "",
            pulse_rate: 66,
            detail: "服薬確認、カロナール:残６錠",
            start_time: "2021-9-10"
            )


Post.create!(user_id: 5,
             patient_id: 1,
             content: "楽しそうに昨日のデイケアの様子をお話ししてくださいました。",
            # image_id: "",
             created_at: "2021-9-9 10:00")
PostComment.create!(user_id: 0,
                    patient_id: 1,
                    post_id: 1,
                    comment: "いつも本当にありがとうございます。",
                    # image_id: "",
                    created_at: "2021-9-10 8:00")

class Patient < ApplicationRecord
    
    enum gender: { 男性: 1, 女性: 2 }
    enum care_level: { 要支援１: 1, 要支援２: 2, 要介護Ⅰ: 3, 要介護Ⅱ: 4, 要介護Ⅲ: 5, 要介護Ⅳ: 6, 要介護Ⅴ: 7 }
end

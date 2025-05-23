# food-system
در جدول User  نام و کد ملی و رول افراد ثبت میشود و user_id در این جدول primary key ئه.
در جدول Student شماره دانشجویی و رشته دانسجو ثبت میشه. یک primary key به نام student_id داره و این جدول با استفاده از user_id به جدول User متصل میشه.
در جدول Professor شماره پرسنلی ، دپارتمان و جایگاه علمی فرد ثبت میشه. یه primary key به نام professor_id داره و مثل جدول قبلی با استفاده از user_id به جدول User متصل شده‌.
جدول Menu یه primary key به نام menu_id داره. تو این جدول اسم غذا، قیمتش و تاریخی که میشه تهیه‌ش کرد ثبت میشه.
در جدول Orders که با ایتفاده از user_id به User وصل شده، تاریخ رزرو غذا مشخص میشه و primary key ش هم order_id ئه.
و در جدول آخر هم که OrderItem ئه ، یه primary key به نام order_item_key داریم. با استفاده از order_id و menu_id به جدول Order و Menu وصل شده و quantity رو در خودش ذخیره میکنه.

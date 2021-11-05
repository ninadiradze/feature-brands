<template>
  <div class="product">
    <breadcrumbs :links="breadcrumbs" />

    <div class="product__content">
      {{ productGetters.getName(product) }}
      <product-gallery />
      <product-info />
      <product-purchase />
    </div>

    <div class="product__additional">
      <div>
        <SectionHeader heading="შეიძინე -30% ფასდაკლებით" />
        <ProductReel
          :slider-per-view="4"
          :has-fade="false"
        />
      </div>

      <div>
        <SectionHeader heading="მსგავსი პროდუქტები" />
        <ProductReel
          :slider-per-view="4"
          :has-fade="false"
        />
      </div>

      <div class="product__description">
        <ul>
          <li>აღწერა</li>
        </ul>
        გამოყენების ინსტრუქცია



        ნიუცეფი (NEWCEPH ) 1გ/4მლ

        ფხვნილი და გამხსნელი საინექციო ხსნარის დასამზადებლად ინტრამუსკულუrი გამოყენებისთვის

        ცეფტრიაქსონი (ნატრიუმის მარილის სახით)

        პრეპარატის მიღებამდე ყურადღებით გაეცანით ინსტრუქციას, რადგანაც ის შეიცავს თქვენთვის მნიშვნელოვან ინფორმაციას

        შეინახეთ საინფორმაციო ფურცელი. შეიძლება დაგჭირდეთ მისი გადაკითხვა.
        დამატებითი შეკითხვების შემთხვევაში, მიმართეთ მკურნალ ექიმს ან ფარმაცევტს.
        აღნიშნული მედიკამენტი დაგენიშნათ თქვენ. არ მისცეთ სხვებს. შეიძლება ზიანი მიაყენოს მათ, იმ შემთხევაშიც კი თუ მათი სიმპტომები თქვენსას ჰგავს.
        ნებისმიერი გვერდითი მოვლენის გამოვლენის შემთხვევაში, ან თუ შენიშნეთ გვერდითი მოვლენა, რომელიც არ არის აქ აღწერილი, გთხოვთ დაუკავშირდეთ მკურნალ  ექიმს.  იხილეთ პუნქტი  4 .
        შინაარსი:

        რა არის ნიუცეფი და რა დროს გამოიყენება
        რა უნდა იცოდეთ ნიუცეფის მიღებამდე
        ნიუცეფის მიღების წესი
        მოსალოდნელი გვერდითი ეფექტები
        ნიუცეფის შენახვის პირობები
        შეფუთვის შემადგენლობა და დამატებითი ინფორმაცია
        რა არის ნიუცეფი და რა დროს გამოიყენება
        ნიუცეფი  წარმოადგენს  ანტიბიოტიკს, რომელიც გამოიყენება მოზრდილებსა და ბავშვებში (მათ შორის ახალშობილებში). იგი ცეფალოსპორინის ჯგუფის ანტიბიოტიკია და გააჩნია ბაქტერიციდული მოქმედება.

        ნიუცეფი  გამოიყენება შემდეგი  ინფექციების სამკურნალოდ:

        თავის ტვინის ინფექციები (მენინგიტი)
        ფილტვების ინფექციები
        შუა ყურის ინფექციები
        მუცლის და მუცლის კედლის ინფექციები (პერიტონიტი)
        საშარდე გზების და თირკმლები ინფექციები
        ძვლების და სახსრების ინფექციური დაავადებები
        კანის ან რბილი ქსოვილების ინფექციური დაავადებები
        სისხლის ინფექციური დაავადებები
        გულის ინფექციური დაავადებები
        შეიძლება დაინიშნოს:

        სქესობრივი გზით გადამდები ინფექციების (გონორეა და ათაშანგი) სამკურნალოდ.
        პაციენტებში, რომელთაც აღენიშნებათ სისხლის თეთრი უჯრედების რაოდენობის დაქვეითება (ნეიტროპენია) და აქვთ მაღალი ტემპერატურა ბაქტერიული ინფექციის გამო.
        ქრონიკული ბრონქიტის მქონე მოზრდილებში გულმკერდის ინფექციების სამკურნალოდ.
        ლაიმის დაავადების (ტკიპის ნაკბენით გამოწვეული) სამკურნალოდ მოზრდილებსა და ბავშვებში, მათ შორის 15 დღეზე მეტი ასაკის ბავშვებში.
        ოპერაციის დროს ინფექციების თავიდან ასაცილებლად
        რა უნდა იცოდეთ ნიუცეფის მიღებამდე
        არ მიიღოთ ნიუცეფი:

        თუ ხართ ალერგიული ცეფტრიაქსონის, ან აღნიშნული მედიკამენტის რომელიმე ინგრედიენტის მიმართ (ჩამოთვლილია მე -6 პუნქტში).
        თუ გქონიათ უეცარი ან მწვავე ალერგიული რეაქცია პენიცილინის ან მსგავსი ანტიბიოტიკების (როგორიცაა ცეფალოსპორინი, კარბაპენემი ან მონობაქტამი)    მიმართ. სიმპტომებია: ყელის და სახის უეცარი  შეშუპება, რამაც შეიძლება გააძნელოს სუნთქვა და ყლაპვა, ხელების, ფეხების უეცარი  შეშუპება, გამონაყარი, რომელიც სწრაფად ვითარდება.
        თუ ხართ ალერგიული ლიდოკაინის მიმართ და დაგენიშნათ ნიუცეფი კუნთებში ინექციის სახით.
        ნიუცეფი არ ინიშნება ბავშვებში:

        თუ ბავშვი დღენაკლულია
        თუ ახალშობილია (28 დღემდე ) და აქვს სისხლთან დაკავშირებული პრობლემები ან სიყვითლე (კანის და/ან თვალის სკლერების მოყვითალო შეფერილობა) ან იღებს კალციუმის შემცველ მედიკამენტებს ვენიდან.
        გაფრთხილებები და უსაფრთხოების ზომები

        ნიუცეფის  მიღებამდე შეატყობინეთ  მკურნალ ექიმს ან ფარმაცევტს :

        თუ ცოტა ხნის წინ მიიღეთ ან აპირებთ მიიღოთ კალციუმის შემცველი მედიკამენტი.
        თუ გქონიათ დიარეა რომელიმე ანტიბიოტიკის მიღებისას. თუ ოდესმე გქონიათ კუჭ-ნაწლავის პრობლემები, კერძოდ კოლიტი (ნაწლავის ანთება).
        თუ გაწუხებთ ღვიძლთან ან თირკმელთან დაკავშირებული პრობლემები.
        თუ გაქვთ ქვები ნაღვლის ბუშტში ან ქვები თირკმელში;
        თუ აღგენიშნებათ სხვა დაავადებები, როგორიცაა ჰემოლიზური ანემია (სისხლის წითელი უჯრედების რაოდენობის შემცირება, რაც იწვევს კანის სიფერმკრთალეს და სიყვითლეს,სისუსტეს  და დისპნოეს).
        თუ ხართ ნატრიუმის მარილის დიეტაზე
        თუ დაგჭირდათ სისხლის ან შარდის ანალიზი

        თუ დიდი ხანია იღებთ ნიუცეფს, თქვენ შეიძლება დაგჭირდეთ რეგულარული სისხლის ანალიზის ჩატარება. ნიუცეფმა შეიძლება გავლენა მოახდინოს შარდის ანალიზის (შაქრის განსაზღვრა შარდში ) და სისხლის ანალიზის (კუმბსის ტესტის) შედეგებზე. ანალიზის ჩატარებისას:

        აცნობეთ ექიმს, რომ თქვენ იღებთ ნიუცეფს.
        თუ გაქვთ დიაბეტი ან გჭირდებათ სისხლში შაქრის დონის მონიტორინგი არ უნდა გამოიყენოთ სისხლში გლუკოზის მონიტორინგის ისეთი სისტემა, რომელმაც შესაძლოა არასწორად გაზომოს  სისხლში შაქრის დონე ცეფტრიაქსონის მიღებისას. თუ ასეთ სისტემას იყენებთ შეამოწმეთ გამოყენების ინსტრუქცია და აცნობეთ ექიმს, ფარმაცევტს ან ექთანს. საჭიროების შემთხვევაშიგამოიყენეთ  ანალიზის ალტერნატიული მეთოდი .

        ბავშვები

        ბავშვებისთვის ნიუცეფის მიცემამდე აცნობეთ ექიმს, ფარმაცევტს ან ექთანს:

        თუ ბავშვმა ცოტა ხნის წინ მიიღო ან უნდა მიიღოს კალციუმის შემცველი მედიკამენტი ვენიდან.
        ნიუცეფის  გამოყენება სხვა მედიკამენტებთან ერთად

        აცნობეთ მკურნალ ექიმს ან ფარმაცევტს თუ ამჟამად იღებთ, ახლო წარსულში იღებდით ან აპირებთ მიიღოთ სხვა პრეპარატები. კერძოდ, აცნობეთ ექიმს ან ფარმაცევტს, თუ იღებთ შემდეგ მედიკამენტებს:

        ანტიბიოტიკის სახეობა ამინოგლიკოზიდი.
        ანტიბიოტიკი ქლორამფენიკოლი (რომელიც გამოიყენება ინფექციების, კერძოდ თვალების ინფექციების სამკურნალოდ).
        ორსულობა, ლაქტაცია და ფერტილობა

        თუ ხართ ორსულად ან ეჭვი გაქვთ ორსულობაზე ან გეგმავთ ორსულობას, ან გაქვთ ლაქტაციის პერიოდი,  მედიკამენტის მიღებამდე მიმართეთ ექიმს.

        ექიმი თავად განსაზღვრავს დაგინიშნოთ თუ არა ნიუცეფით მკურნალობა.

        მანქანის ან სხვა მექანიზმის მართვა

        ნიუცეფმა შეიძლება გამოიწვიოს თავბრუსხვევა. თუ აღგენიშნებათ თავბრუსხვევა  არ მართოთ  მანქანა ან სხვა მექანიზმი. აღნიშნული სიმპტომების გამოვლენისას მიმართეთ ექიმს.

        ნიუცეფის მიღების  წესი
        ნიუცეფის ინექციას, როგორც წესი, აკეთებს ექიმი ან ექთანი. ინექცია კეთდება პირდაპირ კუნთში.

        არ შეიძლება ნიუცეფის  შერევა სხვა მედიკამენტთან ან მისი გაკეთება კალციუმის შემცველ ინექციასთან  ერთად.

        ჩვეულებრივი დოზა

        ექიმი განსაზღვრავს ნიუცეფის სწორ  დოზას.  დოზა დამოკიდებულია ინფექციის სიმძიმესა და ტიპზე; თქვენს წონასა და ასაკზე; სხვა ანტიბიოტიკების მიღებაზე; თქვენი თირკმლებისა და ღვიძლის ფუნქციონირებაზე. ნიუცეფით მკურნალობის ხანგრძლივობა დამოკიდებულია  ინფექციის ტიპზე.

        50კგ ან მეტი წონის მოზრდილები, ხანდაზმულები და 12 წლის და უფროსი ასაკის  მოზარდები:

        1-2 გ დღეში, ინფექციის სიმძიმისა და ტიპის გათვალისწინებით. მწვავე ინფექციის შემთხვევაში ექიმი გაგიზრდით დოზას (4გ-მდე დღეში). იმ შემთხვევაში, თუ თქვენი ყოველდღიური დოზა აღემატება 2გ-ს, შეგიძლიათ მიიღოთ  დღეში ერთხელ ან განახევრებული დოზით დღეში ორჯერ.
        50კგ -ზე ნაკლები წონის 15 დღიდან 12 წლამდე ასაკის ახალშობილები, მცირეწლოვნები და ბავშვები :

        50-80მგ ნიუცეფი ბავშვის სხეულის წონის თითო კგ-ზე დღეში ერთხელ ინფექციის სიმძიმისა და ტიპის გათვალისწინებით. მწვავე ინფექციის შემთხვევაში ექიმი გაგიზრდით დოზას 100მგ-მდე ბავშვის სხეულის წონის თითო კგ-ზე, დღიურმა დოზამ არ უნდა გადააჭარბოს 4გ-ს.  იმ შემთხვევაში, თუ თქვენი ყოველდღიური დოზა აღემატება 2გ-ს, შეგიძლიათ მიიღოთ  დღეში ერთხელ ან განახევრებული დოზით დღეში ორჯერ.
        50 კგ ან მეტი სხეულის წონის ბავშვებისთვის გამოყენებული უნდა იყოს მოზრდილთა ჩვეულებრივი დოზა.
        ახალშობილები (14 დღემდე)

        20-დან 50 მგ –მდე ნიუცეფი ბავშვის სხეულის წონის თითო კგ-ზე დღეში ერთხელ ინფექციის სიმძიმისა და ტიპის გათვალისწინებით.
        დღიურმა დოზამ არ უნდა გადააჭარბოს 50მგ-სბავშვის სხეულის წონის თითო კგ-ზე.
        პაციენტები ღვიძლის ან თირკმლის პრობლემებით:

        შეიძლება დაგენიშნოთ განსხვავებული დოზა. მკურნალი ექიმი თავად განსაზღვრავს თქვენთვის დოზას.

        დოზის გადაჭარბება:

        თუ შემთხვევით მიიღეთ დანიშნულზე მეტი დოზა, დაუყოვნებლივ მიმართეთ ექიმს ან უახლოეს საავადმყოფოს.

        დოზის გამოტოვება:

        თუ დაგავიწყდათ პრეპარატის მიღება მიიღეთ იგი გახსენებისთანავე. თუმცა, თუ მოახლოებულია შემდეგი დოზის მიღების დრო, არ მიიღოთ გამოტოვებული დოზა. გამოტოვებული დოზის კომპენსაციისათვის არ მიიღოთ ორმაგი დოზა .

        ნიუცეფის  მიღების  შეწყვეტა

        არ შეწყვიტოთ ნიუცეფით მკურნალობა ექიმის კონსულტაციის გარეშე. აღნიშნულ პროდუქტთან დაკავშირებით დამატებითი კითხვების შემთხვევაში, მიმართეთ ექიმს ან ექთანს.

        მოსალოდნელი გვერდითი ეფექტები
        სხვა მედიკამენტიებს მსგავსად ამ პრეპარატმაც შესაძლოა გამოიწვიოს გვერდითი
        ეფექტები, თუმცა არა ყველა პაციენტში.  შეიძლება განვითარდეს შემდეგი გვერდითი მოვლენები:

        მწვავე ალერგიული რეაქციები (უცნობი, არსებული მონაცემების საფუძველზე სიხშირის  დადგენა  შეუძლებელია)

        თუ აღგენიშნებათ მწვავე ალერგიული რეაქცია, დაუყოვნებლივ მიმართეთ ექიმს .

        სიმპტომებია:

        ტუჩების, სახის, ყელის ან პირის შეშუპება, რომელიც იწვევს სუნთქვის გაძნელებას ან ყლაპვას.
        ხელების, ფეხების უეცარი შეშუპება
        მწვავე  გამონაყარი (უცნობი, არსებული მონაცემების საფუძველზე სიხშირის  დადგენა  შეუძლებელია)

        თუ აღგენიშნებათ მწვავე გამონაყარია, დაუყოვნებლივ მიმართეთ ექიმს .

        სიმპტომებია: მწვავე გამონაყარი, რომელიც სწრაფად ვითარდება, ბუშტუკები ან კანის აქერცვლა და შესაძლო ბუშტუკები პირის ღრუში.
        ვლინდება ასევე შემდეგი გვერდითი მოვლენები:

        ხშირი ( ვლინდება 10-დან 1 პაციენტში):

        სისხლის თეთრ უჯრედებთან ( როგორიცაა ლეიკოციტების რაოდენობის შემცირება და ეოზინოფილების რაოდენობის ზრდა)თრომბოციტებთან დაკავშირებული  დარღვევები (თრომბოციტების რაოდენობის შემცირება).
        ფხვიერი განავალი ან დიარეა.
        ღვიძლის ფუნქციური სინჯების ცვლილებები.
        გამონაყარი
        არახშირი  ( ვლინდება 100- დან 1 პაციენტში):

        სოკოვანი ინფექცია (მაგ. კანდიდოზური სტომატიტი).
        სისხლის თეთრი უჯრედების რაოდენობის შემცირება  (გრანულოციტოპენია).
        სისხლის წითელი უჯრედების რაოდენობის შემცირება  (ანემია).
        სისხლის შედედების პრობლემები. სიმპტომებია: სისხლჩაქცევები და სახსრების ტკივილი და შეშუპება.
        თავის ტკივილი.
        თავბრუსხვევა.
        გულისრევა ან ღებინება.
        ქავილი
        ტკივილის ან წვის შეგრძნება ვენის  არეში ნიუცეფის მიღებისას. ტკივილი ინექციისას.
        მაღალი ტემპერატურა (ცხელება).
        თირკმლის ფუნქციური სინჯები (გაზრდილი კრეატინინი).
        იშვიათი ( ვლინდება 1 000- დან 1 პაციენტში ):

        მსხვილი ნაწლავის ანთება (კოლინჯი). სიმპტომები: სისხლიანი და ლორწოიანი განავალი, მუცლის ტკივილი და ცხელება.
        სუნთქვის გაძნელება (ბრონქოსპაზმი).
        გამონაყარი (ჭინჭრის ციება), შესაძლოა მთელ სხეულზე, თან ახლავს ქავილი და შეშუპება.
        სისხლი ან შაქარი შარდში.
        შეშუპება (სითხის დაგროვება).
        კანკალი.
        უცნობი (არსებული მონაცემების საფუძველზე სიხშირის  დადგენა  შეუძლებელია):

        მეორადი ინფექცია, რომელიც არ რეაგირებს ადრე გამოწერილ ანტიბიოტიკზე.
        ანემიის ფორმა, როცა სისხლის წითელი უჯრედების დონე დაქვეითებულია (ჰემოლიზური ანემია) .
        სისხლში ლეიკოციტების რიცხვის  შემცირება (აგრანულოციტოზი).
        კონვულსია.
        ვერტიგო.
        პანკრეასის ანთება (პანკრეატიტი ). სიმპტომები: მუცლის მწვავე ტკივილი , რომელიც ვრცელდება ზურგის არეში.
        პირის ღრუს ლორწოვანი გარსის ანთება (სტომატიტი).
        ენის ანთება (გლოსიტი). სიმპტომები: ენის შეშუპება, სიწითლე და ტკივილის შეგრძნება.
        ნაღვლის ბუშტთან დაკავშირებული პრობლემები, რომელმაც შეიძლება გამოიწვიოს ტკივილი, გულისრევა და ღებინება.
        ნევროლოგიური მდგომარეობა ახალშობილებში, სიყვითლე (ბილირუბინული ენცეფალოპათია).
        თირკმლების პრობლემები. ტკივილი შარდის გამოყოფისას ან შემცირებული შარდვა.
        კუმბსის ტესტის ცრუ დადებითი შედეგი.
        გალაქტოზემიის ცრუ დადებითი შედეგი.
        ნიუცეფმა შეიძლება გავლენა მოახდინოს სისხლში გლუკოზის დონეზე - შეამოწმეთ ექიმთან.
        ინფორმირება  გვერდითი ეფექტების შესახებ

        თუ შენიშნავთ ნებისმიერ გვერდით მოვლენას, მათ შორის ისეთ ეფექტებს, რომლებიც არ არის აღწერილი გამოყენების ინსტრუქციაში აცნობეთ ექიმს, ფარმაცევტს ან ექთანს. გვერდითი ეფექტების შესახებ შეგიძლიათ განაცხადოთ პირდაპირ ჯანდაცვის უწყებაში.  გვერდითი ეფექტების შესახებ ინფორმაციის მიწოდებით თქვენ ხელს შეუწყობთ პრეპარატის უსაფრთხო გამოყენებას.

        ნიუცეფის  შენახვის პირობები
        შეინახეთ ბავშვებისთვის მიუწვდომელ ადგილას.

        არ გამოიყენოთ აღნიშნული მედიკამენტი შეფუთვაზე და ფლაკონზე აღნიშნული ვარგისიანობის ვადის გასვლის შემდეგ.  ვარგისიანობის ვადა ვრცელდება აღნიშნული თვის ბოლო დღემდე.

        აღნიშნული პრეპარატი არ საჭიროებს შენახვის განსაკუთრებულ პირობებს. შეინახეთ ფლაკონი კოლოფში სინათლისგან დასაცავად.

        გახსნილი მედიკამენტის  ქიმიური და ფიზიკური თვისებები  ნარჩუნდება სულ მცირე 6 საათის განმავლობაში 250C და უფრო მაღალ ტემპერატურაზე ან 24 საათის განმავლობაში 2-80C ტემპერატურაზე.

        მიკრობიოლოგიური თვალსაზრისით, პროდუქტი გამოყენებულ უნდა იქნეს გახსნისთანავე, წინააღმდეგ შემთხვევაში დაირღვევა  შენახვის ვადა და პირობები.   მედიკამენტები  არ გადააგდოთ კანალიზაციაში. ჰკითხეთ ფარმაცევტს მისი უტილიზაციის შესახებ.  აღნიშნული ზომები ხელს შეუწყობს გარემოს დაცვას.

        შეფუთვის შემცველობა და დამატებითი ინფორმაცია
        ნიუცეფი 1გ/4მლ  ფხვნილი და გამხსნელი საინექციო ხსნარის დასამზადებლად ინტრამუსკულარული გამოყენებისთვის

        თითოეული   ფლაკონის შემადგენლობაში შედის:

        აქტიური ნივთიერება: ცეფტრიაქსონი დისოდიუმის მარილი ჰემი(ჰეპტაჰიდრატი) 1,193გ შესაბამისი 1გ ცეფტრიაქსონი.

        გამხსნელის თითოეული ამპულის  შემადგენლობაში შედის:

        1% ლიდოკაინის ჰიდროქლორიდი

        გაცემის წესი:

        ფარმაცევტული პროდუქტის ჯგუფი II, გაიცემა ფორმა N3 რეცეპტით.

        სავაჭრო ლიცენზიის მფლობელი და მწარმოებელი

        სავაჭრო ლიცენზიის მფლობელი:

        შპს ნიუ ფარმ გრუპი

        საქართველო, თბილისი, ვაკე–საბურთალოს რაიონი, დ. აღმაშენებლის ხეივ.  XII კმ კორ. 2 ბ. 43

        ბეჭედდასმულია

        მწარმოებელი:

        Facta Farmaceutici  S.p.A.

        იტალია, ტერამოს პროვინცია , სან ნიკოლო ა ტორდინო

        აღნიშნული ინსტრუქციის ბოლო დამტკიცების თარიღია:   2017  წლის სექტემბერი
      </div>
    </div>
  </div>
</template>
<script>
import LazyHydrate from 'vue-lazy-hydration';
import SectionHeader from '../components/SectionHeader.vue';
import ProductReel from '../components/ProductReel.vue';
import {
  SfAddToCart,
  SfBreadcrumbs,
  SfButton,
  SfColor,
  SfGallery,
  SfHeading,
  SfIcon,
  SfLoader,
  SfPrice,
  SfRating,
  SfReview,
  SfSelect,
  SfTabs,
} from '@storefront-ui/vue';
import {
  useProduct,
  useCart,
  productGetters,
  useReview,
  reviewGetters,
  useUser,
  useWishlist,
} from '@vue-storefront/magento';
import { onSSR } from '@vue-storefront/core';
import { ref, computed } from '@vue/composition-api';
import ProductsCarousel from '~/components/ProductsCarousel.vue';
import ProductAddReviewForm from '~/components/ProductAddReviewForm.vue';
import MobileStoreBanner from '~/components/MobileStoreBanner.vue';
import InstagramFeed from '~/components/InstagramFeed.vue';
import { useVueRouter } from '~/helpers/hooks/useVueRouter';
import Breadcrumbs from '~/components/Base/Breadcrumbs';
import ProductGallery from '~/components/ProductGallery';
import ProductInfo from '~/components/ProductInfo';
import ProductPurchase from '~/components/ProductPurchase';

export default {
  name: 'Product',
  components: {
    InstagramFeed,
    LazyHydrate,
    MobileStoreBanner,
    ProductAddReviewForm,
    ProductsCarousel,
    SfAddToCart,
    SfBreadcrumbs,
    SfButton,
    SfColor,
    SfGallery,
    SfHeading,
    SfIcon,
    SfLoader,
    SfPrice,
    SfRating,
    SfReview,
    SfSelect,
    SfTabs,
    Breadcrumbs,
    ProductGallery,
    ProductInfo,
    ProductPurchase,
    SectionHeader,
    ProductReel,
  },
  transition: 'fade',
  setup() {
    const qty = ref(1);
    const { route, router } = useVueRouter();
    const { id } = route.params;
    const { products, search, loading: productLoading } = useProduct(`product-${id}`);
    const { addItem, loading } = useCart();
    const {
      reviews: productReviews,
      search: searchReviews,
      loading: reviewsLoading,
      addReview,
    } = useReview(`productReviews-${id}`);
    const { isAuthenticated } = useUser();
    const { isInWishlist, addItem: addToWishlist } = useWishlist();
    const openTab = ref(1);
    const productDataIsLoading = computed(() => productLoading.value);
    const product = computed(() => {
      const baseProduct = Array.isArray(products.value?.items) && products.value?.items[0] ? products.value?.items[0] : {};
      return productGetters.getFiltered(baseProduct, {
        master: true,
        attributes: route.query,
      });
    });
    console.log(useProduct(`product-${id}`))
    const productShortDescription = computed(() => product.value.short_description?.html || '');
    const productDescription = computed(() => product.value.description?.html || '');
    const canAddToCart = computed(() => {
      if (product.value.__typename === "ConfigurableProduct") {
        return !!product.value.configurable_product_options_selection.variant?.uid;
      }
      const inStock = product.value.stock_status || '';
      const stockLeft = product.value.only_x_left_in_stock === null ? true : qty.value <= product.value.only_x_left_in_stock;
      return inStock && stockLeft;
    });
    const categories = computed(() => productGetters.getCategoryIds(product.value));
    const relatedProducts = computed(() => productGetters.getProductRelatedProduct(product.value));
    const upsellProducts = computed(() => productGetters.getProductUpsellProduct(product.value));
    const baseReviews = computed(() => (Array.isArray(productReviews.value)
      ? [...productReviews.value].shift()
      : productReviews.value));
    const reviews = computed(() => reviewGetters.getItems(baseReviews.value));
    const totalReviews = computed(() => reviewGetters.getTotalReviews(baseReviews.value));
    const averageRating = computed(() => reviewGetters.getAverageRating(baseReviews.value));
    const breadcrumbs = computed(() => {
      // const productCategories = product.value.categories;
      // return productGetters.getBreadcrumbs(product.value,
      //   Array.isArray(productCategories) ? [...productCategories].pop() : []);
      return [
        { label: 'მთავარი', url: '/' },
        { label: 'პროდუქცია', url: '/' },
        { label: 'დედა და ბავშვი', url: '/' }
      ]
    });
    const productGallery = computed(() => productGetters.getGallery(product.value)
      .map((img) => ({
        mobile: { url: img.small },
        desktop: { url: img.normal },
        big: { url: img.big },
        // eslint-disable-next-line no-underscore-dangle
        alt: product.value._name || product.value.name,
      })));
    const addItemToWishlist = async () => {
      await addToWishlist({ product: product.value });
    };
    const changeTab = (tabNumber, callback) => {
      document
        .querySelector('#tabs')
        .scrollIntoView({ behavior: 'smooth', block: 'end' });
      openTab.value = tabNumber;
      if (callback && typeof callback === 'function') callback();
    };
    const changeNewReview = () => {
      changeTab(2, () => {
        setTimeout(() => document
          .querySelector('#addReview')
          .scrollIntoView({ behavior: 'smooth', block: 'end' }), 500);
      });
    };
    const successAddReview = async (reviewData) => {
      await addReview(reviewData);
      document
        .querySelector('#tabs')
        .scrollIntoView({ behavior: 'smooth', block: 'end' });
    };
    const configurableOptions = computed(() => product.value.configurable_options);
    const productConfiguration = ref({});
    const updateProductConfiguration = async (label, value) => {
      productConfiguration.value[label] = value;
      const configurations = Object.entries(productConfiguration.value).map(config => config[1]);
      await search({
        queryType: 'DETAIL',
        filter: {
          sku: {
            eq: id,
          },
        },
        configurations,
      });
      router.push({
        path: route.fullPath,
        query: productConfiguration.value,
      });
    };
    const loadProductConfiguration = () => {
      const { query } = route;
      productConfiguration.value = query;
    };
    onSSR(async () => {
      const baseSearchQuery = {
        filter: {
          sku: {
            eq: id,
          },
        },
      };
      await search({
        queryType: 'DETAIL',
        ...baseSearchQuery,
      });
      await searchReviews({ ...baseSearchQuery });
      loadProductConfiguration();
    });
    return {
      addItem,
      addItemToWishlist,
      averageRating,
      breadcrumbs,
      canAddToCart,
      categories,
      changeNewReview,
      changeTab,
      configurableOptions,
      isAuthenticated,
      isInWishlist: computed(() => isInWishlist({ product: product.value })),
      loading,
      openTab,
      product,
      productConfiguration,
      productDataIsLoading,
      productDescription,
      productGallery,
      productGetters,
      productReviews,
      productShortDescription,
      qty,
      relatedProducts,
      reviewGetters,
      reviews,
      reviewsLoading,
      successAddReview,
      totalReviews,
      updateProductConfiguration,
      upsellProducts,
    };
  },
};
</script>
<style lang="scss" scoped>
.product {
  padding-top: toRem(22);

  &__content {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    column-gap: toRem(16);
    margin-top: toRem(26);
  }

  &__gallery {
    width: toRem(560);
  }

  &__info {
    width: calc(100% - 928px);
  }

  &__purchase {
    width: toRem(368);
  }

  &__additional {
    width: calc(100% - 368px);
  }

  &__description {
    margin-top: toRem(32);
    padding: 0 toRem(24) toRem(24);
    font-size: toRem(14);
    line-height: toRem(22);
    color: #231444;
    background: white;
    box-shadow: 0 toRem(1) toRem(2) rgba(53, 66, 82, 0.08), 0 toRem(3) toRem(12) rgba(53, 66, 82, 0.04);
    border-radius: 8px;
    white-space: pre-line;

    ul {
      margin: toRem(2) 0 0;
      padding: 0;
      list-style-type: none;
      border-bottom: toRem(1) solid #F2F3F8;

      li {
        display: inline-flex;
        align-items: center;
        font-size: toRem(16);
        font-weight: bold;
        color: #253988;
        height: toRem(63);
        border-bottom: toRem(2) solid #253988;
        cursor: pointer;
      }
    }
  }

  .section-header {
    margin-top: toRem(32);
    margin-bottom: toRem(24);
  }
}
</style>

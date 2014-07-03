#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
# encoding: utf-8
---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
# encoding: utf-8
Category.delete_all
Category.create(id: 1,title: '佛冈沙拉菜系列')
Category.create(id: 2,title: '增城中国菜系列')
Category.create(id: 3,title: '增城瓜果菜系列')
Category.create(id: 4,title: '蔬菜配料系列')
Product.delete_all

Product.create(title: '混合沙拉菜',
  category_id: 1,
  description: 
    %{<p>
      </p>},
  image_url: '沙拉菜系列/混合沙拉菜.jpg',
  price: 15)

Product.create(title: '红橡叶',
  category_id: 1,
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: '沙拉菜系列/红橡叶.jpg',
  price: 20)

Product.create(title: '红珊瑚',
  category_id: 1,
  description: 
    %{<p>
      </p>},
  image_url: '沙拉菜系列/红珊瑚.jpg',
  price: 20)

Product.create(title: '绿奶油',
  category_id: 1,
  description: 
    %{<p>
       
      </p>},
  image_url: '沙拉菜系列/绿奶油.jpg',
  price: 20)

Product.create(title: '罗马生菜',
  category_id: 1,
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: '沙拉菜系列/罗马生菜.jpg',
  price: 20)

Product.create(title: '苦菊',
  category_id: 1,
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: '沙拉菜系列/苦菊.jpg',
  price: 20)

 Product.create(title: '上海青',
   category_id: 2,
   description: 
     %{<p>
       </p>},
   image_url: '增城中国菜/上海青.jpg',
   price: 12)

Product.create(title: '千宝菜',
  category_id: 2,
  description: 
    %{<p>
      </p>},
  image_url: '增城中国菜/千宝菜.jpg',
  price: 12)

Product.create(title: '奶白菜',
  category_id: 2,
  description: 
    %{<p>
      </p>},
  image_url: '增城中国菜/奶白菜.jpg',
  price: 12)

Product.create(title: '富士',
  category_id: 2,
  description: 
    %{<p>
      </p>},
  image_url: '增城中国菜/富士.jpg',
  price: 12)

Product.create(title: '油麦菜',
  category_id: 2,
  description: 
    %{<p>
       
      </p>},
  image_url: '增城中国菜/油麦菜.jpg',
  price: 12)

Product.create(title: '甜麦菜',
  category_id: 2,
  description: 
    %{<p>
     
      </p>},
  image_url: '增城中国菜/甜麦菜.jpg',
  price: 12)

Product.create(title: '空心菜',
  category_id: 2,
  description: 
    %{<p>
       
      </p>},
  image_url: '增城中国菜/空心菜.jpg',
  price: 12)

Product.create(title: '红苋菜',
  category_id: 2,
  description: 
    %{<p>
      
      </p>},
  image_url: '增城中国菜/红苋菜.jpg',
  price: 12)

Product.create(title: '芥兰',
  category_id: 2,
  description: 
    %{<p>
     
      </p>},
  image_url: '增城中国菜/芥兰.jpg',
  price: 12)

Product.create(title: '芥菜',
  category_id: 2,
  description: 
    %{<p>
     
      </p>},
  image_url: '增城中国菜/芥菜.jpg',
  price: 12)

Product.create(title: '茼蒿',
  category_id: 2,
  description: 
    %{<p>
    
      </p>},
  image_url: '增城中国菜/茼蒿.jpg',
  price: 12)

Product.create(title: '菠菜',
  category_id: 2,
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: '增城中国菜/菠菜.jpg',
  price: 12)
Product.create(title: '无斑生菜',
  category_id: 2,
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: '增城生菜系列/无斑生菜.jpg',
  price: 12)
Product.create(title: '本地生菜',
  category_id: 2,
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: '增城生菜系列/本地生菜.jpg',
  price: 12)
Product.create(title: '沙丽生菜',
  category_id: 2,
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: '增城生菜系列/沙丽生菜.jpg',
  price: 12)
Product.create(title: '益母草',
  category_id: 2,
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: '增城配菜系列/益母草.jpg',
  price: 12)
Product.create(title: '芫茜菜',
  category_id: 2,
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: '增城配菜系列/芫茜菜.jpg',
  price: 12)
Product.create(title: '薄荷',
  category_id: 2,
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: '增城配菜系列/薄荷.jpg',
  price: 12)
Product.create(title: '双色水果番茄',
  category_id: 3,
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: '增城瓜果菜系列/双色水果番茄.jpg',
  price: 16)
Product.create(title: '土豆',
  category_id: 3,
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: '增城瓜果菜系列/土豆.jpg',
  price: 12)
Product.create(title: '指尖胡萝卜',
  category_id: 3,
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: '增城瓜果菜系列/指尖胡萝卜.jpg',
  price: 16)
Product.create(title: '水果黄瓜',
  category_id: 3,
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: '增城瓜果菜系列/水果黄瓜.jpg',
  price: 12)
Product.create(title: '甜玉米',
  category_id: 3,
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: '增城瓜果菜系列/甜玉米.jpg',
  price: 5)
Product.create(title: '秋葵',
  category_id: 3,
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: '增城瓜果菜系列/秋葵.jpg',
  price: 20)
Product.create(title: '华农酸奶',
  category_id: 4,
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: '代购牛奶系列/华农酸奶.jpg',
  price: 20)
Product.create(title: '燕塘牛奶',
  category_id: 4,
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: '代购牛奶系列/燕塘牛奶.jpg',
  price: 20)